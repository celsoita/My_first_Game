FROM ubuntu:latest
RUN  apt-get update && apt-get upgrade -y && apt-get install python3 -y
ADD game/web /
USER root
