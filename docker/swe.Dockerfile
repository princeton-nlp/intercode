FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y bash git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN git config --global user.email "intercode@pnlp.org"
RUN git config --global user.name "intercode"

WORKDIR /