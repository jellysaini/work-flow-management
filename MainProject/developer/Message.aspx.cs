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
using System.Data.SqlClient;
using System.Web.Mail;
using System.IO;

public partial class developer_Default : System.Web.UI.Page
{
    String d = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Convert.ToString(Session["UserName"]);
    
        RPTR_Show_All.Visible = false;
        lbl_All_Email.Visible = false;
        lbl_All.Visible = false;

        if (Page.IsPostBack == false)
        {
            Display_All();
        }
    }

    public void Display_All()
    {
        WorkFlow.ClsUsr obj = new WorkFlow.ClsUsr();
        WorkFlow.ClsUsrPrp objprp = new WorkFlow.ClsUsrPrp();
        GRD_MailToAll.DataSource = obj.Display_All_To_Sentmail(objprp);
        GRD_MailToAll.DataBind();
    }

    private void Get_Email()
    {
        Int32 i;
       for (i = 0; i < GRD_MailToAll.Rows.Count; i++)
        {
            CheckBox k;
            k = (CheckBox)(GRD_MailToAll.Rows[i].Cells[0].FindControl("chk"));
            if (k.Checked)
            {
                d += GRD_MailToAll.DataKeys[i].Value.ToString() + ",";
            }
        }
       if (d.Length <= 0)
       {
           errlab.Text = "Please Select al least one check box";
           return;
       }
        d = d.Substring(0, d.Length - 1);
        lbl_All.Text = d;
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
        lbl_All_Email.Text = es;


        RPTR_Show_All.DataSource = ds;
        RPTR_Show_All.DataBind();
    }
  
    protected void GRD_MailToAll_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.Header)
        {
            ////Find the checkbox control in header and add an attribute
            ((CheckBox)e.Row.FindControl("chk")).Attributes.Add("onclick", "javascript:SelectAll('" + ((CheckBox)e.Row.FindControl("chk")).ClientID + "')");

        }
    }
    protected void btn_cancel_Click(object sender, EventArgs e)
    {
        txt_AllMail_Contents.Text = String.Empty;
    }
    protected void btn_send_Click(object sender, EventArgs e)
    {
        Get_Email();
        if (d.Length <= 0)
        {
            errlab.Text = "Please Select al least one check box";
            return;
        }
        String es2 = "";
        es2 = lbl_All_Email.Text;
        MailMessage mailobj = new MailMessage();
        mailobj.To = es2;
        mailobj.From = "designlab@conjoinix.com";
        mailobj.Subject = "WelCome To Work Flow Management";
        mailobj.Body = txt_AllMail_Contents.Text;
        SmtpMail.SmtpServer = "mail.instaxs.net";
        SmtpMail.Send(mailobj);
        txt_AllMail_Contents.Text = "";
        for (int i = 0; i < GRD_MailToAll.Rows.Count; i++)
        {
            CheckBox k;
            k = (CheckBox)(GRD_MailToAll.Rows[i].Cells[0].FindControl("chk"));
            if (k.Checked)
            {
                k.Checked = false;
            }
        }

    }
    protected void GRD_MailToAll_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GRD_MailToAll.PageIndex = e.NewPageIndex;
        Display_All();
    }
}
