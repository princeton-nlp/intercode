FROM ubuntu:latest

# Install required dependencies
RUN apt-get update && \
    apt-get install -y bash python3 psmisc bsdmainutils cron imagemagick dnsutils git tree net-tools iputils-ping coreutils curl cpio jq && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Create custom file structure
ENV file_system_version=1
ENV script=setup_nl2b_fs_${file_system_version}.sh
COPY ../docker/bash_scripts/$script /
RUN chmod +x /$script
RUN /$script

# Commit custom file system to determine diffs
COPY ../docker/docker.gitignore /
RUN mv docker.gitignore .gitignore
RUN git config --global user.email "intercode@pnlp.org"
RUN git config --global user.name "intercode"
RUN git init
RUN git add -A
RUN git commit -m 'initial commit'

# Set the working directory
WORKDIR /