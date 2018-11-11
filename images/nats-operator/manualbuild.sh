#!/bin/bash -x
export COMPONENT=nats-operator
export VERSION=0.2.3-v1alpha2
export DHUBREPO="kubedge2/$COMPONENT-arm32v7"
export DOCKER_NAMESPACE="kubedge2"
export DOCKER_USERNAME="kubedgedevops"
export DOCKER_PASSWORD=$KUBEDGEDEVOPSPWD

cp $HOME/bin/nats-operator .

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker build -t $DHUBREPO:$VERSION -f Dockerfile .

docker tag $DHUBREPO:$VERSION $DHUBREPO:latest
docker tag $DHUBREPO:$VERSION $DHUBREPO:from-master-pi
docker push $DHUBREPO
