class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order = @current_order
    @order = Order.find(params[:id])
  end

  def destroy
    @order = @current_order
    @order.destroy
    session[:order_id] = nil
    redirect_to root_path
  end
end
