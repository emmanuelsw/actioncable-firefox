App.product = App.cable.subscriptions.create 'ProductChannel',
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    console.log data
    $("#products-table").append "<tr><td>#{data.name}</td><td>#{data.body}</td></tr>"
    
