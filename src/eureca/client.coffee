EurecaClient = require('eureca.io').EurecaClient
client = new EurecaClient({ uri: 'http://localhost:8011/' })

module.exports = (cb)->
  client.ready (client)->
    cb (cb)->
      client.test(1, 2).onReady (result)->
        cb(null, result)


# results:
# 100 -> 22ms
# 1000 -> 69ms
# 10,000 -> 450ms
# 100,000 -> 4378ms
