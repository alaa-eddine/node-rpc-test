rpc = require('framed-msgpack-rpc')
transport = rpc.createTransport({ host: '127.0.0.1', port : 8000 });

module.exports = (cb)->
  transport.connect (err)->
    cb (cb)->
      client = new rpc.Client(transport, "myprog.1");
      client.invoke 'test', { a : 1, b : 2}, (err, result)->
        cb(null, result)
