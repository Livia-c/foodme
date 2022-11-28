class MenuItemsController < ApplicationController

  def index
    @menu_items = MenuItem.all
  end

  def show
    @menu_item = MenuItem.find(params[:id])
  end

  def new
    @menu_item = MenuItem.new
  end

  def create
    @menu_item = MenuItem.new(menu_item_params)
    if @menu_item.save
      redirect_to menu_item_path(@menu_item), notice: "cheers"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @menu_item = MenuItem.find(params[:id])
  end

  def update
    @menu_item = MenuItem.find(params[:id])
    if @menu_item.update(menu_item_params)
      redirect_to menu_item_path(@menu_item), notice: "cheers"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @menu_item = MenuItem.find(params[:id])
    @menu_item.destroy
    redirect_to menu_items_path, status: :see_other, notice: "cheers"
  end

  private

  def menu_item_params
    params.require(:menu_item).permit(:name, :description, :spiciness, :cooking_time, :price, :menu_item_type)
  end
end
