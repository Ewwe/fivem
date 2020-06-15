FROM alpine:latest as builder

LABEL \
    maintainer="Ewwe <dev@ewwe.cz>"

ARG FIVEM_VER

RUN apt-get update && apt-get upgrade \
    && apt-get install -y \
    supervisor


RUN wget -O- http://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/${FIVEM_VER}/fx.tar.xz

EXPOSE 30120