class MenuItemsController < ApplicationController
  before_action :set_menu_item, only: %i[show edit upload_pictures update destroy]

  def index
    @menu_items = MenuItem.all
    @recipe = Recipe.new
    @menu_items.each do |menu_item|
      menu_item.recipes.each do |recipe|
        quantity_stock = Ingredient.find(recipe.ingredient_id).quantity
        quantity_stock > recipe.quantity ? menu_item.check_status = true : menu_item.check_status = false
        menu_item.save!
      end
    end
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
      redirect_to menu_item_path(@menu_item), notice: "Menu item was successfully created."
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
      redirect_to menu_item_path(@menu_item), notice: "Menu item was successfully updated."
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
    params.require(:menu_item).permit(:name, :description, :spiciness, :cooking_time, :vegetarian, :vegan, :signature_dish, :check_status, :price, :menu_item_type, photos: [])
  end
end
