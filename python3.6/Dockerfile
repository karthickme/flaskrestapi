FROM python:3.12.0rc2-slim-bullseye

RUN echo "deb http://archive.debian.org/debian stretch main" >> /etc/apt/sources.list

RUN apt-get update && \
    apt-get install -y openjdk-8-jre