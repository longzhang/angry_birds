FROM openresty/openresty
RUN mkdir /data/www -p
RUN mkdir /data/logs -p
RUN echo "hello-world" > /data/www/index.html
COPY nginx.conf /usr/local/openresty/nginx/conf/
copy ./conf.d/ /usr/local/openresty/nginx/conf/conf.d
EXPOSE 80
ENTRYPOINT ["/usr/local/openresty/nginx/sbin/nginx" , "-g", "daemon off;"]
