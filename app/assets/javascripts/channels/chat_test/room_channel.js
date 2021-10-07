App.room = App.cable.subscriptions.create("RoomChannel", {
  connected: function() {
    // Called when the subscription is ready for use on the server
  },

  disconnected: function() {
    // Called when the subscription has been terminated by the server
  },

  received: function(data) {
    var node = document.createElement("P"); 

    var textnode = document.createTextNode(data.content.message); 
    node.id = data.content.id;
    node.appendChild(textnode); 

    document.getElementById("new_message").appendChild(node);
    document.getElementById('chat_message').value= ''

    // Called when there's incoming data on the websocket for this channel
  }
});
