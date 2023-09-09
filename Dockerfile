# FROM python:3.6-slim-buster
FROM python:3.12.0rc1
WORKDIR /app

# Install OpenJDK-11
# RUN apt-get update && \
#     apt-get install -y openjdk-11-jre-headless && \
#     apt-get clean;

# # Install OpenJDK-7
# RUN add-apt-repository ppa:openjdk-r/ppa && \
#     apt-get update && \
#     apt-get install -y openjdk-7-jdk && \
#     apt-get install -y ant && \
#     apt-get clean;

# Install OpenJDK-8
RUN echo "deb http://deb.debian.org/debian/ sid main" >> /etc/apt/sources.list
RUN apt-get update && \
    apt-get install -y openjdk-8-jdk && \
    apt-get clean;

# # Fix certificate issues
# RUN apt-get update && \
#     apt-get install ca-certificates-java && \
#     apt-get clean && \
#     update-ca-certificates -f;

# Setup JAVA_HOME -- useful for docker commandline
# ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
# RUN export JAVA_HOME

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY ./src/* .

CMD ["python3", "-m" , "flask", "run", "--host=0.0.0.0"]


# FROM python:3.6.13
# ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
# WORKDIR /app
# COPY requirements.txt ./
# RUN apt update -y && apt-get install -y software-properties-common && \
#     apt-add-repository 'deb http://security.debian.org/debian-security stretch/updates main' && apt update -y && \
#     apt-get install -y openjdk-8-jdk-headless && \
#     export JAVA_HOME && \
#     apt-get clean
