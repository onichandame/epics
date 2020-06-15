FROM onichandame/epics:dev-3.15.8 as dev

FROM centos:8

COPY --from=dev /epics /epics

ENV PATH="/epics/base/bin/linux-x86_64/:${PATH}"
ENV EPICS_HOST_ARCH=linux-x86_64
ENV EPICS_BASE=/epics/base

WORKDIR /epics/base
RUN rm -rf src bin documentation html

WORKDIR /
