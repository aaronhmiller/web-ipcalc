FROM ubuntu

RUN apt-get update && apt-get install -y apache2 perl ipcalc libcgi-pm-perl vim

COPY ./cgi-bin /usr/lib/cgi-bin/
COPY ./cgi.load /etc/apache2/mods-enabled/

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

EXPOSE 80 443
