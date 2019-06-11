<%@ Page Title="供求信息---寻求合作" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="webXQHZ.aspx.cs" Inherits="ShowPage_webXQHZ" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table  bgcolor="#ffffff" cellpadding="0" cellspacing="0"
        width="620" height="510">
        <tr>
            <td  background="images/4.jpg" width="10" rowspan="2"></td>
            <td align="center" style="width: 520px; color: #000000; height: 290px" valign="top" class="txt">
                <table cellpadding="0" cellspacing="0" width="10">
                    
                    <tr>
                        <td align="left" bgcolor="#ffffff" height="20" valign="top">
                            <asp:DataList ID="dlCharge" runat="server" Width="543px">
                                <ItemTemplate>
                                    <table align="center" cellpadding="0" cellspacing="0" width="543" >
                                        <tr>
                                            <td>
                                                <span class="chengse" style="color: #000000">&gt;&gt;&gt;<a class="huise" href="#" 
             onClick="window.open('ShowLeaguerInfo.aspx?id=<%#DataBinder.Eval(Container.DataItem,"InfoId") %>','','height=600, width=800, top=200, left=200')"><%#DataBinder.Eval(Container.DataItem,"InfoTitle") %></a></span>
                                             </td></tr>
                                        
                                        <tr style="color: #000000">
                                           <td background="images/line.gif" width="178" height="1" valign="top"></td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:DataList></td></tr></table>
                        </td></tr>
                    
                    <tr>
                        <td style="width: 581px; height: 11px">
                当前页码为［<asp:Label ID="lblCurrentPage" runat="server" Text="1"></asp:Label>］页
                总页码［<asp:Label
                    ID="lblSumPage" runat="server" Text="0"></asp:Label>］页
                <asp:LinkButton ID="lnkBtnFirst" runat="server" Font-Underline="False" OnClick="lnkBtnFirst_Click"> 第一页 </asp:LinkButton>
                <asp:LinkButton ID="lnkBtnPrevious" runat="server" Font-Underline="False" OnClick="lnkBtnPrevious_Click"> 上一页 </asp:LinkButton>
                <asp:LinkButton ID="lnkBtnNext" runat="server" Font-Underline="False" OnClick="lnkBtnNext_Click"> 下一页 </asp:LinkButton>
                <asp:LinkButton ID="lnkBtnLast" runat="server" Font-Underline="False" OnClick="lnkBtnLast_Click"> 末一页 </asp:LinkButton></td>
        </tr>
   </table>
</asp:Content>
