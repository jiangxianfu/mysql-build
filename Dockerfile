FROM centos:7.4.1708

MAINTAINER jiangxf

RUN yum install -y vim wget git rpm zip tar python python-setuptools python-pip supervisor\
    rpm-build \
    redhat-rpm-config \
    gcc \
    gcc-c++ \
    cmake \
    make \
    zlib-devel \
    openssl-devel \
    gperf

RUN mkdir -p /mysql-src

COPY supervisord.conf /etc/supervisord.conf

WORKDIR /

ENTRYPOINT ["supervisord","-c","/etc/supervisord.conf"]
