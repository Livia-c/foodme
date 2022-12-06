class MenuItemsController < ApplicationController
  before_action :set_menu_item, only: %i[show edit upload_pictures update destroy]

  def index
    @menu_items = MenuItem.includes([{recipes: [:ingredient]}, {photos_attachments: :blob}]).order(:created_at).all
    @recipe = Recipe.new
  end

  def show
    @recipe = Recipe.new
  end

  def new
    @menu_item = MenuItem.new
  end

  def create
    @menu_item = MenuItem.new(menu_item_params)
    if @menu_item.save
      redirect_to menu_items_path, notice: "Menu item was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def upload_pictures
  end

  def update
    if @menu_item.update(menu_item_params)
      redirect_to menu_items_path(anchor: dom_id(@menu_item)), data: {turbo: false}, notice: "Menu item was successfully updated."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @menu_item.destroy
    redirect_to menu_items_path, status: :see_other, notice: "Menu item was successfully deleted."
  end

  private

  def set_menu_item
    @menu_item = MenuItem.find(params[:id])
  end

  def menu_item_params
    params.require(:menu_item).permit(:name, :description, :spiciness, :cooking_time, :vegetarian, :vegan, :signature_dish, :price, :menu_item_type, photos: [])
  end
end
