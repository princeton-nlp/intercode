FROM ubuntu:latest

# Install required dependencies
RUN apt-get update && \
    apt-get install -y bash python3 python3-pip psmisc bsdmainutils cron imagemagick dnsutils git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir /ctf
COPY ../data/ctf/unpackme.flag.py /ctf

# Set the working directory
WORKDIR /ctf