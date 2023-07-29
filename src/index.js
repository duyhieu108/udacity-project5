var http = require('http');
var url = require('url');
var server = http.createServer(function (req, res) {
        'use strict';
        res.writeHead(200);
        var q = url.parse(req.url, true).query;
        if (q.name !== null && q.name !== '' && q.name !== undefined) {
            res.end("Hello " + q.name);
        } else {
            res.end("Hello from HieuDD!");
        }
    }); 
server.listen(3000);