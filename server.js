//express_demo.js 文件
var express = require('express');
var app = express();

app.get('/', function (req, res) {
    res.sendFile(__dirname + "/view/" + "test1.html");
})
app.get('/test1', function (req, res) {
   
    res.sendFile(__dirname + "/view/" + "test1.html");
   
})
app.get('/test2', function (req, res) {
   
    res.sendFile(__dirname + "/view/" + "test2.html");

})
app.get('/test3', function (req, res) {
   
    res.sendFile(__dirname + "/view/" + "test3.html");

})
app.get('/test4', function (req, res) {
    
    res.sendFile(__dirname + "/view/" + "test4.html");

})
app.get('/test5', function (req, res) {
   
    res.sendFile(__dirname + "/view/" + "test5.html");

})


app.use(express.static('img'));
var server = app.listen(8888, function () {

  
    var port = server.address().port

    console.log("Service has started, port:"+ port)

})
