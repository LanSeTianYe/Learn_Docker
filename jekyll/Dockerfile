# docker file
FROM ubuntu:14.04
MAINTAINER sunfeilong <sunfeilong1993@gmail.com>
ENV REFRESHED_AT 2019-01-04
COPY sources.list /etc/apt/sources.list
RUN apt-get update
RUN apt-get -y install ruby ruby-dev make nodejs
RUN gem install jekyll -v 2.5.3
VOLUME /data
VOLUME /var/www/html
WORKDIR /data
ENTRYPOINT ["jekyll", "build", "--destination=/var/www/html"]
