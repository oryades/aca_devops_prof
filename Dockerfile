FROM nginx

RUN mkdir -p /usr/share/nginx/html/artyom
COPY artyom/index.html /usr/share/nginx/html/artyom/index.html

RUN mkdir -p /usr/share/nginx/html/aram
COPY aram/index.html /usr/share/nginx/html/aram/index.html
