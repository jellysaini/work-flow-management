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
    WorkFlow.ClsUsr obj = new WorkFlow.ClsUsr();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Convert.ToString(Session["UserName"]);
        if (Page.IsPostBack == false)
        {
            Display_Teamleader();
        }
    }
    public void Display_Teamleader()
    {
        
        TeamLeadName.DataSource = obj.Display_TeamLead_Allocate();
        TeamLeadName.DataTextField = "UsrName";
        TeamLeadName.DataValueField = "UsrId";
        TeamLeadName.DataBind();
        
    }
    public void Allocate_TeamLeader()
    {

        if(TeamLeadName.SelectedItem!=null)
        {
            list_Allocated.DataSource = obj.Allocate_TeamLead(Convert.ToInt32(TeamLeadName.SelectedValue));
            list_Allocated.DataTextField = "UsrName";
            list_Allocated.DataValueField = "UsrId";
            list_Allocated.DataBind();
        }
        else
        {

        }
    }
    public void After_Allocate()
    {
        if (TeamLeadName.SelectedItem != null)
        {
            TeamLeadName.DataSource = obj.Display_After_Allocate_Job(Convert.ToInt32(TeamLeadName.SelectedValue));
            TeamLeadName.DataTextField = "UsrName";
            TeamLeadName.DataValueField = "UsrId";
            TeamLeadName.DataBind();
        }
        else
        {
        }
    }
    protected void add_btn_Click(object sender, EventArgs e)
    {
        
        Allocate_TeamLeader();
        After_Allocate();
    }

    protected void remove_btn_Click(object sender, EventArgs e)
    {
        Display_Teamleader();
        list_Allocated.Items.Clear();
    }

    protected void save_btn_Click(object sender, EventArgs e)
    {
        nsworkflowmang.clsJobPrp objprp = new nsworkflowmang.clsJobPrp();
        nsworkflowmang.clsJob obj= new nsworkflowmang.clsJob();
        objprp.p_JobId = Convert.ToInt32(Request.QueryString["val"]);
        if (list_Allocated.Items.Count!=0)
        {
            objprp.p_UsrId = Convert.ToInt32(list_Allocated.Items[0].Value);
            objprp.p_JobStatus = 2;
            obj.AllocateJob(objprp,DateTime.Now);
            Response.Redirect("Job_View.aspx");

        }
        else
        {
        }
        
    }
    protected void cancel_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("Job_View.aspx");

    }
}
