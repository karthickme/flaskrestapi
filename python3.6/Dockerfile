FROM python:3.6.13

RUN echo "deb http://archive.debian.org/debian stretch main" >> /etc/apt/sources.list

RUN apt-get update && \
    apt-get install -y openjdk-8-jre