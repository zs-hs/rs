using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] != null)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
            PanelEntry.Visible = false;
            PanelHello.Visible = true;
            this.Label1.Text = Session["UserName"].ToString();
        }
        else
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
            PanelHello.Visible = false;
            PanelEntry.Visible = true;
        } 

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["UserName"] = null;

        PanelHello.Visible = false;
        PanelEntry.Visible = true;
        Panel1.Visible = true;
        Panel2.Visible = false;
    }
}
