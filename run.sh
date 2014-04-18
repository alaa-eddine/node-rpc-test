#!/bin/bash
TRANSACTION_NUM=10000
CONCURRENT_NUM=30
MODULE_NAME=dnode
node --harmony-proxies build/${MODULE_NAME}/server.js&
coffee src/test/index.coffee ${MODULE_NAME} ${TRANSACTION_NUM} ${CONCURRENT_NUM}