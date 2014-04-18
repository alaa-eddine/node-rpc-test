jayson = require('jayson');
async = require 'async'
iteration_num = 100000

client = jayson.client.http {
  port: 3000,
  hostname: 'localhost'
}

test = (i, cb)->
  client.request 'add', [1, 2], (err, error, response)->
    cb(null, response)

start = new Date().getTime()
async.map [0..iteration_num], test, (err, results)->
  console.log results.length
  end = new Date().getTime()
  sec = end - start
  console.log 'latency:', sec, 'ms'

# results:
# 100 -> 43ms
# 1000 -> 218ms
# 10,000 -> 1433ms
# 100,000 -> 14264ms
