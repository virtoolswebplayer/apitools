// Generated by CoffeeScript 1.10.0
var db, router;

router = require('express').Router();

db = require('../database').definitions;

router.get('/', function(req, res) {
  return db.find({
    system: 'solar'
  }, function(err, info) {
    return res.json([]);
  });
});

router.post('/', function(req, res) {
  return db.find({
    system: 'solar'
  }, function(err, info) {
    return res.json([]);
  });
});

router.put('/', function(req, res) {
  return db.find({
    system: 'solar'
  }, function(err, info) {
    return res.json([]);
  });
});

router["delete"]('/', function(req, res) {
  return db.find({
    system: 'solar'
  }, function(err, info) {
    return res.json([]);
  });
});

module.exports = router;
