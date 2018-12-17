# Docker file for the dictionary database container.
FROM mysql

COPY *.sql /docker-entrypoint-initdb.d

ENV MYSQL_RANDOM_ROOT_PASSWORD yes
