FROM debian:bookworm-slim

WORKDIR /

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y curl python3 lsof qrencode openssh-server

COPY . .

ENV PATH="${PATH}:/"

# EXPOSE 4242
# EXPOSE 80

ENTRYPOINT [ "bash", "-c", "mkdir -p /run/sshd && /usr/sbin/sshd && ./torshare \"$@\"", "bash" ]
