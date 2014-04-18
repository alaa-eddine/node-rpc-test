
dnode = require 'dnode'

server = dnode {
  test: (a, b, cb)->
    cb(null, a + b)
}

server.listen(8062)