using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ShowPage_webQZ : System.Web.UI.Page
{
    static string infoType = "";            //声明供求信息类型对象
    static string infoKey = "";             //声明查询信息关键字
    static string check = "";
    public PagedDataSource PageDataListBind(string infoType, string infoKey, int currentPage, int PageSize)
    {
        PagedDataSource pds = new PagedDataSource();
        SqlParameter Deplay = new SqlParameter("@type", SqlDbType.VarChar, 50);
        SqlParameter Deplay1 = new SqlParameter("@info", SqlDbType.VarChar, 50);
        Deplay.Value = infoType;
        Deplay1.Value = infoKey;
        string sql = "select * from V_Info where (KindName='" + Deplay + ") and (InfoContent like" + "%" + Deplay1 + "%" + "' )";
        pds.DataSource = DataBase.getRows(sql).Tables[0].DefaultView; //将查询结果绑定到分页数据源上。
        pds.AllowPaging = true;　　　　　　　　　　//允许分页
        pds.PageSize = PageSize;　　　　　　　　 　//设置每页显示的页数
        pds.CurrentPageIndex = currentPage - 1;　  //设置当前页
        return pds;
    }
    static PagedDataSource pds = new PagedDataSource();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            infoType = "求职信息";
            check = "已审核";
            //infoKey的意思用语用户快速检索，如果值为空，显示所有招聘供求信息，否则显示查询内容
            infoKey = Convert.ToString(Session["key"]);

            this.DataListBind();
            string sql = "select * from V_Info,V_check where V_Info.KindName='" + infoType + "'" + "and V_check.CheckName='" + check + "'" + "and V_Info.InfoTitle=V_check.InfoTitle";
            dlCharge.DataSource = DataBase.getRows(sql);
            dlCharge.DataBind();
            Session["key"] = null;
        }

    }
    /// <summary>
    /// 将数据绑定到DataList控件
    /// </summary>
    public void DataListBind()
    {
        //将分页结果设置结果赋值给新的页数据源对象
        pds = PageDataListBind(infoType, infoKey, Convert.ToInt32(lblCurrentPage.Text), 10);
        lnkBtnFirst.Enabled = true;　　　　　　//控件翻页控件都设置为可用
        lnkBtnLast.Enabled = true;
        lnkBtnNext.Enabled = true;
        lnkBtnPrevious.Enabled = true;
        if (lblCurrentPage.Text == "1")　　　//如果当前显示第一页，“第一页”和“上一页”按钮不可用。
        {
            lnkBtnPrevious.Enabled = false;
            lnkBtnFirst.Enabled = false;
        }
        if (lblCurrentPage.Text == pds.PageCount.ToString())　　//如果显示最后一页，“末一页”和“下一页”按钮不可用。
        {
            lnkBtnNext.Enabled = false;
            lnkBtnLast.Enabled = false;
        }
        lblSumPage.Text = pds.PageCount.ToString();　　//实现总页数

    }
    protected void lnkBtnFirst_Click(object sender, EventArgs e)
    {
        lblCurrentPage.Text = "1";  //第一页
        DataListBind();
    }
    protected void lnkBtnPrevious_Click(object sender, EventArgs e)
    {
        lblCurrentPage.Text = (Convert.ToInt32(lblCurrentPage.Text) - 1).ToString();  //上一页
        DataListBind();
    }
    protected void lnkBtnNext_Click(object sender, EventArgs e)
    {
        lblCurrentPage.Text = (Convert.ToInt32(lblCurrentPage.Text) + 1).ToString(); //下一页
        DataListBind();
    }
    protected void lnkBtnLast_Click(object sender, EventArgs e)
    {
        lblCurrentPage.Text = lblSumPage.Text;
        DataListBind();
    }
}