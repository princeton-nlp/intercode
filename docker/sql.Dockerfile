FROM mysql

ENV MYSQL_ROOT_PASSWORD="password"

ADD ./data/spider/spider_dev.sql /docker-entrypoint-initdb.d