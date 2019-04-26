<?php
session_start();		//调用session_start()函数，声明session
header("content-type:text/html;charset=utf-8");	
if(isset($_POST['submit'])){
        if($_POST['username']!=$_SESSION['myCheckCode']){
       echo "<script>alert('验证码不正确！');window.location.href='enter.php';</script>";
}

else //设置文件编码
{include("conn/conn.php");								//包含数据库连接文件
if(isset($_POST['user']) and isset($_POST['pwd'])){				//判断用户名和密码是否存在
	if($_POST['user']!=null and $_POST['pwd']!=null){			//判断用户名和密码是否为空
		$select=$conn->query("select * from tb_login where user='".$_POST['user']."' and pwd='".$_POST['pwd']."'");	//查询用户名和密码
		if(mysqli_num_rows($select)==1){							//判断查询结果是否为1
			echo "<script>alert('登录成功！');window.location.href='index.php';</script>";		//输出登录成功提示
			$_SESSION['user']=$_POST['user'];				//定义session变量
		}else{
			echo "<script>alert('用户名和密码不正确！');window.location.href='enter.php';</script>";	//输出用户名和密码不正确提示
		}
	}else{
		echo "<script>alert('请输入用户名和密码！');window.location.href='enter.php';</script>";		//输出请输入用户名和密码提示
	}
}
}
}
?>