<?php
$conn=mysqli_connect("localhost","root","123456","db_book");			//连接数据库服务器
$conn->query("set names utf8;");						//对数据库中编码格式进行转换，避免出现中文乱码的问题
?>