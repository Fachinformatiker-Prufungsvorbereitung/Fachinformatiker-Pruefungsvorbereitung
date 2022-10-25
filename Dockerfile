FROM nginx:latest

COPY ./Docker/nginx.conf /etc/nginx/nginx.conf

COPY ./public /usr/share/nginx/html/