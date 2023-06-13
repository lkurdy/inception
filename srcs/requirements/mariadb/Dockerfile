FROM debian:buster

EXPOSE 3306

RUN apt update -y && apt upgrade -y && apt-get install mariadb-server -y

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY tools/launch.sh /launch.sh

ENTRYPOINT ["bash", "launch.sh"]
