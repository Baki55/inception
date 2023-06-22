FROM debian:buster

RUN apt-get update\
    && apt-get upgrade -y\
    && apt-get install -y\
    mariadb-server\
    gettext\
    moreutils

COPY tools/config.sh /tools/
RUN chmod +x /tools/config.sh
RUN /tools/config.sh

COPY tools/init.sql /tools/
COPY tools/entrypoint.sh /tools/
RUN chmod +x /tools/entrypoint.sh
ENTRYPOINT [ "/tools/entrypoint.sh" ]
CMD [ "mysqld", "--bind-address 0.0.0.0", "--init-file /tools/init.sql" ]
