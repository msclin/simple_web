# Version 0.0.1
FROM ubuntu:18.04
ARG build
ARG webapp_user=user
LABEL location="New York" type="Data Center" role="Web Server"
LABEL maintainer="marc@example.com"
LABEL version = "1.0"
ENV REFRESHED_AT 2020-08-20
WORKDIR /fn_aft
RUN apt-get update

ENV MESSAGE "Hello, World!"
RUN echo $MESSAGE
RUN apt-get install -y nginx
RUN echo "Hi, I am in your container." > /var/www/html/index.html

COPY . .

EXPOSE 80

# ENTRYPOINT ["/usr/sbin/nginx"]
# CMD ["-h"]