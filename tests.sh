#!/usr/bin/env bash

export ENV=TEST
PYTHONPATH="/opt/ws/jenkins-ci-build"
cd /opt/ws/jenkins-ci-build
python -m unittest unit_tests.py