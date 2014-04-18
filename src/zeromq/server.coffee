
zerorpc = require("zerorpc")

server = new zerorpc.Server {
  test: (a, b, cb)->
    cb(null, a+b)
}

server.bind("tcp://0.0.0.0:4242")

