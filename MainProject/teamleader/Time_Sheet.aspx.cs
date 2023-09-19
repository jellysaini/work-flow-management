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

public partial class teamleader_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Convert.ToString(Session["UserName"]);
        if (Page.IsPostBack == false)
        {
            Display_JobName_In_Drp();
            Display_JobModuleName_In_Drp();
        }
    }

    /****************Method to display the JobName in Dropdown list*************/
    public void Display_JobName_In_Drp()
    {
        WorkFlowDeveloper.ClsDeve obj = new WorkFlowDeveloper.ClsDeve();
        drpSelectJob.DataSource = obj.DisplayJob_ToDeveloper(Convert.ToInt32(Session["UserId"].ToString()));
        drpSelectJob.DataTextField = "JobName";
        drpSelectJob.DataValueField = "JobId";
        drpSelectJob.DataBind();
        drpSelectJob.Items.Insert(0, new ListItem("Please Select Job", "0"));
    }

    /****************Method to display the JobModuleName in Dropdown list*************/
    public void Display_JobModuleName_In_Drp()
    {
        nsWorkFlowManagement.clsJobModule obj = new nsWorkFlowManagement.clsJobModule();
        drpSelectModuleType.DataSource = obj.Display_JobModule();
        drpSelectModuleType.DataTextField = "ModuleName";
        drpSelectModuleType.DataValueField = "ModuleId";
        drpSelectModuleType.DataBind();
        drpSelectModuleType.Items.Insert(0, new ListItem("Select Job's Module", "0"));
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        if (drpSelectJob.SelectedIndex > 0)
        {
            if (drpSelectModuleType.SelectedIndex > 0)
            {
                nsTimeSheet.clsTimeSheet obj = new nsTimeSheet.clsTimeSheet();
                nsTimeSheet.clsTimeSheetPrp objprp = new nsTimeSheet.clsTimeSheetPrp();
                objprp.p_AddOnDate = Convert.ToDateTime(txtDate.Text);

                DateTime dt = Convert.ToDateTime(txtDate.Text);
                dt = Convert.ToDateTime(txtDate.Text);
                string st = String.Format("{0:MM/dd/yy}", dt);
                String newst = st + " " + txtEndTime.Text;
                DateTime dt1 = Convert.ToDateTime(txtDate.Text);
                dt1 = Convert.ToDateTime(txtDate.Text);
                string st1 = String.Format("{0:MM/dd/yy}", dt);
                String newst1 = st + " " + txtStartTime.Text;
                TimeSpan ts = Convert.ToDateTime(newst) - Convert.ToDateTime(newst1);
                if (ts.Hours <= 0 && ts.Minutes <= 0 && ts.Seconds <= 0)
                {
                    errll.Text = "Please Enter the correct Start Time or End Time";
                    return;
                }
                DateTime ldt = obj.GetLastTime(Convert.ToInt32(Session["UserId"].ToString()),Convert.ToDateTime(txtDate.Text));
                TimeSpan getchk = Convert.ToDateTime(newst1) - ldt;
                String chk = String.Format("{0:MM/dd/yy}", ldt);
                String chk1 = String.Format("{0:MM/dd/yy}", DateTime.Now);
                if(chk==chk1)
                {
                    if (getchk.Hours <= 0 && getchk.Minutes <= 0)
                    {
                        errll.Text = "Your TimeSheet Time Is too close to your last TimeSheet Time";
                        return;
                    }
                }
                objprp.p_EndTime = Convert.ToDateTime(newst);
                objprp.p_StartTime = Convert.ToDateTime(newst1);
                objprp.p_UserId = Convert.ToInt32(Session["UserId"]);
                objprp.p_JobId = Convert.ToInt32(drpSelectJob.SelectedValue);
                objprp.p_JobModuleId = Convert.ToInt32(drpSelectModuleType.SelectedValue);
                obj.Save_TimeSheet(objprp);
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
}