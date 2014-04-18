
dnode = require 'dnode'
async = require 'async'

d = dnode.connect(8062)

module.exports = (cb)->
  d.on 'remote', (client)->
    cb (cb)->
      client.test 1, 2, (err, result)->
        cb(null, result)

# results:
# 100 -> 14ms
# 1000 -> 70ms
# 10,000 -> 660ms
# 100,000 -> 36404ms
