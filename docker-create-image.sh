#!/bin/zsh
latest_tag=$(git branch --show-current)

echo "Using latest tag \"${latest_tag}\" for docker push"
echo "Building image with tag docker-101:${latest_tag}"

docker build -t docker-101:${latest_tag} .
