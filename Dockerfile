FROM onichandame/epics:3.14.12.8 as epics

FROM onichandame/docker-dev:latest
COPY --from=epics /epics /epics
ENV PATH="/epics/base/bin/linux-x86_64/:${PATH}"
ENV EPICS_HOST_ARCH=linux-x86_64
ENV EPICS_BASE=/epics/base
WORKDIR /
