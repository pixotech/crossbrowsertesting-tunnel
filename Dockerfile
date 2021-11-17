FROM ubuntu:latest

ENV USERNAME=
ENV AUTHKEY=
ENV TUNNELNAME="Unnamed Docker Tunnel"
ENV BYPASS=false
ENV ADDITIONALFLAGS=


RUN apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/*

RUN wget https://sbsecuretunnel.s3.amazonaws.com/cli/linux/SBSecureTunnel && chmod +x SBSecureTunnel && mv SBSecureTunnel /usr/local/bin

RUN echo 'SBSecureTunnel --username "${USERNAME}" --authkey "${AUTHKEY}" --acceptAllCerts --tunnelname "${TUNNELNAME}" --bypass ${BYPASS} $ADDITIONALFLAGS' > /usr/local/bin/start && chmod +x /usr/local/bin/start

ENTRYPOINT start
