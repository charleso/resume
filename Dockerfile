FROM alpine:latest

RUN apk add --update \
  python \
  py-pip \
  zlib-dev \
  jpeg-dev \
  gcc \
  python-dev \
  libc-dev
RUN pip install rst2pdf
