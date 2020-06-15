FROM onichandame/epics:dev-3.15.8

RUN dnf remove readline-devel -y
WORKDIR /epics/base
RUN rm -rf src bin documentation html

WORKDIR /
