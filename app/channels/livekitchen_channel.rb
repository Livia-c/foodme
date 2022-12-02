class LivekitchenChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"

    # livekitchen = OrderItem.all
    stream_from "livekitchen"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
