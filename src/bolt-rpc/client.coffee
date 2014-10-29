
{Client} = require('../../lib/bolt-rpc')

io = require('socket.io-client')

client = new Client io, {url: 'http://localhost:3000'}

module.exports = (cb)->
  setTimeout ()->
    cb (cb)->
      client.method 'test', [1, 2], {}, (err, val) ->
        cb(null, val)
  , 3000

# results:
# 100 -> 31ms
# 1000 -> 218ms
# 10,000 -> 1433ms
# 100,000 -> 14264ms