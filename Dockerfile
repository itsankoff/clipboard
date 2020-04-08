FROM nginx

USER root

RUN rm -v /etc/nginx/nginx.conf
ADD nginx.conf /etc/nginx/

RUN mkdir -p /usr/share/nginx/html
RUN mkdir -p /var/www/html

ADD demo /usr/share/nginx/html/
ADD demo /var/www/html/

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

EXPOSE 90

CMD service nginx start
