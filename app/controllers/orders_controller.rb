class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  # def new
  #   @order = Order.new
  # end

  # def create
  #   @order = Order.new(order_params)
  #   if @order.save
  #     redirect_to order_path(@order), notice: "Your order was sent to the kitchen"
  #   else
  #     render :new, status: :unprocessable_entity
  #   end
  # end

  # private

  # def order_params
  #   params.require(:order).permit(:table_number, :active, :status)
  # end
end
