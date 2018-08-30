FROM centos:7

MAINTAINER Luan Ngo Minh

# Copy server file
RUN mkdir /var/app
COPY bin/counter /var/app/counter

RUN yum -y install epel-release

RUN yum -y install nginx

# Copy nginx config
RUN rm -f /etc/nginx/nginx.conf
COPY config/app.conf /etc/nginx/conf.d/app.conf
COPY config/nginx.conf /etc/nginx/nginx.conf

EXPOSE 80


