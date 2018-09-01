# Docker For Deploy Go Web Service With LoadBalancing

## Hot To Use
* Run `make up` to start haproxy with three webserver
* Run `make down` to stop haproxy and webserver

## WebServer-Dockerfile
* Build webserver with nginx and binary'server file.
* Use supvisor to start nginx and server, restart crashed service

## HAProxy-Dockerfile
Setup haproxy server

## Comming soon
Support crontab for some jobs

## References
* https://github.com/locnh/docker-magento
* http://supervisord.org/introduction.html
* https://pypi.org/project/schedule/