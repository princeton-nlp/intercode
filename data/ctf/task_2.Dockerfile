FROM ubuntu:latest

# Install required dependencies
RUN apt-get update && \
    apt-get install -y bash python3 python3-pip psmisc bsdmainutils cron imagemagick dnsutils git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir /ctf
COPY ../data/ctf/trace_task_2.pcap /ctf

# Set the working directory
WORKDIR /ctf