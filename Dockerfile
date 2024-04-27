FROM nginx:1.23.3-alpine
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./*.html /usr/share/nginx/html/
COPY ./css /usr/share/nginx/html/css
COPY ./assets /usr/share/nginx/html/assets
COPY ./js /usr/share/nginx/html/js
EXPOSE ${PORT}  # This line is more for documentation; Railway handles the actual port exposure