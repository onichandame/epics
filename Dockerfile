FROM centos:8

WORKDIR /epics

RUN dnf install perl make gcc gcc-c++ wget readline-devel -y
RUN wget -O epics.tar.gz https://epics-controls.org/download/base/base-3.15.8.tar.gz
RUN tar -zxf epics.tar.gz
RUN rm epics.tar.gz
RUN ln -s /epics/base-3.15.8/ /epics/base
RUN echo COMMANDLINE_LIBRARY=READLINE >> /epics/base/configure/os/CONFIG.Common.linux-x86_64 # use readline in shell
WORKDIR /epics/base
RUN make -sj

ENV PATH="/epics/base/bin/linux-x86_64/:${PATH}"
ENV EPICS_HOST_ARCH=linux-x86_64
ENV EPICS_BASE=/epics/base

WORKDIR /
