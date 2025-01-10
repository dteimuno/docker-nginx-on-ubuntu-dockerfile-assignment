FROM    ubuntu:latest
LABEL   maintainer="Dennis Tei-Muno <yaw---@hotmail.com>"
RUN     apt-get update 
RUN     apt-get -y install nginx 
EXPOSE  80/tcp
#Default argument when container is started
CMD     ["nginx", "-g", "daemon off;"]