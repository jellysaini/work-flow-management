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

public partial class teamleader_Default : System.Web.UI.Page
{
    String d = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Convert.ToString(Session["UserName"]);
        RPTR_Show_Developer.Visible = false;
        lbl_Developer.Visible = false;
        lbl_Developer_Email.Visible = false;


        if (Page.IsPostBack == false)
        {
            Display_Developer();
        }
    }

    public void Display_Developer()
    {
        WorkFlow.ClsUsr obj = new WorkFlow.ClsUsr();
        WorkFlow.ClsUsrPrp objprp = new WorkFlow.ClsUsrPrp();
        objprp.UsrId = Convert.ToInt32(Session["UserId"].ToString());
        GRD_TeamLeader.DataSource = obj.Display_Developer_To_Sentmail(objprp);
        GRD_TeamLeader.DataBind();
    }

    private void Get_Email()
    {
        Int32 i;

        

        for (i = 0; i < GRD_TeamLeader.Rows.Count; i++)
        {
            CheckBox k;
            k = (CheckBox)(GRD_TeamLeader.Rows[i].Cells[0].FindControl("chk"));
            if (k.Checked)
            {
                d += GRD_TeamLeader.DataKeys[i].Value.ToString() + ",";
            }
        }
        if (d.Length <= 0)
        {
            errlab.Text = "Please Select al least one check box";
            return;
        }
        d = d.Substring(0, d.Length - 1);
        lbl_Developer.Text = d;
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
        lbl_Developer_Email.Text = es;


        RPTR_Show_Developer.DataSource = ds;
        RPTR_Show_Developer.DataBind();
    }





    protected void GRD_TeamLeader_RowDataBound(object sender, GridViewRowEventArgs e)
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
        if (d.Length <= 0)
        {
            errlab.Text = "Please Select al least one check box";
            return;
        }
        String es2 = "";
        es2 = lbl_Developer_Email.Text;
        MailMessage mailobj = new MailMessage();
        mailobj.To = es2;
        mailobj.From = "designlab@conjoinix.com";
        mailobj.Subject = "WelCome To Work Flow Management";
        mailobj.Body = txt_Developer_Contents.Text;
        SmtpMail.SmtpServer = "mail.instaxs.net";
        SmtpMail.Send(mailobj);
        txt_Developer_Contents.Text = "";
        for (int i = 0; i < GRD_TeamLeader.Rows.Count; i++)
        {
            CheckBox k;
            k = (CheckBox)(GRD_TeamLeader.Rows[i].Cells[0].FindControl("chk"));
            if (k.Checked)
            {
                k.Checked = false;
            }
        }




    }

    protected void btn_cancel_Click(object sender, EventArgs e)
    {
        txt_Developer_Contents.Text = String.Empty;
    }


    protected void GRD_TeamLeader_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GRD_TeamLeader.PageIndex = e.NewPageIndex;
        Display_Developer();
    }
}