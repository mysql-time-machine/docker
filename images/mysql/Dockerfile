# This is needed in order to customise the two files being copied in, because
# docker compose does not support copying individual files in, only mounting
# volumes into the image.
FROM mysql:5.7.21
COPY ./input/my.cnf /etc/mysql/conf.d/my.cnf
COPY ./input/mysql_init_dbs.sh /docker-entrypoint-initdb.d/mysql_init_dbs.sh
