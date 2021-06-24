# Base image
FROM alpine:3.10

RUN apk add --no-cache \
    bash \
    wget \
	dpkg

COPY quarto-install.sh /quarto-install.sh

RUN chmod +x /quarto-install.sh

ENTRYPOINT [ "/quarto-install.sh" ]
