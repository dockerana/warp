FROM ubuntu:latest
MAINTAINER George Lewis <schvin@schvin.net>
ENV REFRESHED_AT 2015-06-20
ENV BASH3 bash-3.2.57

RUN apt-get update -y && apt-get upgrade -y  && apt-get install -y \
  byacc \
  cabal-install \
  curl \
  git \
  gcc \
  make \
  unzip \
  zlib1g-dev

WORKDIR /tmp

# setup bash3
RUN curl -O https://ftp.gnu.org/gnu/bash/$BASH3.tar.gz && \ 
  tar xfz $BASH3.tar.gz && \
  cd $BASH3 && \
  ./configure && \
  make && \
  make install

# setup shellcheck
ADD https://github.com/koalaman/shellcheck/archive/master.zip /tmp/
RUN unzip master.zip && cabal update && cabal install cabal-install && \
  cd shellcheck-master && cabal install

# setup latest warp! XXXo
#ADD https://raw.githubusercontent.com/dockerana/warp/master/warp /tmp/
ADD warp /tmp/

ENTRYPOINT /bin/bash --version && /bin/bash -n warp && printf "[34m[1mtests passed...\n[0m" && \
  ./$BASH3/bash --version && ./$BASH3/bash -n warp && printf "[34m[1mtests passed...\n[0m" && \
  ~/.cabal/bin/shellcheck warp
