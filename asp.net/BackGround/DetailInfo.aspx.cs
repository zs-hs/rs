using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BackGround_DetailInfo : System.Web.UI.Page
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
    }
}