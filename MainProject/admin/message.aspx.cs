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
using System.IO;
public partial class admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Text = Convert.ToString(Session["UserName"]);
        if (Page.IsPostBack == false)
        {
            mailgrdview.Visible = false;
            txt_contents.Visible = false;
            btn_send.Visible = false;
            repeater1.Visible = false;
            label1.Visible = false;
            label2.Visible = false;
        }

    }
    protected void drp_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (drp.SelectedIndex > 0)
        {
            mailgrdview.Visible = true;
            txt_contents.Visible = true;
            btn_send.Visible = true;
            

        }
    }
    private void Get_Email()
    {
        Int32 i;

        String d = "";

        for (i = 0; i < mailgrdview.Rows.Count; i++)
        {
            CheckBox k;
            k = (CheckBox)(mailgrdview.Rows[i].Cells[0].FindControl("chk"));
            if (k.Checked)
            {
                d += mailgrdview.DataKeys[i].Value.ToString() + ",";
            }
        }
        //Label1.Text = d;
        d = d.Substring(0, d.Length - 1);
        label1.Text = d;
        String qry;
        String es = "";
        Int32 j = 0;

        qry = "select * from tbusr where Usrid in (" + d + ")";
        SqlDataAdapter adp = new SqlDataAdapter(qry, ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        DataSet ds = new DataSet();
        adp.Fill(ds);

        while (j < ds.Tables[0].Rows.Count)
        {
            es += ds.Tables[0].Rows[j]["UsrEmailAdd"].ToString() + ",";
            j++;
        }
        es = es.Substring(0, es.Length - 1);
        label2.Text = es;


        repeater1.DataSource = ds;
        repeater1.DataBind();
    }
    
    protected void mailgrdview_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.Header)
        {
            ////Find the checkbox control in header and add an attribute
            ((CheckBox)e.Row.FindControl("chk")).Attributes.Add("onclick", "javascript:SelectAll('" + ((CheckBox)e.Row.FindControl("chk")).ClientID + "')");

        }
    }
    protected void btn_send_Click(object sender, EventArgs e)
    {
        Get_Email();
       

        String es2 = "";
        es2 = label2.Text;
        MailMessage mailobj = new MailMessage();
        mailobj.To = es2;
        mailobj.From = "designlab@conjoinix.com";
        mailobj.Subject = "WelCome To Work Flow Management";
        mailobj.Body = txt_contents.Text;
        SmtpMail.SmtpServer = "mail.instaxs.net";
        SmtpMail.Send(mailobj);

    }
}
