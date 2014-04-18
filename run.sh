#!/bin/bash
MODULE_NAME=$1
TRANSACTION_NUM=$2
CONCURRENT_NUM=$3
node --harmony-proxies build/${MODULE_NAME}/server.js&
coffee src/test/index.coffee ${MODULE_NAME} ${TRANSACTION_NUM} ${CONCURRENT_NUM}