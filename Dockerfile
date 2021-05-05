FROM ubuntu:20.04

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install sudo

RUN sudo apt cmake -y
RUN sudo apt python-is-python3 -y
