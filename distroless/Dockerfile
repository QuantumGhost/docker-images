FROM gcr.io/distroless/base:debug

RUN ["adduser", "-g", "app", "-h", "/nonexistent", "-H", "-D", "-s", "/busybox/sh", "app"]
ENV LANG=en_US.UTF-8
USER "app"
