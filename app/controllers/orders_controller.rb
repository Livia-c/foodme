class OrdersController < ApplicationController
  def index
    # only shows the orders that match with the logged in user
    @orders = Order.where(user: current_user)
  end

  def new
    @order = Order.new
  end

  def show
    @order = @current_order
    @order = Order.find(params[:id])
  end

  def destroy
    # @order = @current_order
    @order = Order.find(params[:id])
    @order.destroy
    # session[:order_id] = nil
    # redirect_to root_path
    redirect_to orders_url, notice: "Order was successfully deleted."
  end

  def update
    @order = Order.find(params[:id])
    # @order.status == "pending" ? @order.update(status: 2) : @order.update(status: 3)
    # another way to write the code above
    if @order.waiting?
      @order.pending!
      @order.active = false
    else
      @order.pending? ? @order.in_progress! : @order.delivered!
    end
    if @order.save
      redirect_to order_items_path
    end
  end

  # private
  # redirect_to order_path(@current_order), notice: "Item was successfully removed from order"
end
