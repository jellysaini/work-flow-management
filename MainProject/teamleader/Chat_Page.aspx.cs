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
using System.Text;

public partial class teamleader_Default : System.Web.UI.Page
{
    chatDataContext db = new chatDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Text = Convert.ToString(Session["UserName"]);
        Label1.Text = "WelCome :" + Session["UserName"];
        ViewState["usr"] = Convert.ToString(Session["UserName"]);
        Label2.Text = "Login Room :" + Request.QueryString["romnam"];
        if (Page.IsPostBack == false)
        {
            InsertMessage("Login At " + DateTime.Now.ToString());
            GetMessage();
            GetLogUser();
        }
    }
    private void InsertMessage(String m)
    {
        tbmsg obj = new tbmsg
        {
            msgdsc = m,
            msgdat = DateTime.Now,
            msgfrmusr = Convert.ToInt32(Session["UserId"]),
            msgtousrcod = null,
            msgromcod = Convert.ToInt32(Request.QueryString["romcod"])
        };

        db.tbmsgs.InsertOnSubmit(obj);
        db.SubmitChanges();
    }
    private void GetMessage()
    {
        var q = from p in db.tbmsgs
                where p.msgromcod == Convert.ToInt32(Request.QueryString["romcod"])
                select p;
        StringBuilder sub = new StringBuilder();
        foreach (var t in q)
        {
            sub.Append(ViewState["usr"].ToString() + ":  " + t.msgdsc + "<br/>");
        }
        ltmsg.Text = sub.ToString();
    }
    public void GetLogUser()
    {
        var q = (from p in db.tblogs
                 where p.logusrcod == Convert.ToInt32(Session["UserId"])
                 select p).SingleOrDefault();
        if (q == null)
        {
            tblog obj = new tblog { logusrcod = Convert.ToInt32(Session["UserId"]), logromcod = Convert.ToInt32(Request.QueryString["romcod"]) };
            db.tblogs.InsertOnSubmit(obj);
            db.SubmitChanges();
        }
        StringBuilder sb = new StringBuilder();
        var q1 = from p in db.tblogs
                 where p.logromcod == Convert.ToInt32(Request.QueryString["romcod"])
                 select p;
        foreach (var t in q1)
        {
            sb.Append(t.tbUsr.UsrName + "<br/>");

        }
        ltuser.Text = sb.ToString();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text.Length > 0)
        {
            InsertMessage(TextBox1.Text);
            TextBox1.Text = "";
            TextBox1.Focus();
            GetMessage();
            GetLogUser();
        }
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        GetMessage();
        GetLogUser();

    }
    protected void logout_Click(object sender, EventArgs e)
    {
        var q = (from p in db.tblogs
                 where p.logusrcod == Convert.ToInt32(Session["UserId"])
                 select p).SingleOrDefault();
        var q1 = from p1 in db.tbmsgs
                 where p1.msgfrmusr == Convert.ToInt32(Session["UserId"])
                 select p1;
        if (q1 != null)
        {
            foreach (var selectedDetail in q1)
            {
                db.tbmsgs.DeleteOnSubmit(selectedDetail);
            }
            db.SubmitChanges();
        }
        if (q != null)
        {
            db.tblogs.DeleteOnSubmit(q);
            db.SubmitChanges();
            InsertMessage("Just Logout:" + Session["UserName"].ToString());
        }
        Response.Redirect("View_Jobs.aspx");
    }
}
