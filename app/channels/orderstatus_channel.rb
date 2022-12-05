class OrderstatusChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    orderstatus = Order.find(params[:id])
    stream_for orderstatus
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
