# Container image that runs your code
FROM python:alpine3.12
RUN apk add --no-cache build-base curl bash &&\
    mkdir /workspace && \
    mkdir /github_workspace && \
    curl -fSL https://github.com/subchen/frep/releases/download/v1.3.10/frep-1.3.10-linux-amd64 -o /usr/local/bin/frep &&\
    chmod +x /usr/local/bin/frep && \
    cd /workspace

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh
COPY demo /workspace

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
