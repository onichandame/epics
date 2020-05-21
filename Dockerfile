FROM centos:8

ADD epics /epics

ENV PATH="/epics/base-3.15.7/bin/linux-x86_64/:${PATH}"
ENV EPICS_HOST_ARCH=linux-x86_64
ENV EPICS_BASE=/epics/base

WORKDIR /
