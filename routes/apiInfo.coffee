router = require('express').Router()
db = require('../database').apiInfo
_ = require 'lodash'

router.get '/', (req, res)->
  db.find {}, (err, info)->
    res.json info[0]

router.put '/', (req, res)->
  body = req.body

  db.findOne {}, (err,info)->
    keys = Object.keys(info)

    _.forEach info, (n,key)->
      info[key] = body[key]

    info.save()
    res.json info

module.exports = router