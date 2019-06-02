using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControl_searchList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        string sql = Session["sql"].ToString();
        if (DataBase.getRows(sql).Tables[0].DefaultView.Count > 0)
        {
            Panel1.Visible = false;
            GridView1.DataSource = DataBase.getRows(sql);
            GridView1.DataBind();
        }
        else
        { Panel1.Visible = true; }

    }
}