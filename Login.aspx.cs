using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    DataBase data = new DataBase();
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string name = txtUser.Text;
        string pwd = txtPwd.Text;
        string sex = txtSex.Text;
        string email = txtEmail.Text;
        string qq = TextQQ.Text;
        string phone = TextPhone.Text;
        string type = radName.SelectedItem.Text;
        int type1;
        if (type == "管理员") type1 = 1;
        else type1 = 2;
            string std = "insert into Users values('"+name+"','"+pwd+"','"+sex+"','"+email+"','"+qq+"','"+phone+"','"+type1+"')";
            DataBase.execSql(std);
            WebMessageBox.Show("注册成功", "Default.aspx");
        

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        txtUser.Text = "";
        txtPwd.Text = "";
        txtSex.Text = "";
        txtEmail.Text = "";
        TextQQ.Text = "";
        TextPhone.Text = "";
    }
}