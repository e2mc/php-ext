php 中的字符串 索引

$s = 'abcdefg';

$s[0] 

	utf8中一个英文字符占一个字节    索引也按照字节来

$s = '优品';
	
	utf8中一个汉字占三个字节或四个字节

$s[0] = 2;

	echo $s;  // 输出 '2品';

$s[6] = 2; 
	
	echo $s; // 输出  ‘优品2’;

$s[8] = 2;

	echo $s; // 输出  '优品 2';
