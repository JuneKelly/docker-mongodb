FROM ubuntu:latest


RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
RUN echo \
  'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' \
  | tee /etc/apt/sources.list.d/mongodb.list


RUN apt-get update
RUN apt-get install -y mongodb-org=2.6.0 \
  mongodb-org-server=2.6.0 \
  mongodb-org-shell=2.6.0 \
  mongodb-org-mongos=2.6.0 \
  mongodb-org-tools=2.6.0


ADD start /start
RUN chmod 0755 /start

RUN mkdir -p /data/db


EXPOSE 27017
CMD ["/start"]
