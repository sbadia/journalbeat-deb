FROM       ubuntu:journalbeat-deb-base
MAINTAINER Sebastien Badia <seb@sebian.fr>
ARG        VERSION
ARG        GIT_COMMIT

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get install -y tree equivs ubuntu-dev-tools git-buildpackage software-properties-common && \
    apt-add-repository ppa:gophers/archive && \
    apt-get update

ENV GOPATH=/go \
    GIT_COMMIT=${GIT_COMMIT} \
    GIT_DESCRIBE=v${VERSION} \
    GIT_BUILDPACKAGE_OPTIONS=

COPY build.sh /build.sh
CMD /bin/bash /build.sh
