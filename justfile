set dotenv-load

default:
  just --list

build:
  docker buildx build \
    --platform linux/amd64,linux/arm64 \
    -t ghcr.io/rjocoleman/bash-jq:latest \
    -f Dockerfile . --push
