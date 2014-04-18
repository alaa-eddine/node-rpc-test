
async = require 'async'

iteration_num = 100000

test = (i, cb)->
  cb(null, 1 + 2)

start = new Date().getTime()
async.map [0..iteration_num], test, (err, results)->
  end = new Date().getTime()
  sec = end - start
  console.log 'latency:', sec, 'ms'

# results:
# 100 -> 0ms
# 1000 -> 1ms
# 10,000 -> 4ms
# 100,000 -> 40ms