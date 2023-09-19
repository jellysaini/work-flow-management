using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Convert.ToString(Session["UserName"]);
        if (Page.IsPostBack == false)
        {
            Dis_bind();
            dis_user();
        }
    }
    public void Dis_bind()
    {
        WorkFlowReports.ClsReports obj = new WorkFlowReports.ClsReports();
        datalist_for_UserReports.DataSource = obj.Show_Reports_For_User(79);
        datalist_for_UserReports.DataBind();
    }
    public void dis_user()
    {
        WorkFlowReports.ClsReports obj = new WorkFlowReports.ClsReports();
        drp.DataSource = obj.Disply_User();
        drp.DataTextField = "UsrName";
        drp.DataValueField = "UsrId";
        drp.DataBind();
    }
    protected void drp_SelectedIndexChanged(object sender, EventArgs e)
    {
        WorkFlowReports.ClsReports obj = new WorkFlowReports.ClsReports();
        datalist_for_UserReports.DataSource = obj.Show_Reports_For_User(Convert.ToInt32(drp.SelectedValue));
        datalist_for_UserReports.DataBind();

    }
    
}
