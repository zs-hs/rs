using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BackGround_DeleteInfo : System.Web.UI.Page
{    DataBase data = new DataBase();
    static string infoType = "";　　　　　 //供求信息类型

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            infoType = Request.QueryString["KindName"].ToString();
            GridViewBind(infoType);
        }
    }
    /// <summary>
    /// 绑定供求信息到GridViev控件
    /// </summary>
    /// <param name="type">供求信息类别</param>
    private void GridViewBind(string type)
    {
        
      
        string sql = "SELECT V_Info.KindName,InfoId,V_Info.InfoTitle,InfoContent,InfoLinkman,InfoTel ,CheckName FROM V_Info,V_check where V_Info.InfoTitle=V_check.InfoTitle and V_Info.KindName='" + type + "'";
        GridView1.DataSource = DataBase.getRows(sql);
        GridView1.DataKeyNames = new string[] { "InfoId" };
      
        GridView1.DataBind();
       
        //显示当前页数
        lblPageSum.Text = "当前页为　" + (GridView1.PageIndex + 1) + " / " + GridView1.PageCount + "　页";
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
          /*  //高亮显示指定行
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
            //多余字　使用...显示
            e.Row.Cells[2].Text = Wq.Out(e.Row.Cells[2].Text, 18);
            //删除指定行数据时，弹出询问对话框
            ((LinkButton)(e.Row.Cells[7].Controls[0])).Attributes.Add("onclick", "return confirm('是否删除当前行数据！')");
        }
    }
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        int id = Convert.ToInt32(GridView1.DataKeys[e.NewSelectedIndex].Value.ToString());
        Response.Write("<script> window.open('DetailInfo.aspx?id=" + id + "','','height=500, width=800, top=200, left=200') </script>");
        Response.Write("<script>history.go(-1)</script>");
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridViewBind(infoType);
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
         string sql = "delete from Info WHERE InfoId= '" + id + "'";
        
       
        DataBase.execSql(sql);
       
        GridViewBind(infoType);
    }
}
