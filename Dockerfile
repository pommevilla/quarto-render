# Base image
FROM rocker/r-ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    add-apt-repository ppa:git-core/ppa && \
    apt-get update && \
    apt-get install -y --no-install-recommends \
    git \
    ssh &&\
    apt-get autoclean && \
    apt-get clean && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*

COPY quarto-install.sh /quarto-install.sh

RUN chmod +x /quarto-install.sh

ENTRYPOINT [ "/quarto-install.sh" ]
