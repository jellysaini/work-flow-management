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
            DisplayDataInDataList();
        }
    }
    public void DisplayDataInDataList()
    {
        WorkFlow.ClsUsr obj = new WorkFlow.ClsUsr();
        Int32 uid= Convert.ToInt32(Session["UserId"].ToString());
        Int32 jid = Convert.ToInt32(Request.QueryString["val2"].ToString());
        dtlstForJobAssignment.DataSource = obj.Display_Users_To_TeamLeader(uid, jid);
        dtlstForJobAssignment.DataBind();
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        WorkFlowDeveloper.ClsDeve obj = new WorkFlowDeveloper.ClsDeve();
        WorkFlowDeveloper.ClsDevPrp objprp = new WorkFlowDeveloper.ClsDevPrp();
        for (Int32 i = 0; i < dtlstForJobAssignment.Items.Count; i++)
        {
            if (((CheckBox)(dtlstForJobAssignment.Items[i].FindControl("chkSelect"))).Checked == true)
            {
                Int32 id = Convert.ToInt32(dtlstForJobAssignment.DataKeys[i]);
                Int32 aid = Convert.ToInt32(Request.QueryString["val1"].ToString());
                Int32 jid = Convert.ToInt32(Request.QueryString["val2"].ToString());
                Int32 uid = Convert.ToInt32(Request.QueryString["val3"].ToString());
                objprp.UsrId = id;
                objprp.AllocateId = aid;
                objprp.JobId = jid;
                objprp.TeamLeadId = uid;
                obj.Save_Rec(objprp,DateTime.Now,0);
            }
        }
        for (Int32 i = 0; i < dtlstForJobAssignment.Items.Count; i++)
        {
            if (((CheckBox)(dtlstForJobAssignment.Items[i].FindControl("chkSelect"))).Checked == false)
            {
                Int32 id = Convert.ToInt32(dtlstForJobAssignment.DataKeys[i]);
                Int32 aid = Convert.ToInt32(Request.QueryString["val1"].ToString());
                Int32 jid = Convert.ToInt32(Request.QueryString["val2"].ToString());
                Int32 uid = Convert.ToInt32(Request.QueryString["val3"].ToString());
                objprp.UsrId = id;
                objprp.AllocateId = aid;
                objprp.JobId = jid;
                objprp.TeamLeadId = uid;
                obj.Save_Rec(objprp, DateTime.Now,1);
            }
        }
        Response.Redirect("View_Jobs.aspx");
    }
    protected void dtlstForJobAssignment_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        if ((e.Item.ItemType == ListItemType.Item) || (e.Item.ItemType == ListItemType.AlternatingItem))
        {
          
            if ((((HiddenField)(e.Item.FindControl("hdnval"))).Value)!="")
            {
                ((CheckBox)(e.Item.FindControl("chkSelect"))).Checked = true;
            }
            else
            {
                ((CheckBox)(e.Item.FindControl("chkSelect"))).Checked = false;
            }
        }        
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("View_Jobs.aspx");
    }
}
