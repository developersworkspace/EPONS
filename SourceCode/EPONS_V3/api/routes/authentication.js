var express = require('express');
var authentication = require('../services/authentication.js');
var router = express.Router();


router.post('/validateCredentials', function (req, res, next) {
    authentication.validateCredentials(req.body['username'], req.body['password']).then(function (results) {
        if (results == null) {
            sendResponse(res, 401, null);
        } else {
            sendResponse(res, 200, results);
        }
    }).catch(function (err) {
        sendResponse(res, 500, err);
    });
});

function sendResponse(res, status, obj) {
  res.setHeader("Access-Control-Allow-Origin", "*");
  res.setHeader('Content-Type', 'application/json');
  res.send(JSON.stringify(obj), status);
}

module.exports = router;

