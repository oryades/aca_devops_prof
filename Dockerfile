FROM nginx

RUN mkdir -p /usr/share/nginx/html/artyom
COPY artyom/index.html /usr/share/nginx/html/artyom/index.html

RUN mkdir -p /usr/share/nginx/html/hamlet
COPY hamlet/index.html /usr/share/nginx/html/hamlet/index.html
