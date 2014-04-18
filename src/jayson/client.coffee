jayson = require('jayson');
async = require 'async'
iteration_num = 100000

client = jayson.client.http {
  port: 3000,
  hostname: 'localhost'
}

module.exports = (cb)->
  cb (cb)->
    client.request 'add', [1, 2], (err, error, response)->
      cb(null, response)
# results:
# 100 -> 43ms
# 1000 -> 218ms
# 10,000 -> 1433ms
# 100,000 -> 14264ms
