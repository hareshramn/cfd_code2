FROM ubuntu:20.04
RUN apt install sudo
RUN sudo apt update -y
RUN sudo apt upgrade -y
RUN sudo apt cmake -y
RUN sudo apt python-is-python3 -y
