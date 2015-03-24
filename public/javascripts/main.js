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
    return x / y
  }
}

var errorModule = {
  show: function(){
    var message = document.getElementById('error_message');
    message.style.visibility = "visible"
  },

  // hide: function(){

  // },
  // change: function(){

  // }
}