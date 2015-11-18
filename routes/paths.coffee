router = require('express').Router()
db = require('../database').paths

router.get '/', (req, res)->
  db.find {system: 'solar'}, (err, info)->
    res.json []

router.post '/', (req, res)->
  db.find {system: 'solar'}, (err, info)->
    res.json []

router.put '/', (req, res)->
  db.find {system: 'solar'}, (err, info)->
    res.json []

router.delete '/', (req, res)->
  db.find {system: 'solar'}, (err, info)->
    res.json []


module.exports = router