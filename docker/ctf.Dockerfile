FROM ubuntu:latest

# Install required dependencies
RUN apt-get update && \
    apt-get install -y bash python3 python3-pip psmisc bsdmainutils cron imagemagick dnsutils git wget gcc sleuthkit && \
    apt-get install -y unzip curl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Install required pip dependencies
RUN pip3 install pycryptodome

# Load in per-task assets
COPY ../data/ctf/task_assets/. /ctf/
RUN find /ctf/ -type d -name solution -prune -exec rm -rf {} \;

# Commit custom file system to determine diffs
COPY ../docker/docker.gitignore /
RUN mv docker.gitignore .gitignore
RUN git config --global user.email "intercode@pnlp.org"
RUN git config --global user.name "intercode"
RUN git init
RUN git add -A
RUN git commit -m 'initial commit'

WORKDIR /ctf