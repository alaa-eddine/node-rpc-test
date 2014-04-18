
# modules

* eureca.io
* framed-msgpack-rpc
* dnode
* jayson

I can't 

* (jsonrpc2) fail?
* (vein) fail?

# run

`run.sh module_name transaction_num concurrent_num`

for exam:

```bash
run.sh eureca 50000 100
```

# results

| module                | eureca.io |   msgpack |     dnode |    jayson |    zeromq |
|:----------------------|----------:|----------:|----------:|----------:|----------:|
| concurrent connection |        70 |        10 |        30 |        70 |        50 |
| latency(avg) ms       |      2.98 |       0.7 |       5.9 |       6.5 |       4.9 |
| latency(max) ms       |        23 |         9 |        76 |        27 |        35 |
| tps                   |     23404 |     14421 |      5107 |      7656 |     10024 |

caution*:  
When I tested dnode, I encountered strange behavior in which the script couldn't stop.