App.redeem = App.cable.subscriptions.create "RedeemChannel",
  connected: ->
    console.log('You are connected')

  disconnected: ->
    console.log('You are disconnected')

  received: (data) ->
    unless data.content.blank?
      str = '<div class="message">' + '<div class="message-user">' + data + ":" + '</div>' + '</div>'
      $('.positioning-box').append str
