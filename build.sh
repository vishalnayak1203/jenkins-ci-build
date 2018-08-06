#!/usr/bin/env bash

mkdir -p builds/old

if [ -n "${CHANGE_ID}" ] ; then
  # do something because it's a pull request
  ARTIFACT_NAME=jenkins-ci-nightly
else
  # not a pull request
  ARTIFACT_NAME=jenkins-ci-release
fi

BUILD_EPOCH_TS=$(date +%s) # Seconds
BUILD_VERSION=${ARTIFACT_NAME}-${BUILD_EPOCH_TS}

find builds/ -maxdepth 1 -type f -print0 | xargs -0 mv -t builds/old

tar --exclude 'builds' --exclude '.git*' -pczf builds/${BUILD_VERSION}.tar.gz . --transform 's,^./,'${BUILD_VERSION}'/,'
