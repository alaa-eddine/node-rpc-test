
# modules

* [eureca.io](https://github.com/ezelia/eureca.io/)
* [framed-msgpack-rpc](https://github.com/maxtaco/node-framed-msgpack-rpc)
* [zerorpc](https://github.com/dotcloud/zerorpc-node)
* [jayson](https://github.com/tedeh/jayson)
* [dnode](https://github.com/substack/dnode)
* [bolt-rpc](nashibao/bolt-rpc)

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

| module                | eureca.io |   msgpack |   zerorpc |    jayson |     dnode |   bolt-rpc|
|:----------------------|----------:|----------:|----------:|----------:|----------:|----------:|
| concurrent connection |        70 |        10 |        50 |        70 |        30 |         70|
| latency(avg) ms       |      2.98 |       0.7 |       4.9 |       6.5 |       5.9 |       3.29|
| latency(max) ms       |        23 |         9 |        35 |        27 |        76 |         15|
| tps                   |     23404 |     14421 |     10024 |      7656 |      5107 |      21222|

The number of concurrent connections are determined by the growing rate of tps.

# system spec

* macbook pro retina
* 2.6 GHz Core i7
* 16GB 1600 MHz DDR3
