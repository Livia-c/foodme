class OrderItemsController < ApplicationController

  def index
    @order_items = OrderItem.all
    @menu_items = MenuItem.all
    @oders = Order.all
  end
end
