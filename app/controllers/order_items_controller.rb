class OrderItemsController < ApplicationController
  def index
    @order_items = OrderItem.all
  end

  def create
    menu_item = MenuItem.find(params[:menu_item_id])
    @order_item = OrderItem.new
    @order_item.menu_item = menu_item
    # if Order.where(active: true, user: current_user).present?
    if Order.where(user: current_user).present?
      @order_item.order = Order.where(active: true, user: current_user).first
    else
      @new_order = Order.create(user: current_user)
      @order_item.order = @new_order
    end
    # if
    @order_item.save
    redirect_to @order_item, notice: 'Item was successfully added to your order.'
    # else
    #   render :new, status: :unprocessable_entity, notice: 'Sorry, this item could not be added to your order.'
    # end
  end

  # private

  # def order_item_params
  #   params.require(:order_item).permit(:menu_item_id, :order_id, :comment)
  # end
end
