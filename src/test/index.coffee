async = require 'async'
_ = require 'lodash'

mo = process.argv[2]
all_transaction = if process.argv.length > 3 then process.argv[3] else 10
concurrent_connection_num = if process.argv.length > 4 then process.argv[4] else 1

iteration_num = ~~(all_transaction / concurrent_connection_num)

console.log 'module:', mo, 'all_transaction:', all_transaction, 'concurrent_connection_num:', concurrent_connection_num
console.log '\n------------\n'

client = require '../' + mo + '/client'

client (fn)->
  start = new Date().getTime()
  async.map [1..concurrent_connection_num], (i, cb)->
    async.mapSeries [1..iteration_num], (i, cb)->
      start = new Date().getTime()
      fn ()->
        end = new Date().getTime()
        sec = end - start
        cb(null, sec)
    , (err, secs)->
      cb(null, secs)
  , (err, secs)->
    end = new Date().getTime()
    sec = end - start
    secs = _.flatten secs
    sum = _.reduce secs, (a, b)->
      return a + b
    avg = sum / secs.length 
    tps = iteration_num * concurrent_connection_num / sec

    console.log 'avg: ' + avg + 'ms'
    console.log 'tps: ' + tps + 'tps'
