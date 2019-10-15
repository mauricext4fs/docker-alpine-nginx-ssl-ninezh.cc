FROM nginx:alpine
EXPOSE 443
EXPOSE 80
RUN apk update && apk add ssmtp
COPY ./etc/nginx/options.include /etc/nginx/options.include
COPY ./etc/nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./etc/nginx/proxy.conf /etc/nginx/conf.d/proxy.conf
COPY ./etc/nginx/site.conf /etc/nginx/conf.d/default.conf
COPY ./etc/ssl/ninezh.cc.crt /etc/ssl/ninezh.cc.crt
COPY ./etc/ssl/ninezh.cc.key /etc/ssl/ninezh.cc.key
