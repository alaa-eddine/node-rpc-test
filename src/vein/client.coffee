
async = require 'async'
vein = require 'vein'

iteration_num = 100

vein.ready (services)->
  test = (i, cb)->
    vein.test 1, 2, (result)->
      cb(null, result)

  start = new Date().getTime()
  async.map [0..iteration_num], test, (err, results)->
    end = new Date().getTime()
    sec = end - start
    console.log 'latency:', sec, 'ms'

# results:
# 動かん

