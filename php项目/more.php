<?php
session_start();
?>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>图书信息管理系统</title>
<style type="text/css">
body,td,th {
	font-size: 18px;
}


caption{
 font-size:25px;
 color: red;
 }
.STYLE1 {
	color: #FFFFFF;
	font-weight: bold;
	font-size: 14px;
}
.STYLE2 {color: #FFFFFF}
.STYLE3 {
	color: #FFFFFF;
	font-weight: bold;
}
a{
color:red;
}
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
}
a:hover {
	text-decoration: none;
}
a:active {
	text-decoration: none;
}
</style></head>
<script language="javascript">
function fetch(){
	if(form1.key.value==""){		//判断搜索文本框是否为空
		alert("请输入搜索关键字！");	//为空则弹出提示
		form1.value.select();
		return false;
	}
		return true;
}
</script>
<script language="javascript">
function press(opt){
//opt表示现有可选项的数目
	form1.select2.options[opt]=new Option(ok=(form1.select2.options[opt])?
	form1.select2.options[opt].innerText+String.fromCharCode(event.keyCode):
	String.fromCharCode(event.keyCode),ok)
	form1.select2.selectedIndex=opt;
}
function up(opt){
//opt表示现有可选项的数目
	if(form1.select2.options[opt]){
		if(event.keyCode==8){
			var str=form1.select2.options[opt].innerText;
			var len=str.length;
			form1.select2.options[opt].innerText=str.substring(0,len-1);
            if(form1.select2.options[opt].innerText==""){
                form1.select2.remove(opt);
                form1.select2.selectedIndex=1;
            };
        }
        if(event.keyCode==32){
            form1.select2.options[opt].innerText+=" ";
        }
    }
}
</script>
<body>
<?php
include("conn/conn.php");
$select=$conn->query("select * from tb_book");								//查询所有图书信息，供搜索使用
$array=mysqli_fetch_array($select);												//获取所有图书信息
if(isset($_GET['talk1'])){
	$talk=$_GET['talk1'];
	$select1=$conn->query("select * from tb_book where talk='$talk'");
}
?>
<table width="1000" height="688" border="0" align="center" cellpadding="0" cellspacing="0" id="__01">
  <tr>
    <td rowspan="6"><img src="images/5.jpg" width="100" height="688" alt="" /></td>
    <td width="800" height="119" valign="baseline" background="images/1.jpg"><div align="right" class="STYLE1">
      <br><br><br><br><br><p  class="STYLE2"><a href="enter.php">登录</a> <a href="login.php">注册</a></p>
    </div></td>
    <td rowspan="6"><img src="images/5.jpg" width="100" height="688" alt="" /></td>
  </tr>
  <tr>
    <td width="800" valign="bottom"><table width="800">
      <tr>
    <td width="28%"><script type="text/javascript">
document.write("<span id='labtime' width='120px' font-size='9pt'></span>")
setInterval("labtime.innerText=new Date().toLocaleString()",1000)
</script></td>
        <td width="15%"><div align="center"><a href="index.php">首页</a></div></td>
        <td width="15%"> <div align="center"><a href="insert.php">图书信息添加</a><a href="update.php"></a></div></td>
        <td width="600"><div align="center"><a href="update.php">图书信息管理</a></div></td>
       <?php
	   if(isset($_SESSION['user'])){			//判断session是否存在
	   ?>
		<td width="400"><div align="right"><a href="stop.php"></a>欢迎您：<?php echo $_SESSION['user'];?></div></td>
		<td width="5%"><div align="right"><a href="stop.php">退出</a></div></td>
		<?php
		}
		?>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td width="800" height="30" align="center" bgcolor="#ECC647"><table width="758" height="15" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="206"><div align="right" class="STYLE2">图书搜索：</div></td>
        <td width="159"><table>
          <form id="list" name="list" method="post">
            <tr>
       <td width="125" align="left" valign="middle"><select name="select" onchange="javascript:list.submit()">
                  <option value="" selected="selected">请选择</option>
                  <option value="Famous_Id">类别</option>
                  <option value="Famous_Ids">语言</option>
                  <option value="boo_name">书名</option>
                  <option value="jianjie">简介</option>
                  <option value="mulu">目录</option>
              </select></td>
            </tr>
          </form>
        </table>
        </td>
        <td width="295">
		<table width="254" height="15" border="0" cellspacing="0" cellpadding="0">
				    <form id="form1" name="form1" method="post" action="select.php" >
          <tr>
            <td width="110"><select name="select2" onkeypress="press(3)" onkeyup="up(3)">
                <option selected="selected">请选择</option>
                <?php
		if(isset($_POST['select'])){			//判断搜索条件是否存在
			$select=$_POST['select'];			//为搜索条件定义变量名称
			if($select=="Famous_Id"){			//判断搜索条件是否为“类别”
				$sel=$conn->query("select * from tb_sort");			//查询图书类别
		  		while($arr=mysqli_fetch_array($sel)){						//循环输出图书类别信息
		  ?>
                <option value="<?php echo $arr['sort'];?>"><?php echo $arr['sort'];?></option>
                <?php 
				}
		    }else if($select=="Famous_Ids"){		//判断搜索条件是否为“语言”
			  	$sel1=$conn->query("select * from tb_program");			//查询图书语言
		  		while($arr1=mysqli_fetch_array($sel1)){							//循环输出图书语言信息
		  ?>
                <option value="<?php echo $arr1['talk'];?>" selected="selected"><?php echo $arr1['talk'];?></option>
                <?php
				}
		    }else{
		        ?>
                <option value="<?php echo $arr1['talk'];?>" selected="selected"></option>
                <?php 
			  }
		}
			  ?>
              </select>
            </td>
            <td width="144"><input type="submit" value="搜索" name="imageField"  onclick="return fetch();" /></td>
          </tr>
		 </form>
        </table>
		</td>
        <td width="98">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td width="800" height="430" align="center" valign="top"  background="images/6.jpg" ><table width="672" height="124" border="0" cellpadding="0" cellspacing="0"><caption>类所有图书信息</caption>
      <tr>
        <td height="49" colspan="2" valign="bottom"><div align="right" class="STYLE2"><?php echo $talk;?></div></td>
        <td width="94">&nbsp;</td>
        <td width="269">&nbsp;</td>
      </tr>
      <tr>
        <td width="157" height="15">&nbsp;</td>
        <td width="152">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="36" colspan="3"><div align="center">书名</div></td>
        <td><div align="center">上传日期</div></td>
      </tr>
	  <?php 
	  while($array1=mysqli_fetch_array($select1)){
	  ?>
      <tr>
        <td height="24" colspan="3" align="center"><a href="define.php?id=<?php echo $array1['id'];?>"><?php echo $array1['books'];?></a></td>
        <td align="center"><?php echo $array1['date'];?></td>
      </tr>
	  <?php
	  }
	  ?>
    </table></td>
  </tr>
  <tr>
    <td><img src="images/3.jpg" width="800" height="80" alt="" /></td>
  </tr>
</table>
</body>
</html>
