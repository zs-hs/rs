using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Fubu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] != null) { }
        else
        {
            WebMessageBox.Show("请先登录", "Enter.aspx");
        }
 }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string title = txtTitle.Text;
        string content = txtInfo.Text;
        string man = txtLinkMan.Text;
        string tel = txtTel.Text;
        string type = DropDownList1.SelectedItem.Text;
       
        string sql="insert into Info(InfoTitle,InfoContent,InfoLinkman,InfoTel,KindName,CheckId) values('"+title+"','"+content+"','"+man+"','"+tel+"','"+type+"','"+1+"')";
        DataBase.execSql(sql);
        WebMessageBox.Show("发布成功", "Default.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        txtTitle.Text = "";
        txtInfo.Text = "";
        txtLinkMan.Text = "";
        txtTel.Text = "";

    }
}