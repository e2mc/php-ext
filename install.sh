#!/bin/bash	
sudo apt-get instatll g++
sudo apt-get install ncurses-dev
mkdir /home/vagrant/local
mkdir /home/vagrant/src
mkdir /home/vagrant/bin
cd /home/vagrant/src/
#php
wget http://cn2.php.net/distributions/php-5.5.12.tar.gz
tar zxvf ~/src/php-5.5.12.tar.gz
cd php-5.5.12
./configure \
    --prefix=/home/vagrant/local/php \
    --enable-debug \
    --enable-maintainer-zts \
    --with-config-file-path=/home/vagrant/local/php/etc \
    --enable-fpm
make && make install 
cp ./php.ini-development ~/local/php/etc/php.ini
#mysql
wget http://cdn.mysql.com/Downloads/MySQL-5.6/mysql-5.6.17.tar.gz
tar zxvf ~/src/mysql-5.6.17.tar.gz
cd mysql-5.6.17
cmake \
    -DCMAKE_INSTALL_PREFIX=/home/vagrant/local/mysql \
    -DMYSQL_DATADIR=/home/vagrant/local/mysql/data \
    -DSYSCONFDIR=/home/vagrant/local/mysql/etc \
    -DWITH_MYISAM_STORAGE_ENGINE=1 \
    -DWITH_INNOBASE_STORAGE_ENGINE=1 \
    -DWITH_MEMORY_STORAGE_ENGINE=1 \
    -DWITH_READLINE=1 \
    -DMYSQL_UNIX_ADDR=/home/vagrant/local/mysql/mysqld.sock \
    -DMYSQL_TCP_PORT=3306 \
    -DENABLED_LOCAL_INFILE=1 \
    -DWITH_PARTITION_STORAGE_ENGINE=1 \
    -DEXTRA_CHARSETS=all \
    -DDEFAULT_CHARSET=utf8 \
    -DDEFAULT_COLLATION=utf8_general_ci
#nginx
wget http://nginx.org/download/nginx-1.6.0.tar.gz
tar zxvf nginx-1.6.0.tar.gz
wget ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/pcre-8.35.tar.gz
tar zxvf pcre-8.35.tar.gz
wget http://cznic.dl.sourceforge.net/project/libpng/zlib/1.2.8/zlib-1.2.8.tar.gz
tar zxvf zlib-1.2.8.tar.gz
cd nginx-1.6.0
./configure \
    --prefix=/home/vagrant/local/nginx \
    --with-pcre=/home/vagrant/src/pcre-8.35 \
    --with-zlib=/home/vagrant/src/zlib-1.2.8.tar.gz
make 
make install
