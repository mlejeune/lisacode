FROM centos:latest
MAINTAINER eLISA DPC mainetti@apc.in2p3.fr
#EXPOSE 8085



WORKDIR /workspace
RUN cd /workspace
RUN pwd

#RUN git config --global --add core.compression 0
#
RUN git config --global http.postBuffer 524288000
RUN git config --global --add core.compression -1
#RUN git clone  git@gitlab.in2p3.fr:mainetti/LISACode.git -b tested --single-branch
RUN git clone  https://gitlab.in2p3.fr/mainetti/LISACode.git -b tested --single-branch
RUN cd /workspace/LISACode
RUN mkdir /workspace/LISACode/build
RUN cd /workspace/LISACode/build &&  cmake .. && make &&  make install 
RUN cd /workspace/ && mv LISACode/ LISACode_src/

