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
    }

    protected void chg_pass_Click(object sender, EventArgs e)
    {
        WorkFlow.ClsUsr obj = new WorkFlow.ClsUsr();
        Int32 UserId = Convert.ToInt32(Session["UserId"]);
        Int32 ret = obj.ChangePasword(txt_old_password.Text, txt_new_Password.Text, UserId);
        if (ret == -1)
        {
            lderr.Text = "Plaese Enter Correct old Password";
        }
        if (ret == 1)
        {
            lderr.Text = "Password Change Successfuly";
        }
        txt_old_password.Text = "";
        txt_new_Password.Text = "";
        txt_confrim_password.Text = "";
    }
}
