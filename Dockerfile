FROM alpine:latest

WORKDIR /tmp
COPY ./requirements.txt /tmp
RUN apk add --update python3 py-pip
RUN pip install --no-cache-dir -r /tmp/requirements.txt
RUN apk add --update openssl jq
