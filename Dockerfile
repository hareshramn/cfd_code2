FROM ubuntu:20.04

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install sudo

RUN sudo apt install build-essential -y
RUN sudo apt install cmake -y
RUN sudo apt install python-is-python3 -y
RUN sudo apt install openmpi-bin libopenmpi-dev
