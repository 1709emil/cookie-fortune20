#!/bin/bash
echo "$docker_password" | docker login ghcr.io --username "$docker_username" --password-stdin
docker push "ghcr.io/1709emil/cookie-fortune20-backend:1.0-${GIT_COMMIT::8}" 
docker push "ghcr.io/1709emil/cookie-fortune20-backend:latest" &
wait