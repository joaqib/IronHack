var simplecached = require('simplecached');
var options = {
    port: 11511,
    host: '10.28.31.244'
};
var client = new simplecached.Client(options, function(error) {
    console.log('Connected');

    client.get(key, function (error, value) {
      console.log("READ -->", value);
      client.close();
    });
});
