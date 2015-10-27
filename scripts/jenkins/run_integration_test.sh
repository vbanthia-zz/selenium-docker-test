#!/bin/bash
set -e

while getopts t: OPT
do
        case $OPT in
                "t" ) TARGET_TEST="$OPTARG" ;;
                  * ) echo "Usage: $CMDNAME [-t TARGET_TEST]" 1>&2; exit 1 ;;
        esac
done

#
# if [ "$TARGET_TEST" == "" ]; then
#   echo "please set TARGET_TEST, otherwise test will not run."
#   exit 1
# fi

bundle exec rake spec:$TARGET_TEST
