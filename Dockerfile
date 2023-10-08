FROM docker.io/centos:7
RUN yum install httpd -y
RUN sed -i 's/Listen 80/Listen 8888/' /etc/httpd/conf/httpd.conf
RUN echo "Hello From Centos:7" > /var/www/html/index.html
EXPOSE 8888
CMD ["usr/sbin/httpd","-D","FOREGROUND"]

docker build -t mycentos .
docker images
docker run -d -p 18080:8888 mycentos