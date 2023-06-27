FROM alpine:latest

# Install required dependencies
RUN apk add git

# Create custom testbed directory
COPY ../docker/bash_scripts/setup_fs.sh /
RUN chmod +x /setup_fs.sh
RUN /setup_fs.sh

# Commit custom testbed directory to determine diffs
COPY ../docker/docker.gitignore /
RUN mv docker.gitignore .gitignore
RUN git config --global user.email "intercode@pnlp.org"
RUN git config --global user.name "intercode"
RUN git init
RUN git add -A
RUN git commit -m 'initial commit'

# Set the working directory
WORKDIR /