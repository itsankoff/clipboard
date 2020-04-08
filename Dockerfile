FROM nginx

USER root

RUN rm -v /etc/nginx/nginx.conf
ADD nginx.conf /etc/nginx/

# Use bind mount -v $(pwd)/demo:/usr/share/nginx/html when running the container
RUN mkdir -p /usr/share/nginx
RUN rm -rf /usr/share/nginx/html

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

EXPOSE 90

CMD service nginx start
