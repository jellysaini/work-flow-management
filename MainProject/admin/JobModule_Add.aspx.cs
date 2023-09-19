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
            Show_ModuleType();
        }
    }


/***********************Methode to display the JobStatus in the DropDownList**************/
    public void Show_ModuleType()
    {
        nsWorkFlowManagement.clsJobModule obj = new nsWorkFlowManagement.clsJobModule();
        drpModuleType.DataSource = obj.Display_JobModuleType();
        drpModuleType.DataBind();
    }


/*********************Code for click of Save Button****************************************/
    protected void btnSave_Click(object sender, EventArgs e)
    {
        nsWorkFlowManagement.clsJobModule obj = new nsWorkFlowManagement.clsJobModule();
        nsWorkFlowManagement.clsJobModulePrp objprp = new nsWorkFlowManagement.clsJobModulePrp();
        objprp.p_ModuleName = txtModuleName.Text;
        objprp.p_ModuleType = drpModuleType.SelectedValue;
        if (drpModuleType.SelectedIndex > 0)
        {
            obj.Save_JobModule(objprp);
            Response.Redirect("JobModule_View.aspx");
        }
        else
        {
            Label2.Text = "You must select a value from DropDownList";
        }
       
    }



/***********************Code for click of Cancel Button************************************/
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("JobModule_View.aspx");
    }


/***********************Code for the click of Reset Button*******************************/
    protected void tbnReset_Click(object sender, EventArgs e)
    {
        txtModuleName.Text = String.Empty;
        drpModuleType.SelectedIndex = 0;
    }
}
