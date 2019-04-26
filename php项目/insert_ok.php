<?php 
header("content-type:text/html;charset=utf-8");		//设置文件编码
include("conn/conn.php");							//包含数据库连接文件
if(isset($_POST['Submit']) and $_POST['Submit']=="提交"){		//判断提交按钮是否存在
	$sort=$_POST['sort'];					//定义类别变量
	$talk=$_POST['talk'];					//定义语言变量
	$books=$_POST['books'];					//定义书名变量
	$sysnopsis=$_POST['sysnopsis'];			//定义简介变量
	$catalog=$_POST['catalog'];				//定义目录变量
	$cata=str_replace(chr(13),"<br>",$catalog);		//保留目录中的换行符
	$bookpath=$_POST['bookpath'];			//定义文稿路径变量
	$programpath=$_POST['programpath'];		//定义程序路径变量
	$videopath=$_POST['videopath'];			//定义录像路径变量
	$date=date('Y-m-d');					//定义时间变量
	$insert=$conn->query("insert into tb_book(sort,talk,books,sysnopsis,catalog,bookpath,programpath,videopath,date) values('$sort','$talk','$books','$sysnopsis','$cata','$bookpath','$programpath','$videopath','$date')");		//执行添加操作
	//echo mysqli_error();
	if($insert){							//判断添加语句是否执行成功
		echo "<script>alert('添加成功！');window.location.href='index.php'</script>";			//输出添加成功提示
	}else{
		echo "<script>alert('添加失败！');window.location.href='insert.php'</script>";		//输出添加失败提示
	}
}
?>




