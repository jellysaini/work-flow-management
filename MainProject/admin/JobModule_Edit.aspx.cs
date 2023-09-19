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
            Show_Edit_JobModule_Data();
        }
    }


    /***************Method to show data in text boxes of edit page***********/
    public void Show_Edit_JobModule_Data()
    {
        nsWorkFlowManagement.clsJobModule obj = new nsWorkFlowManagement.clsJobModule();
        nsWorkFlowManagement.clsJobModulePrp objprp = new nsWorkFlowManagement.clsJobModulePrp();
        objprp.p_ModuleId = Convert.ToInt32(Request.QueryString["qrystrvar"]);
        nsWorkFlowManagement.clsJobModulePrp gett = obj.Find_JobModule(objprp);
        txtModuleName.Text = gett.p_ModuleName;
        drpModuleType.DataSource = obj.Display_JobModuleType();
        drpModuleType.DataBind();
        drpModuleType.SelectedIndex =Convert.ToInt32(gett.p_ModuleType);
    }


    /***************Code on click of Update button************************/
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        nsWorkFlowManagement.clsJobModule obj = new nsWorkFlowManagement.clsJobModule();
        nsWorkFlowManagement.clsJobModulePrp objprp = new nsWorkFlowManagement.clsJobModulePrp();
        objprp.p_ModuleId = Convert.ToInt32(Request.QueryString["qrystrvar"]);
        objprp.p_ModuleName = txtModuleName.Text;
        objprp.p_ModuleType = drpModuleType.SelectedValue;
        obj.Update_JobModule(objprp);
        Response.Redirect("JobModule_View.aspx");
    }
}
