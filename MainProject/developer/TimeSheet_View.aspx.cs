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

public partial class developer_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Convert.ToString(Session["UserName"]);
        if (Page.IsPostBack == false)
        {
            Dis();
        }
    }
    public void Dis()
    {
        nsTimeSheet.clsTimeSheet obj = new nsTimeSheet.clsTimeSheet();
        dtlstForJobAssignment.DataSource = obj.Display_TimeSheet(Convert.ToInt32(Session["UserId"].ToString()));
        dtlstForJobAssignment.DataBind();

    }
    protected void dtlstForJobAssignment_DeleteCommand(object source, DataListCommandEventArgs e)
    {
        nsTimeSheet.clsTimeSheet obj = new nsTimeSheet.clsTimeSheet();
        obj.Delete_TimeSheet(Convert.ToInt32(dtlstForJobAssignment.DataKeys[e.Item.ItemIndex]));
        Dis();
    }
    protected void dtlstForJobAssignment_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        DateTime curDate = DateTime.Now.AddDays(-2);
        if ((e.Item.ItemType == ListItemType.Item) || (e.Item.ItemType == ListItemType.AlternatingItem))
        {
            DateTime lstdate = Convert.ToDateTime(((HiddenField)(e.Item.FindControl("hd"))).Value);
            if (lstdate <= curDate)
            {
                LinkButton lk;
                lk = ((LinkButton)(e.Item.FindControl("lnkEdit")));
                lk.Visible = false;
            }
        }
    }
    protected void dtlstForJobAssignment_EditCommand(object source, DataListCommandEventArgs e)
    {
        Response.Redirect("edit_TimeSheet.aspx?val="+dtlstForJobAssignment.DataKeys[e.Item.ItemIndex]);
    }
}
