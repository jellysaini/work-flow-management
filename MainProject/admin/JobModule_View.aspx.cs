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
            DataList_JobModule_Bind();
        }
    }
   

/*******************Method to bind DataList***********************/
    public void DataList_JobModule_Bind()
    {
        nsWorkFlowManagement.clsJobModule obj = new nsWorkFlowManagement.clsJobModule();
        DataList_For_Jobs_Module.DataSource = obj.Display_JobModule();
        DataList_For_Jobs_Module.DataBind();
    }
    protected void DataList_For_Jobs_Module_EditCommand(object source, DataListCommandEventArgs e)
    {
       Response.Redirect("JobModule_Edit.aspx?qrystrvar="+DataList_For_Jobs_Module.DataKeys[e.Item.ItemIndex]);
    }
    protected void DataList_For_Jobs_Module_DeleteCommand(object source, DataListCommandEventArgs e)
    {
        nsWorkFlowManagement.clsJobModule obj = new nsWorkFlowManagement.clsJobModule();
        nsWorkFlowManagement.clsJobModulePrp objprp = new nsWorkFlowManagement.clsJobModulePrp();
        objprp.p_ModuleId = Convert.ToInt32(DataList_For_Jobs_Module.DataKeys[e.Item.ItemIndex]);
        obj.Delete_JoModule(objprp);
        DataList_JobModule_Bind();
    }
}
