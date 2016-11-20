FROM ubuntu

MAINTAINER Ajitesh Kumar <ajiteshgarg@gmail.com>

RUN apt-get update && apt-get install -y openssh-server

RUN mkdir -p /var/run/sshd

#ADD source destination

ONBUILD ADD sshd_config /etc/ssh/sshd_config

#to run a command run as soon as container is instantiated use CMD

CMD /usr/sbin/sshd -D

#you can make changes to the environment of a container 

USER nobody
WORKDIR /tmp
ENV foobar "Hello World"

#to make the container listen to connections on a particular port.

EXPOSE 2222
