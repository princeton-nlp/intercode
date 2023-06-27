#!/bin/bash

# Create docker images for bash, sql environments
echo "Setting up docker image for bash..."
docker build -t intercode-bash -f docker/bash.Dockerfile .

echo "Setting up docker image for nl2bash..."
docker build -t intercode-nl2bash -f docker/nl2bash.Dockerfile .

echo "Setting up docker image for sql..."
docker-compose -f docker/sql-docker-compose.yml up -d

echo "Setting up docker image for python..."
docker build -t intercode-python -f docker/python.Dockerfile .

echo "Setting up docker images for ctf..."
CTF_DOCKERFILES_DIR="data/ctf"
for DOCKERFILE in $(find "$CTF_DOCKERFILES_DIR" -type f -name "*.Dockerfile"); do
    # Get the image name from the directory name
    IMAGE_NAME=$(basename "$DOCKERFILE" .Dockerfile)
    docker build -t ctf_"$IMAGE_NAME" -f $DOCKERFILE .
done
