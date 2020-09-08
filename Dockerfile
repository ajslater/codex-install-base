ARG BASE_VERSION
FROM python:${BASE_VERSION}
LABEL maintainer="AJ Slater <aj@slater.net>"
ARG PKG_VERSION
LABEL version=python${BASE_VERSION}_${PKG_VERSION}

RUN echo "**** install codex system wheel building packages ****" && \
 apk add --no-cache \
   bsd-compat-headers \
   build-base \
   libffi-dev \
   libwebp-dev \
   openssl-dev \
   yaml-dev \
   jpeg-dev \
   zlib-dev

RUN pip3 install -U pip wheel
