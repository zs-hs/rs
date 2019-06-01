using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BackGround_CheckInfo : System.Web.UI.Page
{
    DataBase data = new DataBase();
    static string infoType = "";　　　　　 //供求信息类型
    //DataSet dsCheckInfo = null;
    static int CheckType = -1;　　　　　　　//3种类别：全部显示(-1代表全部显示)，显示未审核（0），显示审核(1)

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            infoType = Request.QueryString["KindName"].ToString();
            GridViewBind(infoType);
        }
    }
    private void GridViewBind(string type)
    {
        string sql = "SELECT V_Info.KindName,InfoId,V_Info.InfoTitle,InfoContent,InfoLinkman,InfoTel ,CheckName FROM V_Info,V_check where V_Info.InfoTitle=V_check.InfoTitle and V_Info.KindName='" + type + "'";
        GridView1.DataSource = DataBase.getRows(sql);
       GridView1.DataKeyNames = new string[] { "InfoId" };
        GridView1.DataBind();
        //显示当前页数
        lblPageSum.Text = "当前页为　" + (GridView1.PageIndex + 1) + " / " + GridView1.PageCount + "　页";
    }
   
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        int id =Convert.ToInt32( GridView1.DataKeys[e.NewSelectedIndex].Value.ToString());
        string sql = "SELECT V_Info.KindName,V_Info.InfoTitle,InfoContent,InfoLinkman,InfoTel,CheckName,CheckId FROM V_Info,V_check where InfoId='" +id+ "'" + "and V_Info.InfoTitle=V_check.InfoTitle"; ;
        DataSet ds = DataBase.getRows(sql);
         int Checkstate= Convert.ToInt32(ds.Tables[0].Rows[0][6].ToString());
             if (Checkstate == 1)
             {    //string sql3= "t_info";

                 string sql1 = "UPDATE Info SET CheckId =2 WHERE InfoId='" + id + "'";
                 DataBase.execSql(sql1);
                 // DataBase.execTrigger(sql3);
             }
             else
             {
                 string sql2 = "UPDATE Info SET CheckId =1 WHERE InfoId='" + id+ "'";
                 DataBase.execSql(sql2);
             }
         
        //按审核类型绑定数据（３种类别：全部显示(-1)，显示未审核(0)，显示审核(1)）
       switch (CheckType)
        {
            case -1:
                GridViewBind(infoType);
                break;
            case 0:
               string k="未审核";
        string sql1 = "SELECT InfoId, V_Info.KindName,V_Info.InfoTitle,InfoContent,InfoLinkman,InfoTel ,CheckName FROM V_Info,V_check where V_Info.InfoTitle=V_check.InfoTitle and V_Info.KindName='" + infoType + "'"+" and V_check.CheckName='"+k+"'";
        GridView1.DataSource = DataBase.getRows(sql1);
                GridView1.DataBind();
               // CheckType = 0;
                break;
            case 1:
                string k1="已审核";
        string sql2 = "SELECT InfoId, V_Info.KindName,V_Info.InfoTitle,InfoContent,InfoLinkman,InfoTel ,CheckName FROM V_Info,V_check where V_Info.InfoTitle=V_check.InfoTitle and V_Info.KindName='" + infoType + "'"+" and V_check.CheckName='"+k1+"'";
        GridView1.DataSource = DataBase.getRows(sql2);
                GridView1.DataBind();
               // CheckType = 1;
                break;
        }
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
           /* //高亮显示指定行
            e.Row.Attributes.Add("onMouseOver", "Color=this.style.backgroundColor;this.style.backgroundColor='#FFF000'");
            e.Row.Attributes.Add("onMouseOut", "this.style.backgroundColor=Color;");
            //设置审核状态，并且设置相应的颜色。
            if (e.Row.Cells[5].Text == "False")
            {
                e.Row.Cells[5].Text = Wq.HighLight("未审核", true);
            }
            else
            {
                e.Row.Cells[5].Text = Wq.HighLight("已审核", false);
            }*/
            //多余字　使用...显示*
            e.Row.Cells[2].Text = Wq.Out(e.Row.Cells[2].Text, 18);

        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
        Response.Write("<script> window.open('DetailInfo.aspx?id=" + id + "','','height=500, width=800, top=200, left=200') </script>");
        Response.Write("<script>history.go(-1)</script>");
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

        //分页设置
        GridView1.PageIndex = e.NewPageIndex;
        //按审核类型绑定数据（３种类别：全部显示(-1)，显示未审核(0)，显示审核(1)）
       switch (CheckType)
        {
            case -1:
                GridViewBind(infoType);
                break;
            case 0:
                string k = "未审核";
                string sql1 = "SELECT InfoId, V_Info.KindName,V_Info.InfoTitle,InfoContent,InfoLinkman,InfoTel ,CheckName FROM V_Info,V_check where V_Info.InfoTitle=V_check.InfoTitle and V_Info.KindName='" + infoType + "'" + " and V_check.CheckName='" + k + "'";
                GridView1.DataSource = DataBase.getRows(sql1);
                GridView1.DataBind();
                CheckType = 0;
                break;
            case 1:
                string k1 = "已审核";
                string sql2 = "SELECT InfoId,V_Info.KindName,V_Info.InfoTitle,InfoContent,InfoLinkman,InfoTel ,CheckName FROM V_Info,V_check where V_Info.InfoTitle=V_check.InfoTitle and V_Info.KindName='" + infoType + "'" + " and V_check.CheckName='" + k1 + "'";
                GridView1.DataSource = DataBase.getRows(sql2);
                GridView1.DataBind();
                CheckType = 1;
                break;
        }
        //显示当前页数
        lblPageSum.Text = "当前页为　" + (GridView1.PageIndex + 1) + " / " + GridView1.PageCount + "　页";
    }
    protected void rdoBtnCheckTrue_CheckedChanged(object sender, EventArgs e)
    {
        GridView1.PageIndex = 0;
        string k1 = "已审核";
        string sql = "SELECT InfoId,V_Info.KindName,V_Info.InfoTitle,InfoContent,InfoLinkman,InfoTel ,CheckName FROM V_Info,V_check where V_Info.InfoTitle=V_check.InfoTitle and V_Info.KindName='" + infoType + "'" + " and V_check.CheckName='" + k1 + "'";
        GridView1.DataSource = DataBase.getRows(sql); ;
        GridView1.DataBind();
        CheckType = 1;
        //显示当前页数
        lblPageSum.Text = "当前页为　" + (GridView1.PageIndex + 1) + " / " + GridView1.PageCount + "　页";
    }
    protected void rdoBtnCheckFalse_CheckedChanged(object sender, EventArgs e)
    {
        GridView1.PageIndex = 0;
        string sk="未审核";
        string sql = "SELECT InfoId,V_Info.KindName,V_Info.InfoTitle,InfoContent,InfoLinkman,InfoTel ,CheckName FROM V_Info,V_check where V_Info.InfoTitle=V_check.InfoTitle and V_Info.KindName='" + infoType + "'" + " and V_check.CheckName='" + sk + "'";
        GridView1.DataSource = DataBase.getRows(sql);
        GridView1.DataBind();
        CheckType = 0;
        //显示当前页数
        lblPageSum.Text = "当前页为　" + (GridView1.PageIndex + 1) + " / " + GridView1.PageCount + "　页";
    }
    protected void rdoBtnCheckAll_CheckedChanged(object sender, EventArgs e) 
    {
        GridView1.PageIndex = 0;
        GridViewBind(infoType);
       // CheckType = -1;
        //显示当前页数
        lblPageSum.Text = "当前页为　" + (GridView1.PageIndex + 1) + " / " + GridView1.PageCount + "　页";
    }
}