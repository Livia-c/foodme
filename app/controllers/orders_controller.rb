class OrdersController < ApplicationController
  def index
    @orders = Order.all
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


    # redirect_to order_path(@current_order), notice: "Item was successfully removed from order"
  end
end
