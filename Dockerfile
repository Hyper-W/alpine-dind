FROM alpine:latest

RUN apk update && apk add --no-cache docker docker-cli-compose docker-cli-buildx

ENV PATH=$PATH:/usr/libexec/docker/cli-plugins/

ENTRYPOINT [ "dockerd" ]