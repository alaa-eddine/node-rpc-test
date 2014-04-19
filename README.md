
# modules

* [eureca.io](https://github.com/ezelia/eureca.io/)
* [framed-msgpack-rpc](https://github.com/maxtaco/node-framed-msgpack-rpc)
* [dnode](https://github.com/substack/dnode)
* [jayson](https://github.com/tedeh/jayson)
* [zerorpc](https://github.com/dotcloud/zerorpc-node)

# compile

```bash
grunt
```

# run

`run.sh module_name transaction_num concurrent_num`

for exam:

```bash
run.sh eureca 50000 100
```

# results

| module                | eureca.io |   msgpack |     dnode |    jayson |   zerorpc |
|:----------------------|----------:|----------:|----------:|----------:|----------:|
| concurrent connection |        70 |        10 |        30 |        70 |        50 |
| latency(avg) ms       |      2.98 |       0.7 |       5.9 |       6.5 |       4.9 |
| latency(max) ms       |        23 |         9 |        76 |        27 |        35 |
| tps                   |     23404 |     14421 |      5107 |      7656 |     10024 |

The number of concurrent connections are determined by maximum tps.
