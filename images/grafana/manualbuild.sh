#!/bin/bash -x
export COMPONENT=grafana
export VERSION=5.3.2
export DHUBREPO="kubedge2/$COMPONENT-arm32v7"
export DOCKER_NAMESPACE="kubedge2"
export DOCKER_USERNAME="kubedgedevops"
export DOCKER_PASSWORD=$KUBEDGEDEVOPSPWD
export BINURL=https://s3-us-west-2.amazonaws.com/grafana-releases/release/grafana-5.3.2.linux-armv7.tar.gz

curl --retry 3 -L -o downloaded.tar.gz $BINURL
tar zx -f downloaded.tar.gz --strip-components=1 -C .
rm downloaded.tar.gz

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker build -t $DHUBREPO:v$VERSION -f Dockerfile .

docker tag $DHUBREPO:v$VERSION $DHUBREPO:latest
docker tag $DHUBREPO:v$VERSION $DHUBREPO:from-master-pi
docker push $DHUBREPO
