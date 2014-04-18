
async = require 'async'
rpc = require 'jsonrpc2'
client = new rpc.Client(8062, 'localhost')

iteration_num = 1000

test = (i, cb)->
  client.call 'test', [1, 2], cb

start = new Date().getTime()
async.map [0..iteration_num], test, (err, results)->
  end = new Date().getTime()
  sec = end - start
  console.log 'latency:', sec, 'ms'


# results:
# 100 -> 55ms
# 測定不能
