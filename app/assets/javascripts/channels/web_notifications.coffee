# This is the default generated code from cable scaffold
# App.web_notifications = App.cable.subscriptions.create "WebNotificationsChannel",
#   connected: ->
#     # Called when the subscription is ready for use on the server

#   disconnected: ->
#     # Called when the subscription has been terminated by the server

#   received: (data) ->
#     # Called when there's incoming data on the websocket for this channel

App.room = App.cable.subscriptions.create "WebNotificationsChannel",
  received: (data) ->
    console.log 'Hello World!'
    $('#messages').append data['message']