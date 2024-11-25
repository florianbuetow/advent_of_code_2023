#!/bin/bash

# Define the image name
IMAGE_NAME="readme-generator-aoc23"

# Force rebuilding of the image to avoid caching issues
if [[ "$(docker images -q $IMAGE_NAME 2> /dev/null)" != "" ]]; then
  echo "Image $IMAGE_NAME already exists. Removing"
  docker rmi $IMAGE_NAME:latest
fi
echo "Building $IMAGE_NAME image..."
docker build --no-cache -t $IMAGE_NAME .

# Remove the README.md file if it exists
if [ -f README.md ]; then
  echo "Removing the existing README.md file..."
  rm README.md
fi

# Run the Docker container
echo "Running the Docker container to generate README.md..."
docker run --rm -v "$(pwd)":/app/output $IMAGE_NAME

echo "Container execution finished, README.md generated and persisted."