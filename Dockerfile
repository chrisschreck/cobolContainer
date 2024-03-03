FROM ubuntu:latest
RUN apt-get update && apt-get install -y gnucobol gcc
COPY *.cob /test/
WORKDIR /test
RUN cobc -x -free *.cob