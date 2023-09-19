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
using System.Windows.Forms;

public partial class teamleader_Default : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Convert.ToString(Session["UserName"]);
        if (Page.IsPostBack == false)
        {
            Drp_Bind();
            Current_JobStatus();
        }

    }
    public void Drp_Bind()
    {
        WorkFlowJobStatus.ClsJobStatus obj = new WorkFlowJobStatus.ClsJobStatus();
        drp_new_status.DataSource = obj.Display_JobStatus_TeamLeader();
        drp_new_status.DataTextField = "JobStatus";
        drp_new_status.DataValueField = "JobStatusId"; 
        drp_new_status.DataBind();
    }
    public void Current_JobStatus()
    {
        WorkFlowJobStatus.ClsJobStatus obj = new WorkFlowJobStatus.ClsJobStatus();
        ViewState["Status"]= Convert.ToString(obj.Current_JobStatus(Convert.ToInt32(Request.QueryString["val"].ToString())));
        current_status.Text = ViewState["Status"].ToString();
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("View_Jobs.aspx");
    }
    protected void drp_new_status_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (drp_new_status.SelectedIndex==4)
        {
            DialogResult reply = MessageBox.Show("Are you soure you want set job status Complete", "Job Status Complete", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (reply == DialogResult.Yes)
            {
            }
            else if(reply==DialogResult.No)
            {
                Drp_Bind();   
            }
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        if (ViewState["Status"].ToString() == "Complete")
        {
            err_lbl.Text = "You Cannot Change Status Because it Already Completed";
            return;
        }
        if (drp_new_status.SelectedIndex > 0)
        {
            nsworkflowmang.clsJob obj = new nsworkflowmang.clsJob();
            nsworkflowmang.clsJobPrp objprp = new nsworkflowmang.clsJobPrp();
            objprp.p_JobId = Convert.ToInt32(Request.QueryString["val"].ToString());
            objprp.p_JobStatus = Convert.ToInt32(drp_new_status.SelectedValue);
            objprp.p_JobEndDate = DateTime.Now;
            obj.Update_Job_StatUs(objprp);
            Response.Redirect("View_Jobs.aspx");
        }
        else
        {
            err_lbl.Text = "Please Select New Status From DropDownList";
        }
    }
}
