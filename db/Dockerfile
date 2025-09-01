FROM mariadb:10.11
ENV MYSQL_USER=toruser
ENV MYSQL_PASSWORD=tor-password
ENV MYSQL_DATABASE=tor
ENV MYSQL_ROOT_PASSWORD=tor-rootpass
COPY schema.sql /docker-entrypoint-initdb.d/
