#!/bin/bash
set -xe
mk-build-deps -i -r -t 'apt-get -y' /opt/journalbeat-deb/debian/control
pushd /opt/journalbeat-deb
  if gbp buildpackage $GIT_BUILDPACKAGE_OPTIONS
  then echo Submission successful
  fi
  echo $?
popd
cp /tmp/build-area/journalbeat_* /tmp/journalbeat-deb
