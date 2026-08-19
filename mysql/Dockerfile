FROM mysql:9.0 
ENV MYSQL_ROOT_PASSWORD=ExpenseApp@1 \
    MSQL_USER=expense \
    MYSQL_PASSWORD=ExpenseApp@1 \
    MYSQL_DATABASE=transactions
COPY scripts/*.sql /docker-entrypoint-initdb.d/