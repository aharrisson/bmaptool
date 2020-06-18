FROM ubuntu:18.04
MAINTAINER Anders Harrisson <anders.harrisson@gmail.com>

# Install required packages
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get -y install bmap-tools && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT ["/usr/bin/bmaptool"]
