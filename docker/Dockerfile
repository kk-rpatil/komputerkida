FROM centos:6.6
MAINTAINER Viral Vala <viralvala75@gmail.com>

######## Install rpm public key #########
#------------------------------------------------
RUN \
   rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-6

########## Install httpd  ###########
#------------------------------------------------
# httpd-2.2.15-39.el6.centos.x86_64.rpm
#------------------------------------------------
ADD tools/httpd-2.2.15/* /tmp/tools/httpd-2.2.15/

RUN \
   cd /tmp/tools/httpd-2.2.15 \
   && rpm -ivh \
         apr-util-1.3.9-3.el6_0.1.x86_64.rpm \
         apr-util-ldap-1.3.9-3.el6_0.1.x86_64.rpm \
         apr-1.3.9-5.el6_2.x86_64.rpm \
         httpd-tools-2.2.15-39.el6.centos.x86_64.rpm \
         redhat-logos-60.0.14-12.el6.centos.noarch.rpm \
         mailcap-2.1.31-2.el6.noarch.rpm \
         httpd-2.2.15-39.el6.centos.x86_64.rpm

# Copy 
#   Host::httpd.conf file --> Guest::/etc/httpd/conf/httpd.conf

EXPOSE 80

############ Install php #############
#-------------------------------------------------
# php-cli-5.3.3-46.el6_6.x86_64.rpm
# php-common-5.3.3-46.el6_6.x86_64.rpm
# php-5.3.3-46.el6_6.x86_64.rpm
#-------------------------------------------------
ADD tools/php-5.3.3/* /tmp/tools/php-5.3.3/

RUN \
   cd /tmp/tools/php-5.3.3 \
   && rpm -ivh \
         libedit-2.11-4.20080712cvs.1.el6.x86_64.rpm \
         php-cli-5.3.3-46.el6_6.x86_64.rpm \
         php-common-5.3.3-46.el6_6.x86_64.rpm \
         php-5.3.3-46.el6_6.x86_64.rpm 


########## Install php extensions ############
#-----------------------------------------------
# php-gd-5.3.3-46.el6_6.x86_64.rpm
# php-mbstring-5.3.3-46.el6_6.x86_64.rpm
# php-pdo-5.3.3-46.el6_6.x86_64.rpm
# php-mysql-5.3.3-46.el6_6.x86_64.rpm
# php-xml-5.3.3-46.el6_6.x86_64.rpm
# php-pear-1.9.4-4.el6.noarch.rpm
#-----------------------------------------------
ADD tools/php-extensions/* /tmp/tools/php-extensions/

RUN \
   cd /tmp/tools/php-extensions \
   && rpm -ivh \
         libX11-common-1.6.0-2.2.el6.noarch.rpm \
         libXau-1.0.6-4.el6.x86_64.rpm \
         libxcb-1.9.1-2.el6.x86_64.rpm \
         libX11-1.6.0-2.2.el6.x86_64.rpm \
         libXpm-3.5.10-2.el6.x86_64.rpm \
         freetype-2.3.11-15.el6_6.1.x86_64.rpm \
         libjpeg-turbo-1.2.1-3.el6_5.x86_64.rpm \
         libpng-1.2.49-1.el6_2.x86_64.rpm \
         php-gd-5.3.3-46.el6_6.x86_64.rpm \
   && rpm -ivh \
         php-mbstring-5.3.3-46.el6_6.x86_64.rpm \
   && rpm -ivh \
         php-pdo-5.3.3-46.el6_6.x86_64.rpm \
   && rpm -ivh \
         mysql-libs-5.1.73-5.el6_6.x86_64.rpm \
         php-mysql-5.3.3-46.el6_6.x86_64.rpm \
   && rpm -ivh \
         libxslt-1.1.26-2.el6_3.1.x86_64.rpm \
         php-xml-5.3.3-46.el6_6.x86_64.rpm \
   && rpm -ivh \
         php-pear-1.9.4-4.el6.noarch.rpm


######### Installing Perl ##############
#---------------------------------------------
# perl-5.10.1-136.el6_6.1.x86_64.rpm
#---------------------------------------------
ADD tools/perl-5.10.1/* /tmp/tools/perl-5.10.1/

RUN \
   cd /tmp/tools/perl-5.10.1 \
   && rpm -ivh \
         perl-libs-5.10.1-136.el6_6.1.x86_64.rpm \
         perl-Module-Pluggable-3.90-136.el6_6.1.x86_64.rpm \
         perl-Pod-Escapes-1.04-136.el6_6.1.x86_64.rpm \
         perl-Pod-Simple-3.13-136.el6_6.1.x86_64.rpm \
         perl-version-0.77-136.el6_6.1.x86_64.rpm \
         perl-5.10.1-136.el6_6.1.x86_64.rpm


######### Installing MySQL #############
#---------------------------------------------
# mysql-5.1.73-5.el6_6.x86_64.rpm
# mysql-server-5.1.73-5.el6_6.x86_64.rpm
#---------------------------------------------
ADD tools/mysql-5.1.73/* /tmp/tools/mysql-5.1.73/

RUN \
   cd /tmp/tools/mysql-5.1.73 \
   && rpm -ivh \
         mysql-5.1.73-5.el6_6.x86_64.rpm \
   && rpm -ivh \
         perl-DBI-1.609-4.el6.x86_64.rpm \
         perl-DBD-MySQL-4.013-3.el6.x86_64.rpm \
         mysql-server-5.1.73-5.el6_6.x86_64.rpm

EXPOSE 3306

########## Install necessary Tools ##########
#---------------------------------------------
# which-2.19-6.el6.x86_64.rpm
# wget-1.12-5.el6_6.1.x86_64.rpm
# tar-1.23-11.el6.x86_64.rpm
# vim-enhanced-7.2.411-1.8.el6.x86_64.rpm
#---------------------------------------------

ADD tools/utils/* /tmp/tools/utils/

RUN \
   cd /tmp/tools/utils \
   && rpm -ivh \
         which-2.19-6.el6.x86_64.rpm \
         wget-1.12-5.el6_6.1.x86_64.rpm \
         tar-1.23-11.el6.x86_64.rpm \
         gpm-libs-1.20.6-12.el6.x86_64.rpm \
         vim-common-7.2.411-1.8.el6.x86_64.rpm \
         vim-enhanced-7.2.411-1.8.el6.x86_64.rpm


############# Install Supervisord ################
#---------------------------------------------------
# python-setuptools-0.6.10-3.el6.noarch.rpm 
# meld3-1.0.2.tar.gz 
# supervisor-3.1.3.tar.gz
#---------------------------------------------------

ADD tools/supervisor-3.1.3/python-setuptools-0.6.10-3.el6.noarch.rpm /tmp/tools/supervisor-3.1.3/python-setuptools-0.6.10-3.el6.noarch.rpm
ADD tools/supervisor-3.1.3/meld3-1.0.2.tar.gz /tmp/tools/supervisor-3.1.3/meld3-1.0.2.tar.gz
ADD tools/supervisor-3.1.3/supervisor-3.1.3.tar.gz /tmp/tools/supervisor-3.1.3/supervisor-3.1.3.tar.gz

RUN \
   cd /tmp/tools/supervisor-3.1.3 \
      && rpm -ivh python-setuptools-0.6.10-3.el6.noarch.rpm \
      && easy_install meld3-1.0.2.tar.gz \
      && easy_install supervisor-3.1.3.tar.gz


############ Running Scripts ################         
#---------------------------------------------

ADD scripts/supervisord.conf  /etc/supervisord.conf
ADD scripts/setup_site.sh     /tmp/tools/scripts/
RUN /tmp/tools/scripts/setup_site.sh

######### Cleanup tools  #############
#---------------------------------------------
RUN \
   rm -rf /tmp/tools

VOLUME ["/var/www/html", "/home/shared"]

WORKDIR /var/www/html
ENTRYPOINT [ "/home/shared/scripts/start.sh" ]
#ENTRYPOINT [ "/bin/bash" ]
