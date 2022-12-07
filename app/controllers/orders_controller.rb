class OrdersController < ApplicationController
  before_action :set_order, only: %i[show order_placed update destroy]

  def index
    if current_user.restaurant_user?
      @orders = Order.all
    else
      @orders = Order.where(user: current_user)
    end
  end

  def order_placed
    @order.pending!
    @order.update_ing

    ActionCable.server.broadcast(
      "livekitchen", render_to_string(partial: "/order_items/livekitchen_all_pending", locals: {pending_orders: Order.where(status: :pending).order(:created_at)})
    )
  end

  def show
  end

  def destroy
    @order.destroy
    redirect_to menu_item_customers_path, notice: "Order was successfully deleted."
  end

  def update
    if @order.waiting?
      unless @order.update(order_params)
        render :show, status: :unprocessable_entity
        return
      end
      unless @order.enough_ingredients?
        flash.notice = "Sorry, one of your items seems to be sold out"
        render :show, status: :unprocessable_entity
        return
      end
      session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'],
        line_items: [{
          quantity: 1,
          price_data: {
            currency: "eur",
            unit_amount: @order.sub_total,
            product_data: {
              name: "Order sum"
            }
          }
        }],
        mode: "payment",
        success_url: placed_url(@order),
        cancel_url: order_url(@order)
      )
      @order.update(checkout_session_id: session.id)
      redirect_to session.url, status: 303, allow_other_host: true
    else
      if @order.pending?
        @order.update(status: 2)
        OrderstatusChannel.broadcast_to(
          @order,
          render_to_string(partial: "order_status", locals: {order: @order})
        )
        redirect_to order_items_path
      else
        @order.update(status: 3)
        OrderstatusChannel.broadcast_to(
          @order,
          render_to_string(partial: "order_status", locals: {order: @order})
        )
        redirect_to order_items_path
      end
    end
  end

  private

  def set_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:table_number)
  end
end
