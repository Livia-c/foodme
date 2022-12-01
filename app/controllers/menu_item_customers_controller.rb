class MenuItemCustomersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @menu_items = MenuItem.all
    # if params[:query].present?
    #   if params[:query]["menu_item_type"]
    #     @search = params[:query]["menu_item_type"]
    #     @hide = true
    #   else
    #     @search = params[:query]
    #   end
    #   # @menu_items = MenuItem.global_search(@search)
    # else
    #   @menu_items = MenuItem.all
    # end
  end

  def show
    @menu_item = MenuItem.find(params[:id])
  end
end
