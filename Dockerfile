# DOCKER-VERSION 1.2.0

FROM ubuntu:14.04

RUN apt-get update && apt-get dist-upgrade -y

RUN apt-get install git-core make cmake gcc g++ libmad0-dev libsndfile1-dev   libgd2-xpm-dev libboost-filesystem-dev libboost-program-options-dev libboost-regex-dev -y
RUN apt-get install zip wget -y

RUN git clone https://github.com/bbcrd/audiowaveform.git
RUN wget https://googlemock.googlecode.com/files/gmock-1.7.0.zip
RUN unzip gmock-1.7.0.zip -d audiowaveform/
RUN cd audiowaveform; ln -s gmock-1.7.0 gmock; mkdir build; cd build; cmake ..; make; make test; make install

CMD ["audiowaveform"]
