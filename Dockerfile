# We shall use the NGINX webserver and Light weight Linux Alpine
FROM nginx:1.23.3-alpine
#configuration for the NGINX webserver
COPY ./nginx.conf /etc/nginx/nginx.conf

#contents copy all the web files to the IMAGE
COPY ./*.html /usr/share/nginx/html/
COPY ./css /usr/share/nginx/html/css
COPY ./assets /usr/share/nginx/html/assets
COPY ./js /usr/share/nginx/html/js