FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

RUN rm -rf /var/www/html/*

COPY 2153_fireworks_composer/ /var/www/html/

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
