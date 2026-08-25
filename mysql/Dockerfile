FROM mysql:8.0 
RUN adduser -r expense
COPY scripts/*.sql /docker-entrypoint-initdb.d/
ENV MYSQL_ROOT_PASSWORD= \
    MSQL_USER=expense \
     \
    MYSQL_DATABASE=transactions
RUN chown -R expense:expense /var/lib/mysql /var/run/mysqld
USER expense