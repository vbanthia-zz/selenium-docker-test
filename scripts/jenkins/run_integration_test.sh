#!/bin/bash
set -e

if [ "$FEATURE_TYPE" == "" ]; then
  echo "please set FEATURE_TYPE, otherwise test will not run."
  exit 1
fi

bundle exec rake spec:$FEATURE_TYPE
