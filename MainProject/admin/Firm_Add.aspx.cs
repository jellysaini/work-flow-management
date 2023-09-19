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
    }
    /********************* The code for click of save button*******************************************/

    protected void btnSave_Click(object sender, EventArgs e)
    {

        nsWorkFlowManagement.clsFirm obj = new nsWorkFlowManagement.clsFirm();
        nsWorkFlowManagement.clsFirmPrp objprp = new nsWorkFlowManagement.clsFirmPrp();
        objprp.p_FirmName = txtAccountingFirm.Text;
        objprp.p_FirmContactPerson = txtContactPerson.Text;
        objprp.p_FirmEmailAddress = txtEmailAddress.Text;
        objprp.p_FirmAccount = (float)Convert.ToDouble( txtAccounts.Text);
        objprp.p_FirmTaxReturn =(float)( Convert.ToDouble(txtTaxReturn.Text));
        objprp.p_FirmGstReturn = (float)(Convert.ToDouble(txtTaxReturn.Text));
        objprp.p_FirmAddress = txtAddress.Text;
        objprp.p_FirmCityTown = txtCityTown.Text;
        objprp.p_FirmCountry = txtCountry.Text;
        objprp.p_FirmPostalCode = Convert.ToInt32(txtPostalCode.Text);
        objprp.p_FirmWorkPhone = Convert.ToInt32(txtWorkPhone.Text);
        objprp.p_FirmFacsimle = txtFacsimle.Text;
        objprp.p_FirmWebAddress = txtWebAddress.Text;
        objprp.p_FirmBenchMarking = (float)Convert.ToDouble( txtBenchmarking.Text);
        objprp.p_FirmCashFlow = (float)Convert.ToDouble( txtCashFlowForecast.Text);
        objprp.p_FirmProfit = Convert.ToInt32(txtProfitOptimizer.Text);
        objprp.p_FirmAnnualCompanyReturn =(float) (Convert.ToDouble(txtAnnualCompanyReturn.Text));
        objprp.p_FirmHourlyFee =(float)( Convert.ToDouble(txtHourlyFee.Text));
        objprp.p_FirmOtherFee =(float)( Convert.ToDouble(txtOtherFee.Text));
        objprp.p_FirmDescription = txtDescription.Text;
        objprp.p_FirmStatus = 1;
        objprp.p_FirmRegnDate = DateTime.Now;
        obj.Save_Firm(objprp);
        Empty_TextBoxes();
        Response.Redirect("Firm_View.aspx");
    }

/***********Method to empty the text boxes*********************************************/

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


/***********************Code to execute on clik of Reset Button*******************************/
    protected void btnReset_Click(object sender, EventArgs e)
    {
        Empty_TextBoxes();
    }


/*******************Code for Reet button**********************************************/
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Firm_View.aspx");
    }
}
