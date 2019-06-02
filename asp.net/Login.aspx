<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Css/css.css" rel="stylesheet" type="text/css" />
    
</head>
<body>
    <form id="form1" runat="server">
<br /><br /><br />
       <table align="center" cellpadding="0" cellspacing="0" height="100" width="800" background="images/6.jpg">
        </table>
        <table align="center" cellpadding="0" cellspacing="0" height="20" width="800" background="images/end.gif">
        </table>
      <table align="center" cellpadding="0" cellspacing="0" height="400" width="800" background="images/8.jpg">
 <tr>
   <td  width="800" height="200" align="left" >
                <table cellpadding="0" cellspacing="0" align="center" weith="800" >
      
          <tr> <td height="50" style="font-size:30px" colspan="2" align="center">  &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
               &nbsp;&nbsp;&nbsp;&nbsp;注册
         </td>  </tr>
           <tr><td align="right" rowspan="2"> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
               &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 用户名:</td><td rowspan="2" valign="bottom" >
                <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUser"
                                                ErrorMessage="* 必填项"></asp:RequiredFieldValidator></td></tr>
                    <tr><td></td></tr>
                  <tr><td align="right">密&nbsp;&nbsp;&nbsp;&nbsp;码:</td><td >
                    <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPwd"
                                                ErrorMessage="* 必填项"></asp:RequiredFieldValidator></td></tr>
                   <tr><td align="right">性&nbsp;&nbsp;&nbsp;&nbsp;别:</td><td >
                        <asp:TextBox ID="txtSex" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtSex"
                                                ErrorMessage="* 必填项"></asp:RequiredFieldValidator>
                    </td></tr>
                        <tr><td align="right"  valign="top" >邮&nbsp;&nbsp;&nbsp;&nbsp;箱:</td><td  >
                                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server"
                                    ControlToValidate="txtEmail" ErrorMessage="格式不对" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td></tr>
                    
                                    <tr><td align="right" valign="top">
                                          q&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;q:</td><td >
                                             <asp:TextBox ID="TextQQ" runat="server"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidatorQQ" runat="server" ControlToValidate="TextQQ" ErrorMessage="格式不对" ValidationExpression="[1-9][0-9]{4,}"></asp:RegularExpressionValidator>
                                              </td></tr>
                                       <tr><td align="right" valign="top">
                                          电&nbsp;&nbsp;&nbsp;&nbsp;话:</td><td >
                                             <asp:TextBox ID="TextPhone" runat="server"></asp:TextBox>
                                           <asp:RegularExpressionValidator ID="RegularExpressionValidatorPhone" runat="server" ControlToValidate="TextPhone" ErrorMessage="格式不对" ValidationExpression="^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$"></asp:RegularExpressionValidator>
                                              </td></tr>
                       <tr><td colspan="2" align="center"><asp:RadioButtonList ID="radName" runat="server"  RepeatDirection="Horizontal" Width="225px" style="margin-left: 403px" >
                                       <asp:ListItem Selected="True">会员</asp:ListItem>
                                        <asp:ListItem>管理员</asp:ListItem>
                                    </asp:RadioButtonList></td></tr>                   
                   <tr><td colspan="2" align="center">
                                            <asp:Button ID="Button1" runat="server" Text="注册" OnClick="Button1_Click" style="margin-left: 380px" />
                                            <asp:Button ID="Button2" runat="server" Text="取消" OnClick="Button2_Click" />
                                           </td></tr>
                                            </td>
                                    </tr>
                                    </table>                       

   
    </form>
</body>
</html>
