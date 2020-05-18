#!/bin/bash

echo "$TRAVIS_BRANCH"
echo "$TRAVIS_PULL_REQUEST"
echo "$TRAVIS_PULL_REQUEST_BRANCH"

if [[ "$TRAVIS_PULL_REQUEST" && "$TRAVIS_PULL_REQUEST_BRANCH" ]]; then
  echo "this is a PULL REQUEST"
  echo "THIS IS NOT THE MASTER BRANCH"
fi

if [[ "$TRAVIS_BRANCH" == "master" && "$TRAVIS_PULL_REQUEST" == false ]]; then
  echo "this IS THE MASTER BRANCH!!!"
  echo "this is not a pull request, push to dockerhub!!!"
  docker build -t rhernandog/dockerhub-push-test ./
  echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_ID" --password-stdin
  docker push rhernandog/dockerhub-push-test
  exit 0
fi

# if [[ "$TRAVIS_BRANCH" == "master" ]]; then
#   echo "We ARE on the master branch!!!."
#   echo "$TRAVIS_BRANCH"
#   echo "$TRAVIS_PULL_REQUEST"
#   echo "$TRAVIS_PULL_REQUEST_BRANCH"
#   # docker build -t rhernandog/multisample-one-worker ./worker
#   # echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_ID" --password-stdin
#   # docker push rhernandog/multisample-one-client
#   exit 0
# fi