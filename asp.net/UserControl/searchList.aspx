<%@ Page Language="C#" AutoEventWireup="true" CodeFile="searchList.aspx.cs" Inherits="UserControl_searchList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../css/css.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server"><br /><br />
       <div align="center" style="font-size:30px;"> <p>搜索结果</p></div>
    <div align="center">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="192px" Width="810px" >
            <Columns>
                <asp:HyperLinkField  DataTextField="KindName" HeaderText="信息类型" ControlStyle-Width="100" />
                <asp:BoundField DataField="InfoContent" HeaderText="内容" />
                <asp:BoundField DataField="InfoDate" HeaderText="发布日期" />
            </Columns>
          <RowStyle BackColor="#E3EAEB" />
           <EditRowStyle BackColor="#7C6F57" />
             <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="False" ForeColor="#333333" />
              <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
              <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
              <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        <asp:Panel ID="Panel1" runat="server" Height="50px" Width="400px">
                            <span style="font-size: 16pt; color: #ff0033"><strong>查询的内容不存在！请返回。</strong></span><br />
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx" Width="44px">返回</asp:HyperLink></asp:Panel>
    </div>
    </form>
</body>
</html>
