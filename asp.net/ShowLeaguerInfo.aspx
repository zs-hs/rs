<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowLeaguerInfo.aspx.cs" Inherits="ShowLeaguerInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table cellpadding="0" cellspacing="0" class="txt" style="width: 520px; height: 116px" background="images/13.jpg">
            <tr>
                <td align="right" style="width: 100px">
                    信息类别：</td>
                <td align="left" style="width: 336px">
                    <asp:TextBox ID="txtType" runat="server" Width="140px" disabled="true"></asp:TextBox></td>
                <td style="width: 89px">
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 100px">
                    信息标题：</td>
                <td align="left" style="width: 336px">
                    <asp:TextBox ID="txtTitle" runat="server" Width="337px"></asp:TextBox></td>
                <td style="width: 89px">
                    </td>
            </tr>
            <tr>
                <td align="right" style="width: 100px">
                    信息内容：</td>
                <td align="left" style="width: 336px">
                    <asp:TextBox ID="txtInfo" runat="server" Height="147px" TextMode="MultiLine" Width="360px"></asp:TextBox></td>
                <td style="width: 89px">
                    </td>
            </tr>
            <tr>
                <td align="right" style="width: 100px">
                    联系人：</td>
                <td align="left" style="width: 336px">
                    <asp:TextBox ID="txtLinkMan" runat="server"></asp:TextBox></td>
                <td style="width: 89px">
                    </td>
            </tr>
            <tr>
                <td align="right" style="width: 100px; height: 24px">
                    联系电话：</td>
                <td align="left" style="width: 336px; height: 24px">
                    <asp:TextBox ID="txtTel" runat="server"></asp:TextBox>
                    </td>
                <td style="width: 89px; height: 24px">
                    </td>
            </tr>
         <tr>
                <td align="right" style="width: 100px; height: 24px">
                    时间：</td>
                <td align="left" style="width: 336px; height: 24px">
                    <asp:TextBox ID="txtdate" runat="server"></asp:TextBox>
                    </td>
                <td style="width: 89px; height: 24px">
                    </td>
            </tr>
            <tr>
                <td style="width: 85px; height: 43px">
                
                <asp:Button ID="Button1" runat="server" Text="修改" OnClick="Button1_Click" />
                
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
