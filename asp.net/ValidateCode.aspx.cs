﻿using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ValidateCode : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        string checkCode = CreateRandomCode(4);
        Session["CheckCode"] = checkCode;
        CreateImage(checkCode);
    }
    //产生４个随即字符
    private string CreateRandomCode(int codeCount)
    {
        string allChar = "0,1,2,3,4,5,6,7,8,9,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,W,V,X,Y,Z,a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z";
        string[] allCharArray = allChar.Split(',');　　//以","为分割符把allChar拆分成数据；
        string randomCode = "";
        int temp;
        Random rand = new Random();
        for (int i = 0; i < codeCount; i++)
        {
            int t = rand.Next(61);
            temp = t;
            randomCode += allCharArray[t];
        }
        return randomCode;
    }
    //给随即字符添加干扰
    private void CreateImage(string checkCode)
    {
        int iwidth = (int)(checkCode.Length * 20);
        //封装 GDI+ 位图，此位图由图形图像及其属性的像素数据组成  .指定宽度和高度。以象素为单位
        System.Drawing.Bitmap image = new System.Drawing.Bitmap(iwidth, 30);
        //封装一个 GDI+ 绘图图面。无法继承此类.  从指定的 Image 创建新的 Graphics
        Graphics g = Graphics.FromImage(image);
        //font封装在特定设备上呈现特定字体所需的纹理和资源  (字体，大小，字体样式)
        Font f = new System.Drawing.Font("Arial", 16, System.Drawing.FontStyle.Bold);
        /**Brush定义用于填充图形形状（如矩形、椭圆、饼形、多边形和封闭路径）的内部的对象
        SolidBrush(Color.White)初始化指定颜色 指定画笔颜色为白色**/
        Brush b = new System.Drawing.SolidBrush(Color.White);
        //清除整个绘图面并以指定背景色填充
        g.Clear(Color.Black);
        /**在指定位置并且用指定的 Brush 和 Font 对象绘制指定的文本字符串
        (指定的字符串，字符串的文本格式,绘制文本的颜色和纹理,所绘制文本的左上角的 x 坐标,坐标)**/
        g.DrawString(checkCode, f, b, 3, 3);
        //定义用于绘制直线和曲线的对象。(指示此 Pen 的颜色,指示此 Pen 的宽度的值)
        Pen blackPen = new Pen(Color.Blue, 0);

        Random rand = new Random();
        for (int i = 0; i < 3; i++)
        {
            //随即高度
            int y = rand.Next(image.Height);
            //绘制一条连接由坐标对指定的两个点的线条    
            //(线条的颜色、宽度和样式,第一个点的 x 坐标,第一个点的 y 坐标,第二个点的 x 坐标,第二个点的 y 坐标)
            g.DrawLine(blackPen, 0, y, image.Width, y);
        }

        //创建存储区为内存的流
        System.IO.MemoryStream ms = new System.IO.MemoryStream();
        //将此图像以指定的格式保存到指定的流中(将其保存在内存流中,图像的格式)
        image.Save(ms, System.Drawing.Imaging.ImageFormat.Jpeg);
        //清除缓冲区将流中的内容输出
        Response.ClearContent();
        //获取输出流的类型
        Response.ContentType = "image/Jpeg";
        //将二进制字符串写入HTTP输出流
        Response.BinaryWrite(ms.ToArray());
        g.Dispose();
        image.Dispose();
    }
}
