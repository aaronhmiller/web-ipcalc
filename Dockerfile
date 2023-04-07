FROM ubuntu

RUN apt-get update && apt-get install -y apache2 perl ipcalc libcgi-pm-perl vim

RUN a2enmod ssl

COPY ./cgi-bin /usr/lib/cgi-bin/
COPY ./cgi.load /etc/apache2/mods-enabled/
COPY ./index.html /var/www/html/
RUN rm -rf /etc/apache2/sites-enabled/000-default.conf
RUN ln -s /etc/apache2/sites-available/default-ssl.conf /etc/apache2/sites-enabled/default-ssl.conf

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

EXPOSE 80 443
