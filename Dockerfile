FROM onichandame/epics

ADD top /top

WORKDIR /top/iocBoot/iocexample
CMD "./st.cmd"
