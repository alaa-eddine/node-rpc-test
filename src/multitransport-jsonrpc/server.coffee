jsonrpc = require('multitransport-jsonrpc')
Server = jsonrpc.server

ServerHttp = jsonrpc.transports.server.http
ServerTcp = jsonrpc.transports.server.tcp
Loopback = jsonrpc.transports.shared.loopback
loopback = new Loopback()

transport = new ServerHttp(8001)
# transport = new ServerTcp(8001)
# transport = new Loopback()

server = new Server transport, {
  test: (obj, cb)->
    cb(undefined, obj)
}
