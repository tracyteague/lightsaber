// currently only working for two numbers
var calculator = {
  add: function(x, y) {
    return x + y
  },
  subtract: function(x, y) {
    return x - y
  },
  multiply: function(x, y) {
    return x * y
  },
  divide: function (x, y) {
    if(y==0) {
      return
    } else {
    return x / y
    }
  }
}

var errorModule = {
  show: function(){
    var message = document.getElementById('error_message');
    message.style.visibility = "visible"
  },
  hide: function(){
    var message = document.getElementById('error_message');
    message.style.visibility = "hidden"
  },
   change: function(new_message){
    var message = document.getElementById('error_message');
    message.innerHTML = new_message
  }
}