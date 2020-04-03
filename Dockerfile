FROM centos:7

WORKDIR /epics

RUN yum install make gcc gcc-c++ readline-devel perl wget -y
RUN wget -O epics.tar.gz https://epics.anl.gov/download/base/baseR3.14.12.8.tar.gz
RUN tar -zxf epics.tar.gz
RUN rm epics.tar.gz
RUN ln -s /epics/base-3.14.12.8/ /epics/base
WORKDIR /epics/base
RUN make
ENV PATH="/epics/base/bin/linux-x86_64/:${PATH}"
ENV EPICS_HOST_ARCH=linux-x86_64

WORKDIR /
