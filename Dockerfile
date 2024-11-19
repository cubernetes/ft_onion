FROM debian:bookworm-slim

WORKDIR /

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y curl python3 lsof qrencode

COPY . .

ENV PATH="${PATH}:/"

ENTRYPOINT [ "./torshare" ]
