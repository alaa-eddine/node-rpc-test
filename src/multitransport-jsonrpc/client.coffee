jsonrpc = require('multitransport-jsonrpc')
ClientHttp = jsonrpc.client

transport = new ClientHttp('localhost', 8001)

client = new Client(transport)
client.register('test')

module.exports = (cb)->
  cb (cb)->
    client.test "test", (err, result)->
      cb(null, result)
