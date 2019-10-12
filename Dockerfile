FROM nginx:alpine
EXPOSE 443
EXPOSE 80
COPY ./etc/nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./etc/nginx/proxy.conf /etc/nginx/proxy.conf
COPY ./etc/nginx/site.conf /etc/nginx/default.conf
COPY ./etc/ssl/ninezh.cc.crt /etc/ssl/ninezh.cc.crt
COPY ./etc/ssl/ninezh.cc.key /etc/ssl/ninezh.cc.key
