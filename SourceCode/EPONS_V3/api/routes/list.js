var express = require('express');
var router = express.Router();
var list = require('../services/list.js');

router.get('/facilities', function (req, res, next) {
  list.facilities().then(function (results) {
    sendResponse(res, 200, results);
  }).catch(function (err) {
    sendResponse(res, 500, err);
  });;
});

router.get('/permissions', function (req, res, next) {
  list.permissions().then(function (results) {
    sendResponse(res, 200, results);
  }).catch(function (err) {
    sendResponse(res, 500, err);
  });;
});


function sendResponse(res, status, obj) {
  res.setHeader("Access-Control-Allow-Origin", "*");
  res.setHeader('Content-Type', 'application/json');
  res.send(JSON.stringify(obj), status);
}

module.exports = router;
