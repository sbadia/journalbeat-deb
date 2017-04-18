#!/bin/bash
set -xe
mk-build-deps -i -r -t 'apt-get -y' /opt/journalbeat-deb/debian/control
pushd /opt/journalbeat-deb && gbp buildpackage $GIT_BUILDPACKAGE_OPTIONS
cp /tmp/build-area/* /tmp/journalbeat-deb
