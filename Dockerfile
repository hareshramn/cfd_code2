FROM ubuntu:20.04

ENV SU2_VERSION=7.1.1
ENV BUILD_DIR=/tmp/build

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install sudo

RUN apt-get install build-essential -y
RUN apt-get install python-is-python3 -y
#RUN sudo apt-get install cmake -y
RUN apt-get install openmpi-bin libopenmpi-dev -y
RUN echo 0 | tee /proc/sys/kernel/yama/ptrace_scope
RUN apt install pkg-config -y

