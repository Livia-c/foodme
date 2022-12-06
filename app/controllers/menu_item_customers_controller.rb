class MenuItemCustomersController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @menu_items = MenuItem.includes([{photos_attachments: :blob}, { recipes: :ingredient }]).order(:created_at).all
    @menu_items_starter = MenuItem.where(menu_item_type: "starter").order(:created_at)
    @menu_items_soup = MenuItem.where(menu_item_type: "soup").order(:created_at)
    @menu_items_maindish = MenuItem.where(menu_item_type: "main dish").order(:created_at)
    @menu_items_side = MenuItem.where(menu_item_type: "side").order(:created_at)
    @menu_items_dessert = MenuItem.where(menu_item_type: "dessert").order(:created_at)
    @menu_items_drink = MenuItem.where(menu_item_type: "drink").order(:created_at)
    @menu_items_other = MenuItem.where(menu_item_type: "other").order(:created_at)
  end

  def show
    @menu_item = MenuItem.find(params[:id])
  end
end
