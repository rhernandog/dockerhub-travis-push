#!/bin/bash

if [[ "$TRAVIS_BRANCH" != "master" ]]; then
  echo "We're not on the master branch!!."
  echo "$TRAVIS_BRANCH"
  echo "$TRAVIS_PULL_REQUEST"
  echo "$TRAVIS_PULL_REQUEST_BRANCH"
  # This will analyze the current branch TheDFury and react accordingly
  exit 0
fi

if [[ "$TRAVIS_BRANCH" == "master" ]]; then
  echo "We ARE on the master branch!!!."
  echo "$TRAVIS_BRANCH"
  echo "$TRAVIS_PULL_REQUEST"
  echo "$TRAVIS_PULL_REQUEST_BRANCH"
  # docker build -t rhernandog/multisample-one-worker ./worker
  # echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_ID" --password-stdin
  # docker push rhernandog/multisample-one-client
  exit 0
fi