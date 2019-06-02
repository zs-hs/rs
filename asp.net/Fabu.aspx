<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Fabu.aspx.cs" Inherits="Fubu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link href="css/css.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <br /><br /><br />
    <table style="width: 778px; height: 116px" cellpadding="0" cellspacing="0" class="txt" align="center">
                   <tr>
                        <td style="width: 85px" align="right">
                            信息类别：</td>
                        <td style="width: 336px" align="left">
                            <asp:DropDownList ID="DropDownList1" runat="server" Width="121px">
                                <asp:ListItem>招聘信息</asp:ListItem>
                                <asp:ListItem>求职信息</asp:ListItem>
                                <asp:ListItem>培训信息</asp:ListItem>
                                <asp:ListItem>家教信息</asp:ListItem>
                                <asp:ListItem>公寓信息</asp:ListItem>
                                <asp:ListItem>物品求购</asp:ListItem>
                                <asp:ListItem>物品出售</asp:ListItem>
                                <asp:ListItem>求兑出兑</asp:ListItem>
                                <asp:ListItem>车辆信息</asp:ListItem>
                                <asp:ListItem>寻求合作</asp:ListItem>
                                <asp:ListItem>企业广告</asp:ListItem>
                            </asp:DropDownList></td>
                        <td style="width: 89px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 85px" align="right">
                            信息标题：</td>
                        <td style="width: 336px" align="left">
                            <asp:TextBox ID="txtTitle" runat="server" Width="337px"></asp:TextBox></td>
                        <td style="width: 89px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTitle"
                                ErrorMessage="* 必填项"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 85px" align="right">
                            信息内容：</td>
                        <td style="width: 336px" align="left">
                            <asp:TextBox ID="txtInfo" runat="server" Height="147px" TextMode="MultiLine" Width="360px"></asp:TextBox></td>
                        <td style="width: 89px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtInfo"
                                ErrorMessage="* 必填项"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 85px" align="right">
                            联系人：</td>
                        <td style="width: 336px" align="left">
                            <asp:TextBox ID="txtLinkMan" runat="server"></asp:TextBox></td>
                        <td style="width: 89px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtLinkMan"
                                ErrorMessage="* 必填项"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 85px; height: 24px;" align="right">
                            联系电话：</td>
                        <td style="width: 336px; height: 24px;" align="left">
                            <asp:TextBox ID="txtTel" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtTel"
                                ErrorMessage="格式：(3/4位)-（7/8位）" ValidationExpression="^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$"></asp:RegularExpressionValidator></td>
                        <td style="width: 89px; height: 24px;">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtTel"
                                ErrorMessage="* 必填项"></asp:RequiredFieldValidator></td>
                    </tr>
               <tr><td style="width: 85px; height: 24px;" align="right"></td>
                   <td style="width: 336px; height: 24px;" align="left">
                   <asp:Button ID="Button1" runat="server" Text="发布" OnClick="Button1_Click"/>
                   <asp:Button ID="Button2" runat="server" Text="取消" OnClick="Button2_Click" />
                                </td></tr></table>
    </form>
</body>
</html>
