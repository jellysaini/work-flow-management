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
        }
    }
    public void Dis_bind()
    {
        WorkFlowReports.ClsReports obj=new WorkFlowReports.ClsReports();
        datalist_for_JobReports.DataSource=obj.Show_Reports();
        datalist_for_JobReports.DataBind();
    }
}
