class OrdersController < ApplicationController
  before_action :set_order, only: %i[show order_placed update destroy]

  def index
    # only shows the orders that match with the logged in user
    # show all if the admin is logged in
    if current_user.restaurant_user?
      @orders = Order.all
    else
      @orders = Order.where(user: current_user)
    end
  end

  def order_placed
  end

  def new
    @order = Order.new
  end

  def show
  end

  def destroy
    @order.destroy
    redirect_to orders_url, notice: "Order was successfully deleted."
  end

  def update
    if @order.waiting?
      @order.pending!
      @order.update(active: false)
      redirect_to placed_path
    else
      @order.pending? ? @order.in_progress! : @order.delivered!
      redirect_to order_items_path
    end
  end

  private

  def set_order
    @order = Order.find(params[:id])
  end
end
