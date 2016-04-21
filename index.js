var express = require('express');
var app = express();

app.get('/', function (req, res) {
  res.send('Hello World!');
});

var port = 4000;
var httpServer = require('http').createServer(app);
httpServer.listen(port, function() {
    console.log('Example app listening on port' + port + '.');
});
