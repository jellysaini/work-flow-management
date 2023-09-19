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

public partial class login_login : System.Web.UI.Page
{
    string forget_pass = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btn_lgn_Click(object sender, EventArgs e)
    {
        WorkFlow.ClsLgnUsr obj = new WorkFlow.ClsLgnUsr();
        Int32 a;
        Int32 UsrDesignation;
        String UsrName;
        a = obj.LgnUsr(usr.Text, pass.Text, out UsrDesignation, out UsrName);
        if (a == -1)
        {
            usr.Text = "";
            lgnerrmsg.Text = "UserName/Password Incorrect";
        }
        else
        {
            Session["UserName"] = UsrName;
            Session["UserId"] = a;
            WorkFlow.ClsUsrPrp objprp = new WorkFlow.ClsUsrPrp();
            objprp.UsrId = a;
            objprp.UsrLstLgnDate = DateTime.Now;
            obj.Update_LstLgnDate(objprp);
            FormsAuthenticationTicket tkt = new FormsAuthenticationTicket(1, usr.Text, DateTime.Now, DateTime.Now.AddHours(1), false, UsrDesignation.ToString(), FormsAuthentication.FormsCookiePath);
            string st = FormsAuthentication.Encrypt(tkt);
            HttpCookie ck = new HttpCookie(FormsAuthentication.FormsCookieName, st);
            Response.Cookies.Add(ck);
            if (UsrDesignation == 1)
            {
                Response.Redirect("admin/User_View.aspx");
            }
            else if (UsrDesignation == 2)
            {
                Response.Redirect("teamleader/View_Jobs.aspx");
            }
            else if (UsrDesignation == 3)
            {
                Response.Redirect("developer/View_Jobs.aspx");
            }
            
            
            

        }
    }
    protected void forget_send_Click(object sender, EventArgs e)
    {
        WorkFlow.ClsUsr obj = new WorkFlow.ClsUsr();
        forget_pass=GerneratePassword();
        Int32 ret = obj.ForgetPassword(forget_email.Text, forget_pass);
            
        if (ret == 0)
        {
            lbl_forget_err.Text = "This email address is not authenticated!";
        }
        if (ret == 1)
        {
            lbl_forget_err.Text= "New Password has been sent to your email";
            SendMail();
        }
        forget_name.Text = "";
        forget_email.Text = "";
        
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
            mailobj.To = forget_email.Text;
            mailobj.From = "designlab@conjoinix.com";
            mailobj.Subject = "WelCome To Work Flow Management";
            mailobj.Body = "Dear  " + forget_name.Text + "\n \t\tYour new password is: "+forget_pass+"  Change your password after login";
            mailobj.Priority = MailPriority.High;
            SmtpMail.SmtpServer = "mail.instaxs.net";
            SmtpMail.Send(mailobj);
            return true;
        }
        catch (Exception ex)
        {
            lbl_forget_err.Text = "Mail Sending Fail " + ex.Message;
            return false;
        }
    }
}
