#!/bin/bash
GOODPATH=`pwd`
for i in `cat repolist`
do
cd $i
echo "======================================================"
echo $i
echo "======================================================"
# HTTPS_PROXY="http://one.proxy.att.com:8080" git pull
git pull
cd $GOODPATH
done
