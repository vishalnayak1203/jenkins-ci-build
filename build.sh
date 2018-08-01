#!/usr/bin/env bash

mkdir -p builds
BUILD_EPOCH_TS=$(date +%s) # Seconds
BUILD_VERSION=jenkins-ci-${BUILD_EPOCH_TS}

tar -pczf builds/${BUILD_VERSION}.tar.gz ../ --exclude "../builds"
