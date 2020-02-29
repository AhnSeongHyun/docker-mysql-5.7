FROM mysql:5.7

ENV MYSQL_ALLOW_EMPTY_PASSWORD=true \
    MYSQL_DATABASE=circle_test \
    MYSQL_HOST=127.0.0.1 \
    MYSQL_ROOT_HOST=% \
    MYSQL_USER=root

RUN echo '\n\
[mysqld]\n\
collation-server = utf8mb4_unicode_ci\n\
init-connect="SET NAMES utf8mb4"\n\
character-set-server = utf8mb4\n\
innodb_flush_log_at_trx_commit=2\n\
sync_binlog=0\n\
innodb_use_native_aio=0\n' >> /etc/mysql/my.cnf
