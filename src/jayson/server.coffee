jayson = require('jayson')

server = jayson.server {
  test: (a, b, cb)->
    cb(null, a + b)
}

server.http().listen(3000)
