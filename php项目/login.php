<!DOCTYPE html>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>注册</title>
<style type="text/css">
body,td,th {
	font-size: 22px;
}
</style>
</head>
<body>
<form id="form2" name="form2" method="post" action="login_ok.php" onsubmit="return checkInfo()" >
<table width="778" height="255" border="0" align="center" cellpadding="0" cellspacing="0" id="__01">
<tr>
<td colspan="6" width="778" height="128" valign="baseline" background="images/2.jpg">
 <tr>
    <td width="778" valign="bottom"  bgcolor="#ECC647"><table width="778">
<div>当前页面>>>注册页面</div></table></td></tr>
</td></tr>
<tr>
<td  rowspan="5" width="778" height="127" valign="baseline" background="images/4.jpg">
<br>
    <div align="center">用&nbsp;&nbsp;户&nbsp;&nbsp;名：<input type="text" name="user" id="user"/></div>
    <div align="center">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：<input name="pwd" type="password" id="pwd" size="21"  /></div>
    <div align="center">确认密码：<input name="pwd1" type="password" id="pwd1" size="21"  /></div>
    <div >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;
    性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：<input type="radio" name="gender" value="男" checked/>男<input type="radio" name="gender" value="女"/>女</div>
    <div align="center">真实姓名：<input name="name" type="text" id="name" /></div>
     <div align="center">q&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;q：<input type="text" name="qq" id="qq"/></div>
     <div align="center">微&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;信：<input type="text" name="weixin" id="weixin"/></div>
      <div align="center">电子邮箱：<input type="text" name="email" id="email"/></div>
       <div align="center">电&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话：<input type="text" name="phone" id="phone"/></div>
       
<div align="right" style="width: 47%;float: left;" >服务条款：</div>
<div  align="left" style="width:53%;float:right;";><textarea rows="10" cols="30" >
用户应自行诚信向本站提供注册资料，用
户完成注册申请手续后，即成为本服务系
统的合法用户。用户应提供及时、详尽、
准确及合法有效的个人资料，并不断更新
注册资料，符合及时、详尽、准确及合法
有效的要求。应当通过真实身份信息认证
注册账号，且用户提交的账号名称和简介
等注册信息中不得出现违法和不良信息，
经本服务系统审核，如存在上述情况，本
服务系统将不予注册；同时，在注册后，
如发现用户以虚假信息骗取账号名称注册
、简介等注册信息存在违法和不良信息的
，本服务系统有权不经通知单方采取限期
改正、暂停使用、注销登记、收回等措施
。本服务不公开用户的电子邮箱、手机号
码等个人隐私信息， 除以下情况外:
（1）用户授权透露这些信息.
（2）相应的法律及程序要求提供用户的个人资料。

</textarea></div>
<br><br><br><br><br><br><br>
<div align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;接受协议：<input type="radio" name="isaccepted" value="1"/>接收条款<input type="radio" name="isaccepted" value="0"/>不接收条款</div>
    <div align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="submit" name="submit1" value="注册"/ ><input type="reset" name="reset" value="取消" onclick="location.href='./index.php'"/></a></div>
    </td></tr>
    
      </table>
 
</form>
<script type="text/javascript">
function checkInfo()
{//验证用户名
	var reguser=RegExp("^[A-Za-z0-9]+$");
var usename=document.getElementsByName("user")[0].value;
if(!reguser.test(usename))
{alert("用户名只能是英文和数字")
return false;}
//验证密码
var regpwd=/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,12}$/;
var password=document.getElementsByName("pwd")[0].value;
if(!regpwd.test(password))
{alert("密码强度不够，要求6-12大小写字母和数字");
return false;}
//验证确认密码
var rrpwd=document.getElementsByName("pwd1")[0].value;
if(rrpwd!=password)
{alert("确认密码和密码不一致");
return false;
}
ar reguser1=RegExp("^[A-Za-z]+$");
var usename1=document.getElementsByName("name")[0].value;
if(!reguser.test(usename1))
{alert("真实姓名只能是英文")
return false;}
var regqq=/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,12}$/;
var qq=document.getElementsByName("qq")[0].value;
if(!regqq.test(qq))
{alert("qq要求6-12大小写字母和数字");
return false;}
var regwei=/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,12}$/;
var xin=document.getElementsByName("weixin")[0].value;
if(!regwei.test(xin))
{alert("weixin6-12大小写字母和数字");
return false;}
var regphone=/^[0-9]+$/;
var phone=document.getElementsByName("phone")[0].value;
if(!regphone.test(phone))
{alert("电话数字");
return false;}
//验证电子邮箱
var redmail=new RegExp("^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$");
var email=document.getElementsByName("email")[0].value;
if(!regmail.test(email))
{alert("电子邮箱格式不正确");
return false;
}
return true;
}
</script>
</body>
</html>
