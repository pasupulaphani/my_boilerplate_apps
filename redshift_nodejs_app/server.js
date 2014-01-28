var http = require('http');

var server = http.createServer(function(req, res) {
    res.writeHead(200);
    res.end('Hello Http'+process.env.NODE_ENV+'test');
});
var port = process.env.OPENSHIFT_NODEJS_PORT || 3000
    , ip = process.env.OPENSHIFT_NODEJS_IP || "127.0.0.1";
server.listen(port, ip);
