http = require 'http'
Vein = require 'vein'
server = http.createServer().listen(8080)
vein = Vein.createServer(Vein)

test = (args, opt, cb)->
  cb(null, args[0] + args[1])

vein.add 'test', (res, a, b)->
  res.reply(a + b)
