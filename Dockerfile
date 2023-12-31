FROM nginx

RUN mkdir -p /usr/share/nginx/html/artyom
COPY artyom/index.html /usr/share/nginx/html/artyom/index.html


RUN mkdir -p /usr/share/nginx/html/emil
COPY emil/index.html /usr/share/nginx/html/emil/index.html

RUN mkdir -p /usr/share/nginx/html/garnik	
COPY Garnik/index.html /usr/share/nginx/html/garnik/index.html


RUN mkdir -p /usr/share/nginx/html/hamlet
COPY hamlet/index.html /usr/share/nginx/html/hamlet/index.html

RUN mkdir -p /usr/share/nginx/html/aram
COPY aram/index.html /usr/share/nginx/html/aram/index.html

RUN mkdir -p /usr/share/nginx/html/test
COPY test/index.html /usr/share/nginx/html/test/index.html

RUN mkdir -p /usr/share/nginx/html/samig
COPY samig/index.html /usr/share/nginx/html/samig/index.html

RUN mkdir -p /usr/share/nginx/html/arthur
COPY arthur/index.html /usr/share/nginx/html/arthur/index.html
