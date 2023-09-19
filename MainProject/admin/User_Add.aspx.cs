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
using System.Web.Mail;
using System.Data.SqlClient;

public partial class admin_Default2 : System.Web.UI.Page
{
    String pass = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Convert.ToString(Session["UserName"]);
        if (Page.IsPostBack == false)
        {
            Display_UserLevel();
            Display_UserRate();
            Display_Timeleader();
            drp_Teamleader.Visible = false;
            lbl_Teamlead.Visible = false;

        }

    }
    public void Display_UserLevel()
    {
        WorkFlow.ClsUsr obj = new WorkFlow.ClsUsr();
        drp_Usr_Level.DataSource = obj.Display_UsrDesignation();
        drp_Usr_Level.DataBind();


    }
    public void Display_UserRate()
    {
        WorkFlow.ClsUsr obj = new WorkFlow.ClsUsr();
        drp_Usr_Rate.DataSource = obj.Display_SalaryDuration();
        drp_Usr_Rate.DataBind();
    }
    public void Display_Timeleader()
    {
        WorkFlow.ClsUsr obj = new WorkFlow.ClsUsr();
        drp_Teamleader.DataSource = obj.Display_TeamLead();
        drp_Teamleader.DataBind();
    }
    public String GerneratePassword()
    {
        string guidResult = System.Guid.NewGuid().ToString();
        guidResult = guidResult.Replace("-", string.Empty);
        guidResult = guidResult.Substring(0, 10);
        return guidResult;
    }
    public Boolean SendMail()
    {
        MailMessage mailobj = new MailMessage();
        try
        {
            mailobj.To = txt_Usr_EmailAdd.Text;
            mailobj.From = "designlab@conjoinix.com";
            mailobj.Subject = "WelCome To Work Flow Management";
            mailobj.Body = "Dear  " + txt_Usr_Name.Text + "\n \t\tWelcome to work flow management\nYou are successful register and your password is :" + pass + "\nAfter first login change your password";
            mailobj.Priority = MailPriority.High;
            SmtpMail.SmtpServer = "mail.instaxs.net";
            SmtpMail.Send(mailobj);
            return true;
        }
        catch (Exception ex)
        {
            lblmailerr.Text = "Mail Sending Fail " + ex.Message;
            return false;
        }
    }
    protected void drp_Usr_Level_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (drp_Usr_Level.SelectedIndex == 3)
        {
            drp_Teamleader.Visible = true;
            lbl_Teamlead.Visible = true;
        }
        else
        {
            drp_Teamleader.Visible = false;
            lbl_Teamlead.Visible = false;
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        if ((Convert.ToInt32(drp_Usr_Level.SelectedValue) > 0) && (Convert.ToInt32(drp_Usr_Rate.SelectedValue) > 0))
        {
            WorkFlow.ClsUsr obj = new WorkFlow.ClsUsr();
            WorkFlow.ClsUsrPrp objprp = new WorkFlow.ClsUsrPrp();
            objprp.UsrName = txt_Usr_Name.Text;
            objprp.UsrEmailAdd = txt_Usr_EmailAdd.Text;
            pass = GerneratePassword();
            objprp.UsrPassword = pass;
            objprp.UsrDesignation = Convert.ToInt32(drp_Usr_Level.SelectedValue);
            objprp.UsrSalary = Convert.ToInt32(txt_Usr_Rate.Text);
            objprp.UsrSalaryDuration = Convert.ToInt32(drp_Usr_Rate.SelectedValue);
            objprp.UsrRegDate = DateTime.Now;
            objprp.UsrStatus = 1;
            if (Convert.ToInt32(drp_Usr_Level.SelectedValue) == 2)
            {
                objprp.UsrUpperId = Convert.ToInt32(Session["UserId"].ToString());

            }
            else if (Convert.ToInt32(drp_Usr_Level.SelectedValue) == 3)
            {
                objprp.UsrUpperId = Convert.ToInt32(drp_Teamleader.SelectedValue);
            }
            else
            {
                objprp.UsrUpperId = Convert.ToInt32(Session["UserId"].ToString());
            }
            Boolean a;
            a = SendMail();
            if (a == true)
            {
                obj.Save_Usr(objprp);
            }
            txt_Usr_Name.Text = "";
            txt_Usr_EmailAdd.Text = "";
            txt_Usr_Rate.Text = "";
            Response.Redirect("User_View.aspx");
        }
        else
        {
            lblerr.Text = "Please Select At Least One Value From DropDownList";
        }
    }
    protected void btncan_Click(object sender, EventArgs e)
    {
        Response.Redirect("User_View.aspx");
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        txt_Usr_Name.Text = "";
        txt_Usr_Rate.Text = "";
        txt_Usr_EmailAdd.Text = "";
        drp_Usr_Level.SelectedIndex = 0;
        drp_Usr_Rate.SelectedIndex = 0;
        drp_Teamleader.SelectedIndex = 0;

    }
}
