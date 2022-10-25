FROM nginx:latest

COPY ./Docker/nginx.config /etc/nginx/sites-available/default

COPY ./public /usr/share/nginx/html/