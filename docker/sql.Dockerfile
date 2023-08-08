FROM mysql

ENV MYSQL_ROOT_PASSWORD="password"

ADD ./data/sql/bird/ic_bird_dbs.sql /docker-entrypoint-initdb.d