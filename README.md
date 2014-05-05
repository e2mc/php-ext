php-ext
=======

php扩展开发

开发前的准备工作

* vagant创建虚拟机  
* 虚拟机中源码安装php 
 
 
 		./configure --prefix=/home/vagrant/local/php --enable-debug --enable-maintainer-zts --with-config-file-path=/home/vagrant/local/php/etc
 		make 
		make install 
 		make clean
 
 