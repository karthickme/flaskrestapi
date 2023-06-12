# FROM python:3.6-slim-buster
FROM ubuntu:20.04
WORKDIR /app

RUN apt-get update && \
    apt install make && \
    apt install -y  openjdk-8-jre wget 
# apt install -y build-essential checkinstall && \
RUN apt install -y build-essential zlib1g-dev zlibc
# libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev  
RUN wget https://www.python.org/ftp/python/3.6.13/Python-3.6.13.tgz && \
    tar xvf Python-3.6.13.tgz

WORKDIR /app/Python-3.6.13

RUN ./configure 
RUN make install

ENV PYTHONPATH=$PYTHONPATH:/usr/local/bin/python3.6
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
ENV PATH=$PATH:$JAVA_HOME/bin
RUN ln -s /usr/local/bin/python3.6 /usr/local/bin/python

WORKDIR /app