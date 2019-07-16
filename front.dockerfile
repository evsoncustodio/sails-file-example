FROM nginx:latest
LABEL maintainer="evsoncustodio"
COPY ./assets /var/www/assets
COPY ./nginx.conf /etc/nginx/nginx.conf
EXPOSE 80 443
ENTRYPOINT [ "nginx" ]
CMD [ "-g", "daemon off;" ]
