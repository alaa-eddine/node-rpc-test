vein = require 'vein'

module.exports = (cb)->
  vein.ready (client)->
    cb (cb)->
      client.test 1, 2, (result)->
        cb(null, result)

# results:
# 動かん
