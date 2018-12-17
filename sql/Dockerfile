# Docker file for the dictionary database container.
FROM mysql

COPY hgy.cnf /etc/mysql/conf.d/
COPY *.sql /docker-entrypoint-initdb.d

ENV MYSQL_RANDOM_ROOT_PASSWORD yes
