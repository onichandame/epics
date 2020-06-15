FROM onichandame/epics:3.15.8

ADD top /top

WORKDIR /top/iocBoot/iocexample
CMD ./st.cmd

EXPOSE 5064
