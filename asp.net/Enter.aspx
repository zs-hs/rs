<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Enter.aspx.cs" Inherits="Enter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>供求信息－－－后台登录</title>
    <link href="Css/css.css" rel="stylesheet" type="text/css" />
</head>
<body >
    <form id="form1" runat="server">
          <br /><br /><br />
       <table align="center" cellpadding="0" cellspacing="0" height="100" width="800" background="images/6.jpg">
        </table>
        <table align="center" cellpadding="0" cellspacing="0" height="20" width="800" background="images/end.gif">
        </table>
          <table align="center" cellpadding="0" cellspacing="0" height="400" width="800" border="1" background="images/7.jpg">
             
     <tr>
<td  width="800" height="127" align="right" >
    <table cellpadding="0" cellspacing="0" align="center" >
      
          <tr> <td height="100" style="font-size:30px" colspan="2" align="center">  &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
               &nbsp;&nbsp;&nbsp;&nbsp;登录
         </td>  </tr>
           <tr><td align="right"> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;用户名:</td>
              <td><asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUser" ErrorMessage="* 必填项"></asp:RequiredFieldValidator>
                 &nbsp;&nbsp;&nbsp;&nbsp; </td> </tr> 
     <tr><td align="right">密&nbsp;&nbsp;&nbsp;码:</td>
           <td> <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" Width="150"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPwd" ErrorMessage="* 必填项"></asp:RequiredFieldValidator> 
                 </td> </tr>
           <tr><td align="right">验证码:</td>
                      <td> <asp:TextBox ID="txtCheckCode" runat="server" Width="150px"></asp:TextBox>
               <asp:Image ID="Image1" runat="server" Height="19px" />
            <asp:LinkButton ID="lnkbtnRe" runat="server" Font-Size="9pt" OnClick="LinkButton2_Click">看不清</asp:LinkButton>
                  </td> </tr>   
                  <tr><td colspan="2" align="center"> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="登录" OnClick="Button1_Click"/>
                <asp:Button ID="Button2" runat="server" Text="取消" OnClick="Button2_Click"/> </td></tr></table>
        &nbsp;&nbsp;&nbsp;&nbsp; </td></tr>
          </table>
   </form>
</body>
</html>
