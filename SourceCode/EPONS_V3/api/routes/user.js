var express = require('express');
var router = express.Router();
var user = require('../services/user.js');


router.post('/list', function (req, res, next) {
  user.list(req.body['username'], req.body['query'], req.body['skip']).then(function (results) {
    sendResponse(res, 200, results);
  }).catch(function (err) {
    sendResponse(res, 500, err);
  });
});

router.post('/find', function (req, res, next) {
  user.find(req.body['userId']).then(function (results) {
    sendResponse(res, 200, results);
  }).catch(function (err) {
    sendResponse(res, 500, err);
  });
});

router.post('/lock', function (req, res, next) {
  user.lock(req.body['userId']).then(function (results) {
    sendResponse(res, 200, results);
  }).catch(function (err) {
    sendResponse(res, 500, err);
  });
});

router.post('/unlock', function (req, res, next) {
  user.unlock(req.body['userId']).then(function (results) {
    sendResponse(res, 200, results);
  }).catch(function (err) {
    sendResponse(res, 500, err);
  });
});

router.post('/facilityPermissions', function (req, res, next) {
  user.findFacilityPermissions(req.body['userId']).then(function (results) {
    sendResponse(res, 200, results);
  }).catch(function (err) {
    sendResponse(res, 500, err);
  });
});

router.post('/create', function (req, res, next) {

  user.create(req.body['username'], req.body['emailAddress']).then(function (results) {
    sendResponse(res, 200, results);
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
