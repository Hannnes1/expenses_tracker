FROM mysql:8.0.28

ENV MYSQL_ALLOW_EMPTY_PASSWORD=yes

COPY schema.sql /docker-entrypoint-initdb.d/
COPY test_data.sql /docker-entrypoint-initdb.d/
