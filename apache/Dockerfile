FROM ubuntu:14.04
MAINTAINER sunfeilong <sunfeilong1993@gmail.com>
ENV REFRESH_AT 2019-01-03
COPY sources.list /etc/apt/sources.list
RUN apt-get -y update
RUN apt-get -y install apache2
VOLUME ["/var/www/html"]
WORKDIR /var/ww/html
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_PID_FILE /var/run/apache2.pid
ENV APACHE_RUN_DIR /var/run/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2
RUN mkdir -p $APACHE_RUN_DIR $APACHE_LOCK_DIR $APACHE_LOG_DIR
EXPOSE 80
ENTRYPOINT [ "/usr/sbin/apache2" ]
CMD ["-D", "FOREGROUND"]
