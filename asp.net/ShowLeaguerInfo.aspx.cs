using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ShowLeaguerInfo : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

        int id = Convert.ToInt32(Request.QueryString["id"].ToString());
        string sql = "select * from V_Info where InfoId='" + id + "'";
        DataSet ds = DataBase.getRows(sql);
        txtType.Text = ds.Tables[0].Rows[0][5].ToString();
        txtTitle.Text = ds.Tables[0].Rows[0][1].ToString();
        txtInfo.Text = ds.Tables[0].Rows[0][2].ToString();
        txtLinkMan.Text = ds.Tables[0].Rows[0][3].ToString();
        txtTel.Text = ds.Tables[0].Rows[0][4].ToString();
        txtdate.Text = ds.Tables[0].Rows[0][6].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (Session["UserName"] != null)
        {
            int id = Convert.ToInt32(Request.QueryString["id"].ToString());
           // string sql = "select * from V_Info where InfoId='" + id + "'";
            //DataSet ds = DataBase.getRows(sql);
           // string t = ds.Tables[0].Rows[0][1].ToString();
            //string d = ds.Tables[0].Rows[0][6].ToString();
            string type = txtType.Text;
            string title = txtTitle.Text;
            string cont = txtInfo.Text;
            string man = txtLinkMan.Text;
            string phone = txtTel.Text;
            string date = txtdate.Text;
            string sql1 = "update Info set InfoTitle='" + title +"' where InfoId='" + id + "'";
            DataBase.execSql(sql1);
            string sql2 = "update Info set InfoDate='" + date + "' where InfoId='" + id + "'";
            DataBase.execSql(sql2);
             string sql3= "update Info set InfoContent='" + cont + "',InfoLinkman='" + man + "',InfoTel='" + phone + "' where InfoId='" + id + "'";
                 DataBase.execSql(sql3);    
            
        }
        else
        {
            WebMessageBox.Show("请先登录", "Enter.aspx");
        }

    }
}