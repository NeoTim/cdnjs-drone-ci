FROM node:4-alpine
MAINTAINER Peter Dave Hello <hsu@peterdavehello.org>
RUN apk -Uuv add openssh-client rsync git sshpass
RUN ssh -V
RUN git --version
RUN node --version
RUN rsync --version
ADD cdnjs.sh /bin/
ENTRYPOINT /bin/cdnjs.sh
