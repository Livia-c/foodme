class OrdersController < ApplicationController
  before_action :set_order, only: %i[show update destroy]

  def index
    # only shows the orders that match with the logged in user
    # show all if the admin is logged in
    if current_user.restaurant_user?
      @orders = Order.all
    else
      @orders = Order.where(user: current_user)
    end
  end

  def new
    @order = Order.new
  end

  def show
    @order = @current_order
  end

  def destroy
    @order.destroy
    redirect_to orders_url, notice: "Order was successfully deleted."
  end

  def update
    if @order.waiting?
      @order.pending!
      @order.active = false
    else
      @order.pending? ? @order.in_progress! : @order.delivered!
    end

    # Why do we need to save again here?

    if @order.save
      redirect_to order_items_path
    end
  end

  private

  def set_order
    @order = Order.find(params[:id])
  end
end
