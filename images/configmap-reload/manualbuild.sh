#!/bin/bash -x
cp $HOME/bin/configmap-reload .
export DHUBREPO="kubedge2/configmap-reload-arm32v7"
export VERSION="v0.2.2"
export DOCKER_NAMESPACE="kubedge2"
export DOCKER_USERNAME="kubedgedevops"
export DOCKER_PASSWORD=$KUBEDGEDEVOPSPWD
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker build -t $DHUBREPO:$VERSION -f Dockerfile .
docker tag $DHUBREPO:$VERSION $DHUBREPO:latest
docker tag $DHUBREPO:$VERSION $DHUBREPO:from-master-pi
docker push $DHUBREPO
