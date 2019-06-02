<%@ Control Language="C#" AutoEventWireup="true" CodeFile="InfoSearch.ascx.cs" Inherits="UserControl_InfoSearch" %>
<table align="left" cellpadding="0" cellspacing="0" width="178" height="208" >
    <tr><td background="images/end.gif" height="10" width="178"></td></tr>
    <tr><td background="images/1.jpg" height="5" width="178" ><table width="178" >
    <tr><td width="40">&nbsp;</td><td height="5" style="font-size:20px">信息搜索<br /></td></tr>
         </table></td></tr>
   <tr><td background="images/line.gif" width="178" height="1"></td></tr> 
    <tr><td vlign="top">
        <table><tr>
        <td width="178">
            &gt;&gt;&gt;输入关键字</td></tr>
         <tr><td background="images/line.gif" width="178" ></td></tr></table>
                      
            <asp:TextBox ID="txtKey" runat="server" CssClass="TextBox" Width="178px"></asp:TextBox>
            <a href="#"></a>
        <table><tr><td background="images/line.gif" width="178" valign="top"></td></tr></table>
           &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="搜索" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="帮助" PostBackUrl="Help.aspx"/>
            <a href="#"></a></td>
    </tr>
</table>
