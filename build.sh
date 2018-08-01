#!/usr/bin/env bash

sudo mkdir -p builds
BUILD_EPOCH_TS=$(date +%s) # Seconds
BUILD_VERSION=jenkins-ci-${BUILD_EPOCH_TS}

sudo tar -pczf ${WORKSPACE}/builds/${BUILD_VERSION}.tar.gz ${WORKSPACE} --exclude "${WORKSPACE}/builds"
