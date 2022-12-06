class OrderItemsController < ApplicationController
  def index
    @waiting_orders = Order.includes({order_items: :menu_item}).where(status: :waiting)
    @pending_orders = Order.includes({order_items: :menu_item}).where(status: :pending)
    @in_progress_orders = Order.includes({order_items: :menu_item}).where(status: :in_progress)
  end

  def completed_orders
    @delivered_orders = Order.includes({order_items: :menu_item}).where(status: :delivered)
  end
  # def create
  #   menu_item = MenuItem.find(params[:menu_item_id])
  #   @order_item = OrderItem.new
  #   @order_item.menu_item = menu_item
  #   # if Order.where(status: 0, user: current_user).present?
  #   if Order.where(user: current_user).present?
  #     @order_item.order = Order.where(status: 0, user: current_user).first
  #   else
  #     @new_order = Order.create(user: current_user)
  #     @order_item.order = @new_order
  #   end
  #   # if
  #   @order_item.save
  #   redirect_to @order_item, notice: 'Item was successfully added to your order.'
  #   # else
  #   #   render :new, status: :unprocessable_entity, notice: 'Sorry, this item could not be added to your order.'
  #   # end
  # end

  def create
    # Find associated menu_item and current order
    chosen_menu_item = MenuItem.find(params[:menu_item_id])
    current_order = @current_order
    if @current_order.waiting?
      # If order already has this menu_item then find the relevant order_item and iterate quantity otherwise create a new order_item for this menu_item
      if current_order.menu_items.include?(chosen_menu_item)
        # Find the line_item with the chosen_product
        @order_item = current_order.order_items.find_by(menu_item_id: chosen_menu_item)
        # Iterate the line_item's quantity by one
        @order_item.quantity += 1
      else
        @order_item = OrderItem.new
        @order_item.order = current_order
        @order_item.menu_item = chosen_menu_item
        @order_item.quantity = 1
      end
    else
      @current_order = Order.create(user: current_user)
      @order_item = OrderItem.new
      @order_item.order = current_order
      @order_item.menu_item = chosen_menu_item
      @order_item.quantity = 1
    end
    # Save and redirect to cart show path
    @order_item.save
    redirect_to menu_item_customers_path
  end


  # def update
  #   if @order_item.update(order_item_params)
  # end

  def add_quantity
    @order_item = OrderItem.find(params[:id])
    @order_item.quantity += 1
    @order_item.save
    redirect_to order_path(@current_order)
  end

  def reduce_quantity
    @order_item = OrderItem.find(params[:id])
    if @order_item.quantity > 1
      @order_item.quantity -= 1
    end
    @order_item.save
    redirect_to order_path(@current_order)
  end

  def destroy
    @order_item = OrderItem.find(params[:id])
    @order_item.destroy
    redirect_to order_path(@current_order), notice: "Item was successfully removed from order"
  end

  private

  def order_item_params
    params.require(:order_item).permit(:quantity, :menu_item_id, :order_id, :comment)
  end
end
