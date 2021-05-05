FROM ubuntu:20.04

ENV SU2_VERSION=7.1.1
ENV BUILD_DIR=/tmp/build

RUN apt-get install sudo


#RUN sudo apt-get install cmake -y
#RUN apt-get install openmpi-bin libopenmpi-dev -y
#RUN echo 0 | tee /proc/sys/kernel/yama/ptrace_scope
#RUN apt install pkg-config -y

RUN apt-get update && apt-get install -y \
    build-essential \
    python-is-python3 \
    git \
    python3-pip \
    python3-matplotlib \
    pkg-config
