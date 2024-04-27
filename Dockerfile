FROM nginx:1.23.3-alpine

# Copy the NGINX template configuration and other necessary files
COPY nginx.conf.template /etc/nginx/nginx.conf.template
COPY ./*.html /usr/share/nginx/html/
COPY ./css /usr/share/nginx/html/css
COPY ./assets /usr/share/nginx/html/assets
COPY ./js /usr/share/nginx/html/js

# Replace the PORT environment variable at runtime and start NGINX
CMD ["/bin/sh", "-c", "envsubst '$PORT' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf && nginx -g 'daemon off;'"]