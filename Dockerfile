FROM onichandame/epics:3.15.7

ADD top /top

WORKDIR /top/iocBoot/iocexample
CMD "./st.cmd"
