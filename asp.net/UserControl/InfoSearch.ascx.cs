﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControl_InfoSearch : System.Web.UI.UserControl
{
    　　
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        Session["key"] = txtKey.Text;
 
        string sql = "select * from V_Info where InfoContent like '%" + Session["key"]+ "%'";
        Session["sql"] = sql;
        Response.Redirect("UserControl/searchList.aspx");
    }
}
