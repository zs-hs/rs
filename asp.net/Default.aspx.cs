using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    static string infoType ="";        //声明供求信息类型对象
    static string infoKey = "";             //声明查询信息关键字
    static string check = "";
    string sql1= "P_check";
    static string sql2= "P_Info";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataBase.execTrigger(sql1);
            DataBase.execTrigger(sql2);
            check = "已审核";

            infoType = "招聘信息";
            string sql = "select top 3 * from V_Info,V_check where V_Info.KindName='" + infoType + "'" + "and V_check.CheckName='" + check + "'" + "and V_Info.InfoTitle=V_check.InfoTitle";
            dlZP.DataSource = DataBase.getRows(sql);
            dlZP.DataBind();


            infoType = "公寓信息";
            string sql3 = "select top 3 * from V_Info,V_check where V_Info.KindName='" + infoType + "'" + "and V_check.CheckName='" + check + "'" + "and V_Info.InfoTitle=V_check.InfoTitle";
            dlGY.DataSource = DataBase.getRows(sql3);
            dlGY.DataBind();


            infoType = "物品求购";
            string sql4 = "select top 3 * from V_Info,V_check where V_Info.KindName='" + infoType + "'" + "and V_check.CheckName='" + check + "'" + "and V_Info.InfoTitle=V_check.InfoTitle";
            dlWPQG.DataSource = DataBase.getRows(sql4);
            dlWPQG.DataBind();


            infoType = "求兑出兑";
            string sql5 = "select top 3 * from V_Info,V_check where V_Info.KindName='" + infoType + "'" + "and V_check.CheckName='" + check + "'" + "and V_Info.InfoTitle=V_check.InfoTitle";
            dlQDCD.DataSource = DataBase.getRows(sql5);
            dlQDCD.DataBind();

            infoType = "寻求合作";
            string sql6 = "select top 3 * from V_Info,V_check where V_Info.KindName='" + infoType + "'" + "and V_check.CheckName='" + check + "'" + "and V_Info.InfoTitle=V_check.InfoTitle";
            dlXQHZ.DataSource = DataBase.getRows(sql6);
            dlXQHZ.DataBind();

            infoType = "培训信息";
            string sql7 = "select top 3 * from V_Info,V_check where V_Info.KindName='" + infoType + "'" + "and V_check.CheckName='" + check + "'" + "and V_Info.InfoTitle=V_check.InfoTitle";
            dlPX.DataSource = DataBase.getRows(sql7);
            dlPX.DataBind();

            infoType = "求职信息";
            string sql8 = "select top 3 * from V_Info,V_check where V_Info.KindName='" + infoType + "'" + "and V_check.CheckName='" + check + "'" + "and V_Info.InfoTitle=V_check.InfoTitle";
            dlQZ.DataSource = DataBase.getRows(sql8);
            dlQZ.DataBind();

            infoType = "家教信息";
            string sql9 = "select top 3 * from V_Info,V_check where V_Info.KindName='" + infoType + "'" + "and V_check.CheckName='" + check + "'" + "and V_Info.InfoTitle=V_check.InfoTitle";
            dlJJ.DataSource = DataBase.getRows(sql9);
            dlJJ.DataBind();

            infoType = "物品出售";
            string sql10 = "select top 3 * from V_Info,V_check where V_Info.KindName='" + infoType + "'" + "and V_check.CheckName='" + check + "'" + "and V_Info.InfoTitle=V_check.InfoTitle";
            dlWPCS.DataSource = DataBase.getRows(sql10);
            dlWPCS.DataBind();

            infoType = "车辆信息";
            string sql11 = "select top 3 * from V_Info,V_check where V_Info.KindName='" + infoType + "'" + "and V_check.CheckName='" + check + "'" + "and V_Info.InfoTitle=V_check.InfoTitle";
            dlCL.DataSource = DataBase.getRows(sql11);
            dlCL.DataBind();

            infoType = "企业广告";
            string sql12 = "select top 3 * from V_Info,V_check where V_Info.KindName='" + infoType + "'" + "and V_check.CheckName='" + check + "'" + "and V_Info.InfoTitle=V_check.InfoTitle";
            dlQYGG.DataSource = DataBase.getRows(sql12);
            dlQYGG.DataBind();


        }

    }
}