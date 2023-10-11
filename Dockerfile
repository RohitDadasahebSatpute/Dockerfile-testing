FROM docker.io/centos:7
RUN yum install httpd -y
RUN sed -i 's/Listen 80/Listen 8888/' /etc/httpd/conf/httpd.conf
RUN echo "<!DOCTYPE html><html><head><title>Color Full and Beautiful</title></head><body style="background-color:red;color:green;"><h1>Color Full and Beautiful</h1></body></html>" > /var/www/html/index.html
EXPOSE 8888
CMD ["usr/sbin/httpd","-D","FOREGROUND"]


