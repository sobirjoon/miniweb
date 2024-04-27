# Use NGINX running on Alpine
FROM nginx:1.23.3-alpine

# Copy your custom NGINX config
COPY ./nginx.conf /etc/nginx/nginx.conf

# Copy all your web files
COPY ./*.html /usr/share/nginx/html/
COPY ./css /usr/share/nginx/html/css
COPY ./assets /usr/share/nginx/html/assets
COPY ./js /usr/share/nginx/html/js