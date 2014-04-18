zerorpc = require("zerorpc")
client = new zerorpc.Client()
client.connect("tcp://127.0.0.1:4242")

module.exports = (cb)->
  cb (cb)->
    client.invoke "test", 1, 2, (err, result)->
      cb(null, result)
