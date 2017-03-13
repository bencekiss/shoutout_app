class RedeemChannel < ApplicationCable::Channel
  def subscribed
    stream_from "redeem_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
