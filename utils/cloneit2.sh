#!/bin/bash
GOODPATH=`pwd`
USERID=<userid>
for i in kube-rpi ansible-kube-rpi
do
echo "======================================================"
echo $i
echo "======================================================"
# If you want to contribute
# git clone ssh://$USERID@review.gerrithub.io:29418/kubedge/$i && scp -p -P 29418 $USERID@review.gerrithub.io:hooks/commit-msg $i/.git/hooks/
git clone git@github.com:kubedge/$i.git
cd $GOODPATH
done
