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

public partial class developer_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Convert.ToString(Session["UserName"]);
        if (Page.IsPostBack == false)
        {
            Dis();
        }
    }
    public void Dis()
    {
        WorkFlowDeveloper.ClsDeve obj = new WorkFlowDeveloper.ClsDeve();
        datalist_for_ViewJobs.DataSource = obj.DisplayJob_ToDeveloper(Convert.ToInt32(Session["UserId"].ToString()));
        datalist_for_ViewJobs.DataBind();
    }
    protected void datalist_for_ViewJobs_DeleteCommand(object source, DataListCommandEventArgs e)
    {
        Response.Redirect("Change_JobStatus.aspx?val=" + datalist_for_ViewJobs.DataKeys[e.Item.ItemIndex]);
    }
}
