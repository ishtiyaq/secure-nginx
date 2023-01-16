FROM nginx:1.23.3

RUN apt update && apt install -y nginx-extras

COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY conf/default.conf /etc/nginx/conf.d/

COPY ./src /usr/share/nginx/html
