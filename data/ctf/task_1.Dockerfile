FROM ubuntu:latest

# Install required dependencies
RUN apt-get update && \
    apt-get install -y  wget bash gcc sleuthkit python3 python3-pip psmisc bsdmainutils cron imagemagick dnsutils git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir /ctf
RUN cd /ctf && wget https://mercury.picoctf.net/static/aed64c508175df5fe23207c10e0e47e5/dds2-alpine.flag.img.gz


# Set the working directory
WORKDIR /ctf