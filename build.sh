#!/usr/bin/env bash

mkdir -p builds
export BUILD_EPOCH_TS = $(date +%s) # Seconds
BUILD_VERSION = jenkins-ci-${BUILD_EPOCH_TS}
export BUILD_VERSION

tar -pczf builds/${BUILD_VERSION}.tar.gz ../ --exclude "../builds"
