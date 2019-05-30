using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Enter : System.Web.UI.Page
{
    DataBase data = new DataBase();
    Random random = new Random();　　　　　//声明随机类对象
    string sql1 = "P_User";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            this.Image1.ImageUrl = "ValidateCode.aspx";
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        this.Image1.ImageUrl = "ValidateCode.aspx";
    }
    protected void Button1_Click(object sender,EventArgs e)
    {
        string CheckCode = txtCheckCode.Text;
        if (Session["CheckCode"].ToString().Equals(CheckCode))    //判断验证码
        {
            DataBase.execTrigger(sql1);
            string name = txtUser.Text;
            string pwd = txtPwd.Text;
            string str="select * from Users where UserName='"+name +"'"+"and UserPwd='"+pwd+"'";
          DataSet  dis= DataBase.getRows(str);
        if(dis.Tables[0].Rows.Count>0)
        {
            Session["UserName"] = name;
            string sql = "select TypeName from V_User where UserName='"+name+"'";
            if (DataBase.getTier(sql) == "管理员")
            { Response.Redirect("BackGround/Default.aspx"); }
            else
            { Response.Redirect("Default.aspx"); }

        }
        else
        {
            WebMessageBox.Show("用户名称或密码不正确！", "Enter.aspx");
        }
    }else
        {
            WebMessageBox.Show("输入验证码不正确！", "Enter.aspx");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {txtUser.Text="";
        txtPwd.Text="";
        txtCheckCode.Text = "";

    }
}