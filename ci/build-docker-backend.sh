#!/bin/bash
[[ -z "${GIT_COMMIT}" ]] && Tag='local' || Tag="${GIT_COMMIT::8}" 
REPO="ghcr.io/$docker_username/"
echo "${REPO}"
docker build -t "${REPO}cookie-fortune20-backend:latest" -t "${REPO}cookie-fortune20-backend:1.0-$Tag" ./