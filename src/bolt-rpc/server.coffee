
{Server} = require('../../lib/bolt-rpc')

app = require("http").createServer()
io = require("socket.io")(app)

app.listen 3000, () ->
  console.log 'server listen start'

server = new Server(io, {
  test: (a, b, cb) ->
    cb(null, a + b)
})
