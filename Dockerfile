FROM node:13.8.0-stretch
ADD  sources.list /etc/apt/sources.list
ADD entrypoint.sh /var/entrypoint.sh


RUN apt-get update && apt-get install -y tinyproxy && npm install -g wstunnel --registry=https://registry.npm.taobao.org
EXPOSE 18888

ENTRYPOINT bash /var/entrypoint.sh
