FROM nginx

RUN mkdir -p /usr/share/nginx/html/artyom
COPY artyom/index.html /usr/share/nginx/html/artyom/index.html

RUN mkdir -p /usr/share/nginx/html/garnik	
COPY Garnik/index.html /usr/share/nginx/html/garnik/index.html
