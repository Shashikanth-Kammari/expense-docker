FROM mysql:8.0 
RUN adduser -r expense
COPY scripts/*.sql /docker-entrypoint-initdb.d/
RUN chown -R expense:expense /var/lib/mysql /var/run/mysqld