#!/bin/bash
GOODPATH=`pwd`
for i in `cat repolist`
do
cd $i
echo "======================================================"
echo $i
echo "======================================================"
git status
cd $GOODPATH
done
