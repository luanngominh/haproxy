FROM centos:7

MAINTAINER Luan Ngo Minh

# Copy server file
#COPY bin/counter /etc/counter

RUN yum -y install epel-release

RUN yum -y install nginx

# Copy nginx config
COPY config/app.conf /etc/nginx/conf.d/app.conf

EXPOSE 80


