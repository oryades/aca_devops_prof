FROM nginx

RUN mkdir -p /usr/share/nginx/html/artyom
COPY artyom/index.html /usr/share/nginx/html/artyom/index.html

RUN mkdir -p /usr/share/nginx/html/test
COPY test/index.html /usr/share/nginx/html/test/index.html

RUN mkdir -p /usr/share/nginx/html/samig
COPY samig/index.html /usr/share/nginx/html/samig/index.html