App.redeem = App.cable.subscriptions.create "RedeemChannel",
  connected: ->
    console.log('You are connected')

  disconnected: ->
    console.log('You are disconnected')

  received: (data) ->
    unless data.blank?
      console.log(data)
      button = '<form class="button_to" method="post" action="/my_restaurants?redemption_id="' + data[2].id '>' + '<input type="button" value="Redeem"/>' +
      <input type="hidden" name="authenticity_token" value="'data[3].authenticity_token'"> +
      '</form>'
      str = '<div class="restaurant">' + data[0].name + " wants to redeem the following reward: " + "<br>"+ data[1].name + " " + data[1].point_value + button + '</div>'
      $('#redemptions-list').append str
