
rpc = require 'jsonrpc2'
server = new rpc.Server()

test = (args, opt, cb)->
  cb(null, args[0] + args[1])

server.expose 'test', test

server.listen(8062, 'localhost')
