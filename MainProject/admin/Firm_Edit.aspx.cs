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
        //Label3.Text = Request.QueryString["qrystrvar"].ToString();
        if (Page.IsPostBack == false)
        {
            Show_Edit_Firm_Data();
        }
    }
/***************Method to show data in text boxes of edit page***********/
    public void Show_Edit_Firm_Data()
    {
        nsWorkFlowManagement.clsFirm obj = new nsWorkFlowManagement.clsFirm();
        nsWorkFlowManagement.clsFirmPrp objprp = new nsWorkFlowManagement.clsFirmPrp();
        objprp.p_FirmId = Convert.ToInt32(Request.QueryString["qrystrvar"]);
        nsWorkFlowManagement.clsFirmPrp gett = obj.Find_Firm(objprp);
        txtAccountingFirm.Text = gett.p_FirmName;
        txtAccounts.Text = (gett.p_FirmAccount).ToString();
        txtAccountingFirm.Text = gett.p_FirmName;
        txtAddress.Text =gett.p_FirmAddress;
        txtAnnualCompanyReturn.Text = (gett.p_FirmAnnualCompanyReturn).ToString();
        txtBenchmarking.Text = (gett.p_FirmBenchMarking).ToString();
        txtCashFlowForecast.Text = (gett.p_FirmCashFlow).ToString();
        txtCityTown.Text = gett.p_FirmCityTown;
        txtContactPerson.Text = gett.p_FirmContactPerson;
        txtCountry.Text = gett.p_FirmCountry;
        txtDescription.Text = gett.p_FirmDescription;
        txtEmailAddress.Text = gett.p_FirmEmailAddress;
        txtFacsimle.Text = gett.p_FirmFacsimle;
        txtGSTReturn.Text = (gett.p_FirmGstReturn).ToString();
        txtHourlyFee.Text = (gett.p_FirmHourlyFee).ToString();
        txtOtherFee.Text = (gett.p_FirmOtherFee).ToString();
        txtPostalCode.Text = (gett.p_FirmPostalCode).ToString();
        txtProfitOptimizer.Text = (gett.p_FirmProfit).ToString();
        txtTaxReturn.Text = (gett.p_FirmTaxReturn).ToString();
        txtWebAddress.Text = gett.p_FirmWebAddress;
        txtWorkPhone.Text = (gett.p_FirmWorkPhone).ToString();
        
        drpStatus.DataSource = obj.Display_Status();
        drpStatus.DataBind();
        drpStatus.SelectedIndex = gett.p_FirmStatus;
    }
   
/*************** Update code on click of update button*******************/
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        nsWorkFlowManagement.clsFirm obj = new nsWorkFlowManagement.clsFirm();
        nsWorkFlowManagement.clsFirmPrp objprp = new nsWorkFlowManagement.clsFirmPrp();
        objprp.p_FirmAccount = (float)(Convert.ToDouble(txtAccounts.Text));
        objprp.p_FirmAddress = txtAddress.Text;
        objprp.p_FirmAnnualCompanyReturn = (float)(Convert.ToDouble(txtAnnualCompanyReturn.Text));
        objprp.p_FirmBenchMarking =(float)(Convert.ToDouble( txtBenchmarking.Text));
        objprp.p_FirmCashFlow =(float)(Convert.ToDouble( txtCashFlowForecast.Text));
        objprp.p_FirmCityTown = txtCityTown.Text;
        objprp.p_FirmContactPerson = txtContactPerson.Text;
        objprp.p_FirmCountry = txtCountry.Text;
        objprp.p_FirmDescription = txtDescription.Text;
        objprp.p_FirmEmailAddress = txtEmailAddress.Text;
        objprp.p_FirmFacsimle = txtFacsimle.Text;
        objprp.p_FirmGstReturn = (float)(Convert.ToDouble(txtGSTReturn.Text));
        objprp.p_FirmHourlyFee =(float)( Convert.ToDouble(txtHourlyFee.Text));
        objprp.p_FirmName = txtAccountingFirm.Text;
        objprp.p_FirmOtherFee =(float)( Convert.ToDouble(txtOtherFee.Text));
        objprp.p_FirmPostalCode = Convert.ToInt32(txtPostalCode.Text);
        objprp.p_FirmProfit = Convert.ToInt32(txtProfitOptimizer.Text);
        objprp.p_FirmTaxReturn = (float)(Convert.ToDouble(txtTaxReturn.Text));
        objprp.p_FirmWebAddress = txtWebAddress.Text;
        objprp.p_FirmWorkPhone = Convert.ToInt32(txtWorkPhone.Text);
        objprp.p_FirmId = Convert.ToInt32(Request.QueryString["qrystrvar"]);
        objprp.p_FirmStatus = Convert.ToInt32(drpStatus.SelectedValue);
        obj.Update_Firm(objprp);
       
       
        Response.Redirect("Firm_View.aspx");
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        Empty_TextBoxes();
    }

    private void Empty_TextBoxes()
    {
        txtAccountingFirm.Text = String.Empty;
        txtAccounts.Text = String.Empty;
        txtAddress.Text = String.Empty;
        txtAnnualCompanyReturn.Text = String.Empty;
        txtBenchmarking.Text = String.Empty;
        txtCashFlowForecast.Text = String.Empty;
        txtCityTown.Text = String.Empty;
        txtContactPerson.Text = String.Empty;
        txtCountry.Text = String.Empty;
        txtDescription.Text = String.Empty;
        txtEmailAddress.Text = String.Empty;
        txtFacsimle.Text = String.Empty;
        txtGSTReturn.Text = String.Empty;
        txtHourlyFee.Text = String.Empty;
        txtOtherFee.Text = String.Empty;
        txtPostalCode.Text = String.Empty;
        txtProfitOptimizer.Text = String.Empty;
        txtTaxReturn.Text = String.Empty;
        txtWebAddress.Text = String.Empty;
        txtWorkPhone.Text = String.Empty;
        txtAccountingFirm.Focus();
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Firm_View.aspx");
    }
  
}
