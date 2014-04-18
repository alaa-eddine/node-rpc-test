async = require 'async'

mo = process.argv[2]
iteration_num = if process.argv.length > 3 then process.argv[3] else 10
concurrent_connection_num = if process.argv.length > 4 then process.argv[4] else 1

console.log 'module:', mo, 'iteration_num:', iteration_num, 'concurrent_connection_num:', concurrent_connection_num
console.log '\n------------\n'

client = require '../' + mo + '/client'

client (fn)->
  start = new Date().getTime()
  async.map [1..iteration_num], fn, (err, results)->
    end = new Date().getTime()
    sec = end - start
    console.log '\n------------\n'
    console.log 'latency:', sec, 'ms'
