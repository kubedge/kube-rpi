#!/bin/bash -x
export COMPONENT=arpscan
export VERSION=0.1.0
export DHUBREPO="hack4easy/$COMPONENT-arm32v7"
export DOCKER_NAMESPACE="kubedge2"
export DOCKER_USERNAME="kubedgedevops"
export DOCKER_PASSWORD=$KUBEDGEDEVOPSPWD

cp $HOME/bin/arpscan .

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker build -t $DHUBREPO:v$VERSION -f Dockerfile .

docker tag $DHUBREPO:v$VERSION $DHUBREPO:latest
docker tag $DHUBREPO:v$VERSION $DHUBREPO:from-master-pi
docker push $DHUBREPO
