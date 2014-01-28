var app = require('express').createServer();
app.get('/', function(req, res) {
    res.send('Hello from phaninder.com \n <h3>Moving infrastructure</h3> \n Please come back later');
});
app.listen(process.env.VCAP_APP_PORT || 3000);
