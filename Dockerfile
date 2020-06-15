FROM onichandame/docker-dev:latest

WORKDIR /epics

RUN dnf install make gcc gcc-c++ wget readline-devel -y
RUN wget -O epics.tar.gz https://epics-controls.org/download/base/base-3.15.7.tar.gz
RUN tar -zxf epics.tar.gz
RUN rm epics.tar.gz
RUN ln -s /epics/base-3.15.7/ /epics/base
WORKDIR /epics/base
RUN make

ENV PATH="/epics/base/bin/linux-x86_64/:${PATH}"
ENV EPICS_HOST_ARCH=linux-x86_64
ENV EPICS_BASE=/epics/base

WORKDIR /
