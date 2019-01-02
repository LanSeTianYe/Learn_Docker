# redis
FROM centos:7
ENV REDIS_HOME="/usr/share/redis/redis-5.0.3"
COPY redis-5.0.3/ $REDIS_HOME
RUN cd $REDIS_HOME && yum update && yum -y install gcc automake autoconf libtool make && make && make install
COPY redis.conf /etc/redis/
ENTRYPOINT ["redis-server","/etc/redis/redis.conf"]
EXPOSE 6379
