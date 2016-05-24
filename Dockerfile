FROM elisadpc/elisadpc:latest
MAINTAINER eLISA DPC ccavet@apc.in2p3.fr

WORKDIR /workspace
RUN cd /workspace
RUN pwd

RUN git config --global http.postBuffer 524288000
RUN git config --global --add core.compression -1
RUN git clone  https://gitlab.in2p3.fr/elisadpc/LISACode.git -b master --single-branch
# RUN cd /workspace/LISACode && ls -l && sh install.sh -c /LISACode_Cfg
RUN cd /workspace/LISACode && ls -l && sh install.sh -c /usr/Cfg
RUN cd /workspace && rm -fr LISACode
RUN chmod +x /usr/local/bin/makeTDI-lisacode2.py
