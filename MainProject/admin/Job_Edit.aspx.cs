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
    Int32 data;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Convert.ToString(Session["UserName"]);
        if (Page.IsPostBack == false)
        {
            Show_Edit_Job_Data();
        }
    }


    public void Show_Edit_Job_Data()
    {
        nsworkflowmang.clsJob obj = new nsworkflowmang.clsJob();
        nsworkflowmang.clsJobPrp objprp = new nsworkflowmang.clsJobPrp();
        objprp.p_JobId = Convert.ToInt32(Request.QueryString["qrystrvar"]);
        nsworkflowmang.clsJobPrp gett = obj.Find_Job(objprp);
        txtAccounts.Text = (gett.p_JobAccounts).ToString();
        txtAnnualReturn.Text = (gett.p_JobAnnualCompanyReturn).ToString();
        txtBenchmarking.Text = (gett.p_JobBenchmarking).ToString();
        txtCashFlowForecast.Text = (gett.p_JobCashFlowForecast).ToString();
        txtEstNoOfHours.Text = (gett.p_JobEstHrs).ToString();
        txtFeeToClient.Text = (gett.p_JobFeeToClient).ToString();
        txtFinanclYrEnd.Text = (gett.p_JobFinclYrEnd).ToString();
        txtGSTReturn.Text = (gett.p_JobGSTReturn).ToString();
        txtJobCode.Text = (gett.p_JobCode).ToString();
        txtJobDesc.Text = gett.p_JobDesc;
        txtJobName.Text = gett.p_JobName;
        txtMainContact.Text = gett.p_JobMainContact;
        txtOther.Text = (gett.p_JobTotalOutsourcingFee).ToString();
        txtParentJobId.Text = (gett.p_ParentJobId).ToString();
        txtProfitOptimizer.Text = (gett.p_JobProfitOptimizer).ToString();
        txtTargetDate.Text = (gett.p_JobTrgtdate).ToString();
        txtTaxNumber.Text = (gett.p_JobTaxNo).ToString();
        txtTaxReturn.Text = (gett.p_JobTaxReturn).ToString();
        drpAccountingFirm.DataSource = obj.Show_Firm();
        drpAccountingFirm.DataTextField = "FirmName";
        drpAccountingFirm.DataValueField = "FirmId";
        drpAccountingFirm.DataBind();
        drpAccountingFirm.SelectedIndex=drpAccountingFirm.Items.IndexOf(drpAccountingFirm.Items.FindByValue(gett.p_FirmId.ToString()));
       data = Convert.ToInt32(gett.p_JobId);

    }
   
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        nsworkflowmang.clsJob obj = new nsworkflowmang.clsJob();
        nsworkflowmang.clsJobPrp objprp = new nsworkflowmang.clsJobPrp();
        objprp.p_JobId = Convert.ToInt32(Request.QueryString["qrystrvar"]);
        objprp.p_JobName = txtJobName.Text;
        objprp.p_JobDesc = txtJobDesc.Text;
        objprp.p_JobTaxNo = Convert.ToInt32(txtTaxNumber.Text);
        objprp.p_JobFinclYrEnd = Convert.ToDateTime(txtFinanclYrEnd.Text);
        objprp.p_JobTrgtdate = Convert.ToDateTime(txtTargetDate.Text);
        objprp.p_JobFeeToClient = (float)Convert.ToDouble(txtFeeToClient.Text);
        objprp.p_JobEstHrs = (float)Convert.ToDouble(txtEstNoOfHours.Text);
        objprp.p_ParentJobId = Convert.ToInt32(txtParentJobId.Text);
        objprp.p_JobCode = Convert.ToInt32(txtJobCode.Text);
        objprp.p_JobTotalOutsourcingFee=(float)(Convert.ToDouble(txtOutSourcingFee.Text));
        obj.Update_Job(objprp);
        Response.Redirect("Job_View.aspx");
    }
}
