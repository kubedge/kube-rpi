#!/bin/bash -x
export COMPONENT=tiller
export VERSION=2.11
export DHUBREPO="kubedge2/$COMPONENT-arm32v7"
export DOCKER_NAMESPACE="kubedge2"
export DOCKER_USERNAME="kubedgedevops"
export DOCKER_PASSWORD=$KUBEDGEDEVOPSPWD

cp $HOME/binaries/helm_binaries/helm .
cp $HOME/binaries/helm_binaries/tiller .

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker build -t $DHUBREPO:v$VERSION -f Dockerfile .

docker tag $DHUBREPO:v$VERSION $DHUBREPO:latest
docker tag $DHUBREPO:v$VERSION $DHUBREPO:from-master-pi
docker push $DHUBREPO
