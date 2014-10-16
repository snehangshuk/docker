FROM fedora:latest
MAINTAINER Snehangshu Karmakar <snehangshu@gmail.com>
RUN yum update -y && yum install -y httpd
RUN echo "This is Apache Test Page" > /var/www/html/index.html
ADD run-apache.sh /run-apache.sh
RUN chmod -v +x /run-apache.sh

CMD ["/run-apache.sh"]
