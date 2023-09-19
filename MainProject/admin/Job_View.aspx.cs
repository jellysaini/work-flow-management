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

public partial class admin_Default : System.Web.UI.Page
{
    nsworkflowmang.clsJob obj = new nsworkflowmang.clsJob();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Convert.ToString(Session["UserName"]);
        
            DataList_Bind();
    }
    public void DataList_Bind()
    {
        datalist_for_JobDetail.DataSource = obj.Display_Job();
        datalist_for_JobDetail.DataBind();
    }

    protected void datalist_for_JobDetail_CancelCommand(object source, DataListCommandEventArgs e)
    {
        Response.Redirect("Allocate_Teamleader.aspx?val=" + datalist_for_JobDetail.DataKeys[e.Item.ItemIndex]);

    }
    protected void datalist_for_JobDetail_EditCommand(object source, DataListCommandEventArgs e)
    {
        Response.Redirect("Job_Edit.aspx?qrystrvar="+datalist_for_JobDetail.DataKeys[e.Item.ItemIndex]);
    }
    protected void datalist_for_JobDetail_DeleteCommand(object source, DataListCommandEventArgs e)
    {
        nsworkflowmang.clsJob obj = new nsworkflowmang.clsJob();
        obj.Delete_Job(Convert.ToInt32(datalist_for_JobDetail.DataKeys[e.Item.ItemIndex]));
        DataList_Bind();
    }
}
