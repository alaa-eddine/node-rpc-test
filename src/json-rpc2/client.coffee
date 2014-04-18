
async = require 'async'
rpc = require 'json-rpc2'
client = new rpc.Client(8062, 'localhost')

iteration_num = 100

test = (i, cb)->
  client.call 'test', [1, 2], cb

start = new Date().getTime()
async.map [0..iteration_num], test, (err, results)->
  end = new Date().getTime()
  sec = end - start
  console.log 'latency:', sec, 'ms'


# results:
# 動かん
