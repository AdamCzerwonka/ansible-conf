FROM ubuntu:jammy

RUN apt update \
    && DEBIAN_FRONTEND=noninteractive TZ="Europe/Warsaw" apt install -y tzdata \
    && apt install -y git curl ansible

COPY . .
