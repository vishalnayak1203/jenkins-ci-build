#!/usr/bin/env bash

export ENV=TEST
python -m unittest unit_tests
exit_code=$?
if [ $exit_code -eq 0 ]
then
  echo "Continued INtegration Tests"
else
  echo "Exited with code:${exit_code}"
  exit $exit_code
fi

