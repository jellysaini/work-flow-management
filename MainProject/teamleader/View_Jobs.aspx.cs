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

public partial class teamleader_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Convert.ToString(Session["UserName"]);
        if (Page.IsPostBack == false)
        {
            Dis_Job();
        }
    }
    public void Dis_Job()
    {
        nsworkflowmang.clsJob obj = new nsworkflowmang.clsJob();
        datalist_for_ViewJobs.DataSource=obj.View_job_to_Teamleader(Convert.ToInt32(Session["UserId"].ToString()));
        datalist_for_ViewJobs.DataBind();
    }
    protected void datalist_for_ViewJobs_DeleteCommand(object source, DataListCommandEventArgs e)
    {
        Response.Redirect("Change_JobStatus.aspx?val=" + datalist_for_ViewJobs.DataKeys[e.Item.ItemIndex]);
    }
    protected void datalist_for_ViewJobs_EditCommand(object source, DataListCommandEventArgs e)
    {
        Int32 aid = Convert.ToInt32(((HiddenField)(e.Item.FindControl("aid"))).Value);
        Int32 jid = Convert.ToInt32(datalist_for_ViewJobs.DataKeys[e.Item.ItemIndex]);
        Int32 uid = Convert.ToInt32(Session["UserId"].ToString());
        Response.Redirect("Assign_Jobs.aspx?val1=" + aid + "&val2=" + jid + "&val3=" + uid);
    }
}
