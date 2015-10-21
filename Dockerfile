FROM gabrimaine/elisadpc:latest
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
RUN git clone  https://gitlab.in2p3.fr/elisadpc/LISACode.git -b tested --single-branch
RUN cd /workspace/LISACode && ls -l && sh install.sh -c /LISACode_Cfg
RUN cd /workspace && rm -fr LISACode
#RUN mkdir /workspace/LISACode/build
#RUN cd /workspace/LISACode/build &&  cmake .. && make &&  make install 
#RUN mkdir /LISACode_workspace && cd /workspace/LISACode && sh setWorkDir.sh /LISACode_workspace && cp -fr /workspace/LISACode/build/bin/* /LISACode_workspace/bin/

