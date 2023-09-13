FROM debian:buster
RUN apt-get update && \
	apt-get upgrade -y && \
	apt-get install -y nginx openssl

COPY nginx.conf /etc/nginx/sites-enabled/default

RUN mkdir -p /etc/nginx/ssl

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/bkhatib.key -out /etc/nginx/ssl/bkhatib.crt -subj "/C=BE/ST=BX/L=Bruxelles/O=42/OU=42/CN=bkhatib/"