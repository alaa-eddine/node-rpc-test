
dnode = require 'dnode'
async = require 'async'

iteration_num = 100

d = dnode.connect(8062)
d.on 'remote', (client)->
  test = (i, cb)->
    client.test 1, 2, (err, result)->
      cb(null, 0)
  
  start = new Date().getTime()
  async.map [0..iteration_num], test, (err, results)->
    end = new Date().getTime()
    sec = end - start
    console.log 'latency:', sec, 'ms'

# results:
# 100 -> 14ms
# 1000 -> 70ms
# 10,000 -> 660ms
# 100,000 -> 36404ms
