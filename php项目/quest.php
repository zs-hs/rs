<?php
session_start();
//产生一个随机的字符串验证码
$checkcode="";
for ($i=0;$i<4;$i++){
    $checkcode.=dechex(rand(0,15)); //string dechex ( int $number ) 返回一字符串，包含有给定 number 参数的十六进制表示
} 

//将随机验证码保存到session中
$_SESSION['myCheckCode']=$checkcode;
//创建图片，并把上面产生的随机验证码画上去
$img=imagecreatetruecolor(100, 20);
//背景默认是黑色，可以自己设定背景颜色
$bgcolor=imagecolorallocate($img, 0, 0, 0);
//imagefill() 在 image 图像的坐标 x，y（图像左上角为 0, 0）处用 color 颜色执行区域填充（即与 x, y 点颜色相同且相邻的点都会被填充）。
imagefill($img, 0, 0, $bgcolor);

//创建新的颜色 imagecolorallocate — 为一幅图像分配颜色
//imagecolorallocate() 返回一个标识符，代表了由给定的 RGB 成分组成的颜色。
//red，green 和 blue 分别是所需要的颜色的红，绿，蓝成分。这些参数是 0 到 255 的整数或者十六进制的 0x00 到 0xFF。
//imagecolorallocate() 必须被调用以创建每一种用在 image 所代表的图像中的颜色
$white=imagecolorallocate($img, 255, 255, 255);
$blue=imagecolorallocate($img, 0, 0, 255);
$red=imagecolorallocate($img, 255, 0, 0);
$green=imagecolorallocate($img, 255, 0, 0);
//画出干扰线段
for($i=0;$i<10;$i++){
  //  bool imageline( resource $image , int $x1 , int $y1 , int $x2 , int $y2 , int $color ){
 //imageline() //用 color 颜色在图像 image 中从坐标 x1，y1 到 x2，y2（图像左上角为 0, 0）画一条线段。
 imageline($img, rand(0, 100), rand(0, 20), rand(0, 100), rand(0, 20), imagecolorallocate($img, rand(0, 255), rand(0, 255), rand(0, 255)));
    }
    for($i=0;$i<200;$i++){
        //设置点的颜色，50-200颜色比数字浅，不干扰阅读
        $pointcolor = imagecolorallocate($img,rand(50,200), rand(50,200), rand(50,200));    }
//画出噪点
  //      for($i=0;$i<10;$i++){}
//把上面产生的四个随机值，字符串画上去
//bool imagestring ( resource $image , int $font , int $x , int $y , string $s , int $col )
//imagestring() //用 col 颜色将字符串 s 画到 image 所代表的图像的 x，y 坐标处（这是字符串左上角坐标，整幅图像的左上角为 0，0）。
//如果 font 是 1，2，3，4 或 5，则使用内置字体。
imagestring($img, rand(2, 5), rand(2, 60), rand(2, 5), $checkcode, $white);
header("content-type:image/png");
//imagepng() 将 GD 图像流（image）以 PNG 格式输出到标准输出（通常为浏览器），或者如果用 filename 给出了文件名则将其输出到该文件。
imagepng($img);
?>
