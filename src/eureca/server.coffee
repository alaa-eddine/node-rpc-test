
server = require('http').createServer()
EurecaServer = require('eureca.io').EurecaServer
eurecaServer = new EurecaServer()
eurecaServer.attach(server)

eurecaServer.exports.test = (a, b)->
  return a+b
 
server.listen(8011);
