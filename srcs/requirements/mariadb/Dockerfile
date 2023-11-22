FROM	debian:12
ENV	MYSQL_ROOT_PASSWORD=123
ENV	MYSQL_DATABASE=trydb
ENV	MYSQL_USER=reda
ENV	MYSQL_PASSWORD=1234

RUN	apt-get update \
	&& DEBIAN_FRONTEND=noninteractive apt-get install -y mariadb-server\
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
COPY test.sh /
CMD ["sh", "test.sh"]