<?php
session_start();		//调用session_start()函数，声明session
header("content-type:text/html;charset=utf-8");			//设置页面编码
if(isset($_POST['submit1'])){
    if($_POST['isaccepted']==0){
 echo "<script>alert('请同意服务条款');window.location.href='login.php';</script>";
 if(!preg_match("/^[A-Za-z0-9]+$/",$_POST['user']))
 echo "<script>alert('用户名只能是英文和数字');window.location.href='login.php';</script>";
 if(!preg_match("/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,12}$/",$_POST['pwd']))
 echo "<script>alert('密码强度不够，要求6-12大小写字母和数字');window.location.href='login.php';</script>";
 if($_POST['pwd1']!=$_POST['pwd'])
 echo "<script>alert('确认密码和密码不一致');window.location.href='login.php';</script>";
 if(!preg_match("/^[\x{4e00}-\x{9fa5}]{2,3}$/u",$_POST['name']))
 echo "<script>alert('真实姓名只能是汉字');window.location.href='login.php';</script>";
 if(!preg_match("/^[1-9][0-9]{4,14}$/",$_POST['qq']))
 echo "<script>alert('qq只能为首位不能是0， 5-11位的数字 ,不能有字母');window.location.href='login.php';</script>";
 if(!preg_match("/^[a-zA-Z]{1}[-_a-zA-Z0-9]{5,19}$/",$_POST['weixin']))
 echo "<script>alert('微信只能是大小写字母开头，后跟5-19个字母数字或下划线');window.location.href='login.php';</script>";
 if(!preg_match("/^[\w_-]+@[\w_-]+(\.[\w_-]+)+$/",$_POST['email']))//\w表示[a-zA-Z0-9]
 echo "<script>alert('电子邮箱格式不对');window.location.href='login.php';</script>";
 if(!preg_match("/^((13[0-9])|(14[5,7])|(15[0-3,5-9])|(17[0,3,5-8])|(18[0-9])|166|198|199|(147))\\d{8}$/",$_POST['phone']))
 echo "<script>alert('手机号码格式不对');window.location.href='login.php';</script>"; 
    }
    else 
    {include("conn/conn.php");								//包含数据库连接文件
       if(isset($_POST['user']) and isset($_POST['pwd']) and isset($_POST['gender']) and isset($_POST['name']) and isset($_POST['qq']) and isset($_POST['weixin']) 
    and isset($_POST['email']) and isset($_POST['phone'])){		//判断用户名、密码等信息是否存在
        if($_POST['user']!=null and $_POST['pwd']!=null and $_POST['gender']!=null and $_POST['name']!=null and $_POST['qq']!=null and $_POST['weixin']!=null
            and $_POST['email']!=null and $_POST['phone']!=null){		//判断用户名、密码等信息是否不为空
		$select=$conn->query("select * from tb_login where user='".$_POST['user']."'");					//查询数据库中是存在该用户名
		if(mysqli_num_rows($select)==0){																			//判断查询结果是否为0
			$insert=$conn->query("insert into tb_login(user,pwd,gender,name,qq,weixin,email,phone) values('".$_POST['user']."','".$_POST['pwd']."','".$_POST['gender']."','".$_POST['name']."','".$_POST['qq']."','".$_POST['weixin']."','".$_POST['email']."','".$_POST['phone']."')");																							//如果用户名不存在，则执行添加操作
			if($insert){																						//判断添加操作是否执行成功
				echo "<script>alert('恭喜您！注册成功！');window.location.href='enter.php'</script>";				//输出注册成功提示
			}else{
				echo "<script>alert('注册失败！');window.location.href='login.php'</script>";						//否则输出注册失败提示
			}				
		}else{
			echo "<script>alert('用户名已存在，请重新输入！');window.location.href='login.php'</script>";			//输出用户名已存在提示
		}
	}else{		
		echo "<script>alert('请填写完整注册信息！');window.location.href='login.php'</script>";					//输出请填写完整信息提示
	}
}
    }
    }
?>