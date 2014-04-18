
# modules

* eureca.io
* dnode
* jayson
* (jsonrpc2)
* (vein)

# run

`run.sh module_name transaction_num concurrent_num`

for exam:

```bash
run.sh eureca 50000 100
```

# results

| module                | eureca.io |     dnode |    jayson |
|:----------------------|----------:|----------:|----------:|
| concurrent connection |        70 |        30 |        70 |
| latency(avg) ms       |      2.98 |       5.9 |       6.5 |
| latency(max) ms       |        23 |        76 |        27 |
| tps                   |     23404 |      5107 |      7656 |

caution*:  
When I tested dnode, I encountered strange behavior in which the script couldn't stop.