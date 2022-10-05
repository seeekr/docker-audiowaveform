FROM ubuntu:20.04

RUN apt update && apt install -y software-properties-common && \
    add-apt-repository ppa:chris-needham/ppa && \
    apt-get update && \
    apt-get install -y audiowaveform

CMD ["audiowaveform"]
