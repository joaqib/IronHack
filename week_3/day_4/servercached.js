var simplecached = require('simplecached');
var server = new simplecached.Server(function (connection) {
  console.log("connection to %s opened", port)
});