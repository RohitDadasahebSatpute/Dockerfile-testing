FROM docker.io/centos:7
RUN yum install httpd -y
RUN sed -i 's/Listen 80/Listen 8888/' /etc/httpd/conf/httpd.conf
RUN echo "<pre style='background-color:black;color:lightblue;'>hello from Kucl</pre>" > /var/www/html/index.html
EXPOSE 8888
CMD ["usr/sbin/httpd","-D","FOREGROUND"]


