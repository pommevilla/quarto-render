# Base image
FROM ubuntu

RUN apt-get \
    bash \
    wget \
	dpkg

COPY quarto-install.sh /quarto-install.sh

RUN chmod +x /quarto-install.sh

ENTRYPOINT [ "/quarto-install.sh" ]
