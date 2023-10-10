FROM ubuntu:latest
RUN apt update
RUN apt install apache2 tzdata wget -y
RUN apt install php php-mysqlnd -y
RUN rm -rvf /var/www/html/*
COPY . /var/www/html
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]
