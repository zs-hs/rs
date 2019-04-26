<?php
header("Content-type:text/html;charset=utf-8");
include("conn/conn.php");
if(isset($_POST['Submit']) and $_POST['Submit']=="提交"){
	$update=$conn->query("update tb_book set sort='".$_POST['sort']."',talk='".$_POST['talk']."',books='".$_POST['books']."',sysnopsis='".$_POST['sysnopsis']."',catalog='".$_POST['catalog']."',bookpath='".$_POST['bookpath']."',programpath='".$_POST['programpath']."',videopath='".$_POST['videopath']."' where id='".$_POST['id']."'");
	if($update){
		echo "<script>alert('修改成功！');window.location.href='update.php'</script>";
	}else{
		echo "<script>alert('修改失败！');window.location.href='update_ok.php'</script>";
	}
}
?>