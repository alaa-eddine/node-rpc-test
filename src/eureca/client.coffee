EurecaClient = require('eureca.io').EurecaClient
client = new EurecaClient({ uri: 'http://localhost:8011/' })
async = require 'async'
iteration_num = 100000
 
client.ready (client)->

  test = (i, cb)->
    client.test(1, 2).onReady (result)->
      cb(null, result)

  start = new Date().getTime()
  async.map [0..iteration_num], test, (err, results)->
    console.log results.length
    end = new Date().getTime()
    sec = end - start
    console.log 'latency:', sec, 'ms'

# results:
# 100 -> 22ms
# 1000 -> 69ms
# 10,000 -> 450ms
# 100,000 -> 4378ms
