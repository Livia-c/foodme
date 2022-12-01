class MenuItemCustomersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @menu_items = MenuItem.all
  end

  def show
    @menu_item = MenuItem.find(params[:id])
  end
end
