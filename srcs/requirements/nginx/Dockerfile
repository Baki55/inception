FROM debian:buster

RUN apt-get update\
    && apt-get upgrade -y\
    && apt-get install -y\
    nginx\
    openssl

COPY conf/nginx.conf /etc/nginx/sites-enabled/default

RUN mkdir /etc/nginx/ssl
RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes\
        -out /etc/nginx/ssl/inception.crt\
        -keyout /etc/nginx/ssl/inception.key\
        -subj "/C=BE/ST=BX/L=Bruxelles/O=42/OU=42/CN=bkhatib/"

CMD ["nginx", "-g", "daemon off;"]