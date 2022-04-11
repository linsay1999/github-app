FROM nginx:1.15.8
LABEL MAINTAINER="Alfred"
ADD ./public-html/* /usr/share/nginx/html/
#ADD nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
