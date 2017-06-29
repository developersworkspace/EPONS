var express = require('express');
var app = express();
var path = require('path');

app.all('/', function(req, res) {
    console.log(path.join(__dirname, 'static', 'index.html'))
    res.sendFile(path.join(__dirname, 'static', 'index.html')); 
});

app.all('/*', function(req, res) {
    res.sendFile(path.join(__dirname, 'static', req.url)); 
});

var server = app.listen(8081, function () {
   var host = server.address().address
   var port = server.address().port
   
   console.log("Example app listening at http://%s:%s", host, port)
})