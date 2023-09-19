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

public partial class admin_Default3 : System.Web.UI.Page
{
    WorkFlow.ClsUsr obj = new WorkFlow.ClsUsr();
    WorkFlow.ClsUsrPrp objprp = new WorkFlow.ClsUsrPrp();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Convert.ToString(Session["UserName"]);
        if (Page.IsPostBack == false)
        {
            ShowData();
        }
    }
    public void ShowData()
    {      
        objprp.UsrId = Convert.ToInt32(Request.QueryString["selectRec"]);
        WorkFlow.ClsUsrPrp get = obj.Find_Usr(objprp);
        txt_edit_Usr_Name.Text = get.UsrName;
        txt_edit_Usr_Email.Text = get.UsrEmailAdd;
        txt_edit_Usr_Rate.Text = Convert.ToString(get.UsrSalary);
        drp_edit_Usr_level.DataSource = obj.Display_UsrDesignation();
        drp_edit_Usr_level.DataBind();
        drp_edit_Usr_level.SelectedIndex = get.UsrDesignation;
        if (drp_edit_Usr_level.SelectedIndex == 2 || drp_edit_Usr_level.SelectedIndex == 1)
        {
            drp_edit_Teamleader.Visible = false;
            lbl_Teamlead.Visible = false;

        }
        else
        {
            drp_edit_Teamleader.DataSource = obj.Display_TeamLead();
            drp_edit_Teamleader.DataBind();
            drp_edit_Teamleader.SelectedIndex = drp_edit_Teamleader.Items.IndexOf(drp_edit_Teamleader.Items.FindByValue(get.UsrUpperId.ToString()));
        }
        drp_edit_Usr_Rate.DataSource = obj.Display_SalaryDuration();
        drp_edit_Usr_Rate.DataBind();
        drp_edit_Usr_Rate.SelectedIndex = get.UsrSalaryDuration;
        drp_edit_Usr_Status.DataSource = obj.Display_Status();
        drp_edit_Usr_Status.DataBind();
        drp_edit_Usr_Status.SelectedIndex = get.UsrStatus;
    }

    protected void txt_edit_update_Click(object sender, EventArgs e)
    {
        objprp.UsrId = Convert.ToInt32(Request.QueryString["selectRec"]);
        objprp.UsrName = txt_edit_Usr_Name.Text;
        objprp.UsrEmailAdd = txt_edit_Usr_Email.Text;
        objprp.UsrDesignation=Convert.ToInt32(drp_edit_Usr_level.SelectedValue);
        objprp.UsrSalary = Convert.ToInt32(txt_edit_Usr_Rate.Text);
        objprp.UsrSalaryDuration = Convert.ToInt32(drp_edit_Usr_Rate.SelectedValue);
        objprp.UsrStatus = Convert.ToInt32(drp_edit_Usr_Status.SelectedValue);
        if (drp_edit_Usr_level.SelectedIndex == 2 || drp_edit_Usr_level.SelectedIndex == 1)
        {
            objprp.UsrUpperId = obj.Find_Usr(objprp).UsrUpperId;
        }
        else
        {
            objprp.UsrUpperId = Convert.ToInt32(drp_edit_Teamleader.SelectedValue);
        }
        if (txt_edit_pass.Text == "" || txt_edit_confirm_pass.Text == "")
        {
            objprp.UsrPassword = obj.Find_Usr(objprp).UsrPassword;

        }
        else
        {
            objprp.UsrPassword = txt_edit_pass.Text;
        }
        obj.Update_Usr(objprp);
        Response.Redirect("User_View.aspx");
    }
    protected void txt_edit_cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("User_View.aspx");
    }
    protected void txt_edit_refresh_Click(object sender, EventArgs e)
    {
        ShowData();
    }
}
