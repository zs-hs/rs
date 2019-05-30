<%@ Page Title="供求信息网" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <table  bgcolor="#ffffff" cellpadding="0" cellspacing="0" 
        width="620"  height="300">
       <tr><td rowspan="7" background="images/4.jpg" width="15" ></td><td height="80" width="180"><table  height="80" width="180"><tr><td background="images/1.jpg" height="5" width="300" ><table width="190" height="5">
    <tr><td width="40">&nbsp;</td>
           <td height="5">招聘信息</td></tr></table></td></tr>
               <tr><td>
               <asp:DataList ID="dlZP" runat="server" CssClass="hong">
                   <ItemTemplate>                             
                 <span class="hong" style="color: #000000">·<a class="huise" href="#" 
             onClick="window.open('ShowLeaguerInfo.aspx?id=<%#DataBinder.Eval(Container.DataItem,"InfoId") %>','','height=500, width=500, top=200, left=200')"><%#DataBinder.Eval(Container.DataItem,"InfoTitle") %></a></span>
                            </ItemTemplate></asp:DataList>     </td>       </tr></table></td>
           <td  background="images/4.jpg" width="10" ></td>
           <td height="80" width="180"><table  height="80" width="180"><tr><td background="images/1.jpg" height="5" width="300" ><table width="190" height="5">
    <tr><td width="40">&nbsp;</td><td height="5">公寓信息</td></tr></table></td></tr><tr><td>
                    <asp:DataList ID="dlGY" runat="server" CssClass="hong">
                   <ItemTemplate>
                                                
                 <span class="hong" style="color: #000000">·<a class="huise" href="#" 
             onClick="window.open('ShowLeaguerInfo.aspx?id=<%#DataBinder.Eval(Container.DataItem,"InfoId") %>','','height=500, width=500, top=200, left=200')"><%#DataBinder.Eval(Container.DataItem,"InfoTitle") %></a></span>
                            </ItemTemplate></asp:DataList>                     </td>   </tr></table></td>
           <td  background="images/4.jpg" width="10" ></td>
         <td height="80" width="180"><table  height="80" width="180"><tr><td background="images/1.jpg" height="5" width="300" ><table width="190" height="5">
    <tr><td width="40">&nbsp;</td>
           <td height="5">物品求购</td></tr></table></td></tr><tr><td>
                    <asp:DataList ID="dlWPQG" runat="server" CssClass="hong">
                   <ItemTemplate>
                                                
                 <span class="hong" style="color: #000000">·<a class="huise" href="#" 
             onClick="window.open('ShowLeaguerInfo.aspx?id=<%#DataBinder.Eval(Container.DataItem,"InfoId") %>','','height=500, width=500, top=200, left=200')"><%#DataBinder.Eval(Container.DataItem,"InfoTitle") %></a></span>
                            </ItemTemplate></asp:DataList>                     </td>   </tr></table></td>
       </tr>
       <tr><td colspan="6" background="images/end.gif" height="10" width="600"></td></tr>
       <tr>
         <td height="80" width="180"><table  height="80" width="180"><tr><td background="images/1.jpg" height="5" width="300" ><table width="190" height="5">
    <tr><td width="40">&nbsp;</td>
           <td height="5">求兑出兑</td></tr></table></td></tr><tr><td>
              <asp:DataList ID="dlQDCD" runat="server" CssClass="hong">
                   <ItemTemplate>
                                                
                 <span class="hong" style="color: #000000">·<a class="huise" href="#" 
             onClick="window.open('ShowLeaguerInfo.aspx?id=<%#DataBinder.Eval(Container.DataItem,"InfoId") %>','','height=500, width=500, top=200, left=200')"><%#DataBinder.Eval(Container.DataItem,"InfoTitle") %></a></span>
                            </ItemTemplate></asp:DataList>                     </td>   </tr></table></td>
           <td  background="images/4.jpg" width="10" ></td>
          <td height="80" width="180"><table  height="80" width="180"><tr><td background="images/1.jpg" height="5" width="300" ><table width="190" height="5">
    <tr><td width="40">&nbsp;</td>
           <td height="5">寻求合作</td></tr></table></td></tr><tr><td>
                    <asp:DataList ID="dlXQHZ" runat="server" CssClass="hong">
                   <ItemTemplate>
                                                
                 <span class="hong" style="color: #000000">·<a class="huise" href="#" 
             onClick="window.open('ShowLeaguerInfo.aspx?id=<%#DataBinder.Eval(Container.DataItem,"InfoId") %>','','height=500, width=500, top=200, left=200')"><%#DataBinder.Eval(Container.DataItem,"InfoTitle") %></a></span>
                            </ItemTemplate></asp:DataList>                     </td>   </tr></table></td>
           <td  background="images/4.jpg" width="10" ></td>
         <td height="80" width="180"><table  height="80" width="180"><tr><td background="images/1.jpg" height="5" width="300" ><table width="190" height="5">
    <tr><td width="40">&nbsp;</td>
           <td height="5">培训信息</td></tr></table></td></tr><tr><td>
                    <asp:DataList ID="dlPX" runat="server" CssClass="hong">
                   <ItemTemplate>
                                                
                 <span class="hong" style="color: #000000">·<a class="huise" href="#" 
             onClick="window.open('ShowLeaguerInfo.aspx?id=<%#DataBinder.Eval(Container.DataItem,"InfoId") %>','','height=500, width=500, top=200, left=200')"><%#DataBinder.Eval(Container.DataItem,"InfoTitle") %></a></span>
                            </ItemTemplate></asp:DataList>                     </td>   </tr></table></td>
       </tr>
       <tr><td colspan="6" background="images/end.gif" height="10" width="600"></td></tr>
       <tr>
         <td height="80" width="180"><table  height="80" width="180"><tr><td background="images/1.jpg" height="5" width="300" ><table width="190" height="5">
    <tr><td width="40">&nbsp;</td>
           <td height="5">求职信息</td></tr></table></td></tr><tr><td>
                    <asp:DataList ID="dlQZ" runat="server" CssClass="hong">
                   <ItemTemplate>
                                                
                 <span class="hong" style="color: #000000">·<a class="huise" href="#" 
             onClick="window.open('ShowLeaguerInfo.aspx?id=<%#DataBinder.Eval(Container.DataItem,"InfoId") %>','','height=500, width=500, top=200, left=200')"><%#DataBinder.Eval(Container.DataItem,"InfoTitle") %></a></span>
                            </ItemTemplate></asp:DataList>                     </td>   </tr></table></td>
           <td  background="images/4.jpg" width="10" ></td>
         <td height="80" width="180"><table  height="80" width="180"><tr><td background="images/1.jpg" height="5" width="300" ><table width="190" height="5">
    <tr><td width="40">&nbsp;</td>
           <td height="5">家教信息</td></tr></table></td></tr><tr><td>
                    <asp:DataList ID="dlJJ" runat="server" CssClass="hong">
                   <ItemTemplate>
                                                
                 <span class="hong" style="color: #000000">·<a class="huise" href="#" 
             onClick="window.open('ShowLeaguerInfo.aspx?id=<%#DataBinder.Eval(Container.DataItem,"InfoId") %>','','height=500, width=500, top=200, left=200')"><%#DataBinder.Eval(Container.DataItem,"InfoTitle") %></a></span>
                            </ItemTemplate></asp:DataList>                     </td>   </tr></table></td>
           <td  background="images/4.jpg" width="10" ></td>
         <td height="80" width="180"><table  height="80" width="180"><tr><td background="images/1.jpg" height="5" width="300" ><table width="190" height="5">
    <tr><td width="40">&nbsp;</td>
           <td height="5">物品出售</td></tr></table></td></tr><tr><td>
                    <asp:DataList ID="dlWPCS" runat="server" CssClass="hong">
                   <ItemTemplate>
                                                
                 <span class="hong" style="color: #000000">·<a class="huise" href="#" 
             onClick="window.open('ShowLeaguerInfo.aspx?id=<%#DataBinder.Eval(Container.DataItem,"InfoId") %>','','height=500, width=500, top=200, left=200')"><%#DataBinder.Eval(Container.DataItem,"InfoTitle") %></a></span>
                            </ItemTemplate></asp:DataList>                     </td>   </tr></table></td>
       </tr>
       <tr><td colspan="6" background="images/end.gif" height="10" width="600"></td></tr>
       <tr><td colspan="6" height="80">
           <table height="80" width="595"  bgcolor="#ffffff" cellpadding="0" cellspacing="0" >
           <tr>
              <td height="80" width="180" ><table  height="80" width="180"><tr><td background="images/1.jpg" height="5" width="300" ><table width="285" height="5">
    <tr><td width="40">&nbsp;</td>
           <td height="5">车辆信息</td></tr></table></td></tr><tr><td>
                    <asp:DataList ID="dlCL" runat="server" CssClass="hong">
                   <ItemTemplate>
                                                
                 <span class="hong" style="color: #000000">·<a class="huise" href="#" 
             onClick="window.open('ShowLeaguerInfo.aspx?id=<%#DataBinder.Eval(Container.DataItem,"InfoId") %>','','height=500, width=500, top=200, left=200')"><%#DataBinder.Eval(Container.DataItem,"InfoTitle") %></a></span>
                            </ItemTemplate></asp:DataList>                     </td>   </tr></table></td>
               <td  background="images/4.jpg" width="10" ></td>
             <td height="80" width="280"><table  height="80" width="280" ><tr><td background="images/1.jpg" height="5" width="280" ><table width="285" height="5">
    <tr><td width="40">&nbsp;</td>
           <td height="5">企业广告</td></tr></table></td></tr><tr><td>
                    <asp:DataList ID="dlQYGG" runat="server" CssClass="hong">
                   <ItemTemplate>
                                                
                 <span class="hong" style="color: #000000">·<a class="huise" href="#" 
             onClick="window.open('ShowLeaguerInfo.aspx?id=<%#DataBinder.Eval(Container.DataItem,"InfoId") %>','','height=500, width=500, top=200, left=200')"><%#DataBinder.Eval(Container.DataItem,"InfoTitle") %></a></span>
                            </ItemTemplate></asp:DataList>                     </td>   </tr></table></td>

           </tr>
         </table></td></tr>
   </table>
</asp:Content>

