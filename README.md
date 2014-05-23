php-ext
=======

php扩展开发

开发前的准备工作

* vagant创建虚拟机  
	
		http://www.vagrantbox.es/
	
* 虚拟机中源码安装php 

 		
 		sudo apt-get install libxml2-dev
 		./configure --prefix=/home/vagrant/local/php --enable-debug --enable-maintainer-zts --with-config-file-path=/home/vagrant/local/php/etc
 		make 
		make install 
 		make clean

* 生成扩展框架
	
		cd php-5.5.10/ext/
		./ext_skel --extname=e2mc     // 1
		cd e2mc
		vim .config.m4                // 2
		vim php_e2mc.h                // 3
		vim e2mc.c                    // 4
		/home/vagrant/local/php/bin/phpize 
		./configure --with-php-config=/home/vagrant/local/php/bin/phpize
		make 
		make install
		vim /home/vagrant/local/php/etc/php.ini // 5
	
  说明
     
   1.生成扩展框架
   
   2.打开文件后去掉 dnl ，获得下面的信息：
	PHP_ARG_ENABLE(e2mc, whether to enable e2mc support,
		[  --enable-e2mc           Enable e2mc support])
	保存退出.
   
   3.找到：PHP_FUNCTION(confirm_e2mc_compiled); ，新增一行：
PHP_FUNCTION(e2mc_test); 
保存退出。

   4.再到 heiyeluren.c 文件最后面增加如下代码：
		
		PHP_FUNCTION(e2mc_test)
		{
    		char *arg = NULL;
    		int arg_len, len;
    		char *strg;
    		if (zend_parse_parameters(ZEND_NUM_ARGS() TSRMLS_CC, "s", &arg, &arg_len) == FAILURE) {
        		return;
    		}
    		len = spprintf(&strg, 0, "Your input string: %s\n", arg);
    		RETURN_STRINGL(strg, len, 0);
		}
保存退出。
 
   5.增加e2mc.so

     				
		
	
 
 