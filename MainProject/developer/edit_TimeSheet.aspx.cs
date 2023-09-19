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

public partial class developer_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Convert.ToString(Session["UserName"]);
        if (Page.IsPostBack == false)
        {
            Data_bind();
        }
    }
    
    public void Data_bind()
    {
        nsTimeSheet.clsTimeSheet obj1 = new nsTimeSheet.clsTimeSheet();
        nsTimeSheet.clsTimeSheetPrp objprp = new nsTimeSheet.clsTimeSheetPrp();
        objprp=obj1.Find_TimeSheet(Convert.ToInt32(Request.QueryString["val"]));
        DateTime date= Convert.ToDateTime(objprp.p_AddOnDate);
        string st = string.Format("{0:MM/dd/yy}", date);
        txtDate.Text = st;
        DateTime start = Convert.ToDateTime(objprp.p_StartTime);
        string stt = string.Format("{0:t}", start);
        txtStartTime.Text = stt;
        DateTime end = Convert.ToDateTime(objprp.p_EndTime);
        string ett = string.Format("{0:t}", end);
        txtEndTime.Text = ett;
        WorkFlowDeveloper.ClsDeve obj2 = new WorkFlowDeveloper.ClsDeve();
        drpSelectJob.DataSource = obj2.DisplayJob_ToDeveloper(Convert.ToInt32(Session["UserId"].ToString()));
        drpSelectJob.DataTextField = "JobName";
        drpSelectJob.DataValueField = "JobId";
        drpSelectJob.DataBind();
        drpSelectJob.Items.Insert(0, new ListItem("Please Select Job", "0"));
        drpSelectJob.SelectedIndex = drpSelectJob.Items.IndexOf(drpSelectJob.Items.FindByValue(objprp.p_JobId.ToString()));
        nsWorkFlowManagement.clsJobModule obj3 = new nsWorkFlowManagement.clsJobModule();
        drpSelectModuleType.DataSource = obj3.Display_JobModule();
        drpSelectModuleType.DataTextField = "ModuleName";
        drpSelectModuleType.DataValueField = "ModuleId";
        drpSelectModuleType.DataBind();
        drpSelectModuleType.Items.Insert(0, new ListItem("Select Job's Module", "0"));
        drpSelectModuleType.SelectedIndex = drpSelectModuleType.Items.IndexOf(drpSelectModuleType.Items.FindByValue(objprp.p_JobModuleId.ToString()));
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        if (drpSelectJob.SelectedIndex > 0)
        {
            if (drpSelectModuleType.SelectedIndex > 0)
            {
                nsTimeSheet.clsTimeSheet obj = new nsTimeSheet.clsTimeSheet();
                nsTimeSheet.clsTimeSheetPrp objprp = new nsTimeSheet.clsTimeSheetPrp();
                objprp.p_JobModuleId = Convert.ToInt32(drpSelectModuleType.SelectedValue);
                objprp.p_JobId = Convert.ToInt32(drpSelectJob.SelectedValue);
                objprp.p_TimeSheetId = Convert.ToInt32(Request.QueryString["val"]);
                objprp.p_UserId = Convert.ToInt32(Session["UserId"]);
                obj.Update_TimeSheet(objprp);
                Response.Redirect("TimeSheet_View.aspx");
            }
            else
            {
                errll.Text = "Select Some value from DropDown List";
            }
        }
        else
        {
            errll.Text = "Select Some value from DropDown List";
        }
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("TimeSheet_View.aspx");
    }
}
