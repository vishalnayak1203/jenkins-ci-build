#!/usr/bin/env bash

mkdir -p builds/old
BUILD_EPOCH_TS=$(date +%s) # Seconds
BUILD_VERSION=jenkins-ci-${BUILD_EPOCH_TS}

find builds/ -maxdepth 1 -type f -print0 | xargs -0 mv -t builds/old

tar --exclude 'builds/*' --exclude '.git/*' -pczf builds/${BUILD_VERSION}.tar.gz .
