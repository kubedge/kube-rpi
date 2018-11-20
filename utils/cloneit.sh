#!/bin/bash
GOODPATH=`pwd`
USERID=<userid>
BRANCH=<arm32v7|arm64v8>
for i in helmrepos kubeplay kubesim_5gc kubesim_base kubesim_elte kubesim_epc kubesim_lte kubesim_nr kubesim_blinkt kubesim_nats kubesim_linkio kubedge_utils
do
echo "======================================================"
echo $i
echo "======================================================"
# If you want to contribute
git clone -b arm64v8 ssh://$USERID@review.gerrithub.io:29418/kubedge/$i && scp -p -P 29418 $USERID@review.gerrithub.io:hooks/commit-msg $i/.git/hooks/
cd $GOODPATH
done
