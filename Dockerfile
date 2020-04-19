FROM onichandame/epics:3.15.7 as epics

FROM onichandame/docker-dev:latest
COPY --from=epics /epics /epics
RUN yum install make gcc gcc-c++ readline-devel perl wget -y
ENV PATH="/epics/base/bin/linux-x86_64/:${PATH}"
ENV EPICS_HOST_ARCH=linux-x86_64
ENV EPICS_BASE=/epics/base
WORKDIR /

