rpc = require('framed-msgpack-rpc')
server = new rpc.Server {
  port: 8000
  programs :
    "myprog.1" :
      test : (arg, cb) ->
        cb.result(arg.a + arg.b)
}

server.listen (err)->
  console.log 'listening'