FROM mysql

ENV MYSQL_ROOT_PASSWORD="test"
ENV MYSQL_DATABASE=create

COPY create.sql /docker-entrypoint-initdb.d/


EXPOSE 3306
