FROM: centos:latest
MAINTAINER rahul.mints@gmail.com
RUN yum install -y httpd \
   zip \
   unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page259/volim.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip volim.zip
RUN cp -rvf volim/* .
RUN rm -rf _MACOSX volim volim.zip
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
