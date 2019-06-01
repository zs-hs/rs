<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="BackGround_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <title>供求信息网「后台管理」</title>
    <link href="../Css/css.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <table id="__01"  cellpadding="0" cellspacing="0" height="598" width="1000" align="center" style="border:2px solid blue;" >
            <tr>
                <tr>
                <td  width="300" align="right" colspan="2" height="110" valign="bottom" background="../images/14.jpg">
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <asp:Button ID="Button1" runat="server" Text="退出" OnClick="Button1_Click" BorderColor="White" /></td>
            </tr>
            <tr>
                <td background="../images/2.jpg" height="27" width="136"></td>
                <td background="../images/1.jpg" height="27" width="655">
                    <table cellpadding="0" cellspacing="0" width="635">
                        <tr>
                            <td width="40">
                                &nbsp;</td>
                            <td  width="595">
                               &nbsp;供求信息网 &gt;&gt;&gt;后台管理系统
                            </td>
                           
                      </tr></table></td></tr>
            <tr><td background="../images/end.gif" height="15" width="1055" colspan="2"></td></tr>
            <tr>
                <td  colspan="2" height="420" valign="top">
                    <table cellpadding="0" cellspacing="0" style="width: 1000px" >
                        <tr>
                            <td style="width: 185px; height: 374px" align="center">
                                <asp:TreeView ID="TreeView1" runat="server" ImageSet="Arrows" Width="150px">
                                    <ParentNodeStyle Font-Bold="False" />
                                    <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
                                    <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px"
                                        VerticalPadding="0px" />
                                    <Nodes>
                                       <asp:TreeNode Text="招聘信息" Value="招聘信息">
                                            <asp:TreeNode Text="信息审核" Value="信息审核" NavigateUrl="~/BackGround/CheckInfo.aspx?KindName=招聘信息"
                                                Target="mainFrame"></asp:TreeNode>
                                            <asp:TreeNode Text="信息删除" Value="信息删除" NavigateUrl="~/BackGround/DeleteInfo.aspx?KindName=招聘信息"
                                                Target="mainFrame"></asp:TreeNode>
                                        </asp:TreeNode>
                                        <asp:TreeNode Text="求职信息" Value="求职信息">
                                            <asp:TreeNode Text="信息审核" Value="信息审核" NavigateUrl="~/BackGround/CheckInfo.aspx?KindName=求职信息"
                                                Target="mainFrame"></asp:TreeNode>
                                            <asp:TreeNode Text="信息删除" Value="信息删除" NavigateUrl="~/BackGround/DeleteInfo.aspx?KindName=求职信息"
                                                Target="mainFrame"></asp:TreeNode>
                                        </asp:TreeNode>
                                        <asp:TreeNode Text="培训信息" Value="培训信息">
                                            <asp:TreeNode Text="信息审核" Value="信息审核" NavigateUrl="~/BackGround/CheckInfo.aspx?KindName=培训信息"
                                                Target="mainFrame"></asp:TreeNode>
                                            <asp:TreeNode Text="信息删除" Value="信息删除" NavigateUrl="~/BackGround/DeleteInfo.aspx?KindName=培训信息"
                                                Target="mainFrame"></asp:TreeNode>
                                        </asp:TreeNode>
                                        <asp:TreeNode Text="家教信息" Value="家教信息">
                                            <asp:TreeNode Text="信息审核" Value="信息审核" NavigateUrl="~/BackGround/CheckInfo.aspx?KindName=家教信息"
                                                Target="mainFrame"></asp:TreeNode>
                                            <asp:TreeNode Text="信息删除" Value="信息删除" NavigateUrl="~/BackGround/DeleteInfo.aspx?KindName=家教信息"
                                                Target="mainFrame"></asp:TreeNode>
                                        </asp:TreeNode>
                                        <asp:TreeNode Text="公寓信息" Value="公寓信息">
                                            <asp:TreeNode Text="信息审核" Value="信息审核" NavigateUrl="~/BackGround/CheckInfo.aspx?KindName=公寓信息"
                                                Target="mainFrame"></asp:TreeNode>
                                            <asp:TreeNode Text="信息删除" Value="信息删除" NavigateUrl="~/BackGround/DeleteInfo.aspx?KindName=公寓信息"
                                                Target="mainFrame"></asp:TreeNode>
                                        </asp:TreeNode>
                                        <asp:TreeNode Text="物品求购" Value="物品求购">
                                            <asp:TreeNode Text="信息审核" Value="信息审核" NavigateUrl="~/BackGround/CheckInfo.aspx?KindName=物品求购"
                                                Target="mainFrame"></asp:TreeNode>
                                            <asp:TreeNode Text="信息删除" Value="信息删除" NavigateUrl="~/BackGround/DeleteInfo.aspx?KindName=物品求购"
                                                Target="mainFrame"></asp:TreeNode>
                                        </asp:TreeNode>
                                        <asp:TreeNode Text="物品出售" Value="物品出售">
                                            <asp:TreeNode Text="信息审核" Value="信息审核" NavigateUrl="~/BackGround/CheckInfo.aspx?KindName=物品出售"
                                                Target="mainFrame"></asp:TreeNode>
                                            <asp:TreeNode Text="信息删除" Value="信息删除" NavigateUrl="~/BackGround/DeleteInfo.aspx?KindName=物品出售"
                                                Target="mainFrame"></asp:TreeNode>
                                        </asp:TreeNode>
                                        <asp:TreeNode Text="求兑出兑" Value="求兑出兑">
                                            <asp:TreeNode Text="信息审核" Value="信息审核" NavigateUrl="~/BackGround/CheckInfo.aspx?KindName=求兑出兑"
                                                Target="mainFrame"></asp:TreeNode>
                                            <asp:TreeNode Text="信息删除" Value="信息删除" NavigateUrl="~/BackGround/DeleteInfo.aspx?KindName=求兑出兑"
                                                Target="mainFrame"></asp:TreeNode>
                                        </asp:TreeNode>
                                        <asp:TreeNode Text="车辆信息" Value="车辆信息">
                                            <asp:TreeNode Text="信息审核" Value="信息审核" NavigateUrl="~/BackGround/CheckInfo.aspx?KindName=车辆信息"
                                                Target="mainFrame"></asp:TreeNode>
                                            <asp:TreeNode Text="信息删除" Value="信息删除" NavigateUrl="~/BackGround/DeleteInfo.aspx?KindName=车辆信息"
                                                Target="mainFrame"></asp:TreeNode>
                                        </asp:TreeNode>
                                        <asp:TreeNode Text="寻求合作" Value="寻求合作">
                                            <asp:TreeNode Text="信息审核" Value="信息审核" NavigateUrl="~/BackGround/CheckInfo.aspx?KindName=寻求合作"
                                                Target="mainFrame"></asp:TreeNode>
                                            <asp:TreeNode Text="信息删除" Value="信息删除" NavigateUrl="~/BackGround/DeleteInfo.aspx?KindName=寻求合作"
                                                Target="mainFrame"></asp:TreeNode>
                                        </asp:TreeNode>
                                        <asp:TreeNode Text="企业广告" Value="企业广告">
                                            <asp:TreeNode Text="信息审核" Value="信息审核" NavigateUrl="~/BackGround/CheckInfo.aspx?KindName=企业广告"
                                                Target="mainFrame"></asp:TreeNode>
                                            <asp:TreeNode Text="信息删除" Value="信息删除" NavigateUrl="~/BackGround/DeleteInfo.aspx?KindName=企业广告"
                                                Target="mainFrame"></asp:TreeNode>
                                        </asp:TreeNode>
                                       
                                    </Nodes>
                                    <NodeStyle Font-Names="Verdana" Font-Size="13pt" ForeColor="Black" HorizontalPadding="5px"
                                        NodeSpacing="0px" VerticalPadding="0px" />
                                </asp:TreeView>
                            </td>
                            <td  background="../images/4.jpg" width="15" ></td>
                            <td style="height: 374px; vertical-align: top;">
                                <iframe id="iframe1" name="mainFrame" style="width: 815px; height: 596px" frameborder="0">
                                </iframe>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td  colspan="2" height="62" valign="top">
                    <table align="center" cellpadding="0" cellspacing="0" height="39" width="1055">
                        <tr>
                            <td  height="59"  background="../images/16.jpg">
                                <table  width="700">
                                    <tr>
                                        <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                                        <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                                        <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                                        <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                                        <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                                        <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                                        <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                                        <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                                        <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                                        <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                                        <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                                        <td align="center" valign="bottom" width="600" style="color:black;font-family:方正舒体;font-size:30px;">
                                            2A703工作室 
                                            </td>
                                    </tr>
                    </table>
                </td>
            </tr>
        </table>
       
    </form>
</body>
</html>
