class OrdersController < ApplicationController
  def index
    # only shows the orders that match with the logged in user
    @orders = Order.where(user: current_user)
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
    @order.status == "pending" ? @order.update(status: 1) : @order.update(status: 2)
    # another way to write the code above
    # @order.pending? ? @order.in_progress! : @order.delivered!
    if @order.save
      redirect_to order_items_path
    end
   end

  # private
  # redirect_to order_path(@current_order), notice: "Item was successfully removed from order"
end
