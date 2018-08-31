FROM centos:7

MAINTAINER Luan Ngo Minh

# Copy server file
RUN mkdir /var/app
COPY bin/server /var/app/server

# Add nginx repo
# COPY config/nginx/nginx.repo /etc/nginx.repo

# Update server
RUN yum -y update

#  Install nginx, supervisor
RUN yum -y install nginx supervisor

# Add nginx config
COPY config/nginx/app.conf /etc/nginx/conf.d/app.conf
COPY config/nginx/nginx.conf /etc/nginx/nginx.conf

# Install py pip
RUN curl https://bootstrap.pypa.io/get-pip.py | python && pip install schedule

EXPOSE 80

RUN chmod +x /var/app/counter

CMD ["/var/app/server", "-D", "FOREGROUND"]
