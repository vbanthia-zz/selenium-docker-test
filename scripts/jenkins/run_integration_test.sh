#!/bin/bash
set -e

if [ "$TARGET_TEST" == "" ]; then
  echo "set TARGET_TEST."
  exit 1
fi

bundle exec rake spec:$TARGET_TEST
