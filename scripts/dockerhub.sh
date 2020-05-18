#!/bin/sh

if [[ "$TRAVIS_BRANCH" != "master" ]]; then
  echo "We're not on the master branch!!."
  # This will analyze the current branch TheDFury and react accordingly
  exit 0
fi