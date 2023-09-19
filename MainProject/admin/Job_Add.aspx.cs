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
    nsworkflowmang.clsJob obj = new nsworkflowmang.clsJob();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Convert.ToString(Session["UserName"]);
        if (Page.IsPostBack == false)
        {
            DisplayFirmName();
        }
    }
    public void DisplayFirmName()
    {
        drpAccountingFirm.DataSource = obj.Show_Firm();
        drpAccountingFirm.DataTextField = "FirmName";
        drpAccountingFirm.DataValueField = "FirmId";
        drpAccountingFirm.DataBind();
    }

/******************On click of save button*****************************/
    protected void btnSave_Click(object sender, EventArgs e)
    {
        if (drpAccountingFirm.SelectedIndex > 0)
        {
            nsworkflowmang.clsJobPrp objprp = new nsworkflowmang.clsJobPrp();
            objprp.p_FirmId = Convert.ToInt32(drpAccountingFirm.SelectedValue);
            objprp.p_JobAccounts = (float)Convert.ToDouble(txtAccounts.Text);
            objprp.p_JobAnnualCompanyReturn = (float)Convert.ToDouble(txtAnnualReturn.Text);
            objprp.p_JobBenchmarking = (float)Convert.ToDouble(txtBenchmarking.Text);
            objprp.p_JobCashFlowForecast = (float)Convert.ToDouble(txtCashFlowForecast.Text);
            objprp.p_JobCode = Convert.ToInt32(txtJobCode.Text);
            objprp.p_JobDesc = txtJobDesc.Text;
            objprp.p_JobEstHrs = (float)Convert.ToDouble(txtEstNoOfHours.Text);
            objprp.p_JobFeeToClient = (float)Convert.ToDouble(txtFeeToClient.Text);
            objprp.p_JobFinclYrEnd = Convert.ToDateTime(txtFinanclYrEnd.Text);
            objprp.p_JobGSTReturn = (float)Convert.ToDouble(txtGSTReturn.Text);
            objprp.p_JobMainContact = txtMainContact.Text;
            objprp.p_JobName = txtJobName.Text;
            objprp.p_JobProfitOptimizer = (float)Convert.ToDouble(txtProfitOptimizer.Text);
            objprp.p_JobTaxNo = Convert.ToInt32(txtTaxNumber.Text);
            objprp.p_JobTaxReturn = (float)Convert.ToDouble(txtTaxReturn.Text);
            objprp.p_JobStatus = 1;
            objprp.p_JobTotalOutsourcingFee = (float)Convert.ToDouble(txtOther.Text);
            objprp.p_JobTrgtdate = Convert.ToDateTime(txtTargetDate.Text);
            objprp.p_ParentJobId = Convert.ToInt32(txtParentJobId.Text);
            obj.Save_Job(objprp);
            Response.Redirect("Job_View.aspx");
        }
        else
        {
            lblerr.Text = "Please Select One Value From The DropDownList";
        }
     
    }

/******************Methode to display detail of firm on selection***************/
    public void Display_Firm_Data_On_Selection()
    {
        nsWorkFlowManagement.clsFirm obj = new nsWorkFlowManagement.clsFirm();
        nsWorkFlowManagement.clsFirmPrp objprp = new nsWorkFlowManagement.clsFirmPrp();
        objprp.p_FirmId = Convert.ToInt32(drpAccountingFirm.SelectedValue);
        //obj.Show_Job_Data_On_Selection(objprp);
        nsWorkFlowManagement.clsFirmPrp gett = obj.Show_Job_Data_On_Selection(objprp);
        txtMainContact.Text = (gett.p_FirmContactPerson).ToString();
        txtBenchmarking.Text = (gett.p_FirmBenchMarking).ToString();
        txtCashFlowForecast.Text = (gett.p_FirmCashFlow).ToString();
        txtProfitOptimizer.Text = (gett.p_FirmProfit).ToString();
        txtGSTReturn.Text = (gett.p_FirmGstReturn).ToString();
        txtAnnualReturn.Text = (gett.p_FirmAnnualCompanyReturn).ToString();
        txtOther.Text = (gett.p_FirmOtherFee).ToString();
        txtAccounts.Text = (gett.p_FirmAccount).ToString();
        txtTaxReturn.Text = (gett.p_FirmTaxReturn).ToString();
    }


   
    protected void drpAccountingFirm_SelectedIndexChanged1(object sender, EventArgs e)
    {
        Display_Firm_Data_On_Selection();
    }
}
