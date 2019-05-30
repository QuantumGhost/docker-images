FROM golang:1.12-alpine
ARG MIRROR_BASE_URL=mirrors.ustc.edu.cn

RUN sed -i "s/dl-cdn.alpinelinux.org/${MIRROR_BASE_URL}/g" /etc/apk/repositories && \
    sed -i 's/http\:/https\:/g' /etc/apk/repositories && \
    apk add --no-cache make
