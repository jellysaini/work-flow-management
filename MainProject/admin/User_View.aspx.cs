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
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Convert.ToString(Session["UserName"]);
        Datalist_Bind();
    }
    public void Datalist_Bind()
    {
        WorkFlow.ClsUsr obj = new WorkFlow.ClsUsr();
        datalist_for_UserDetail.DataSource = obj.Display_Usr();
        datalist_for_UserDetail.DataBind();

    }
    protected void datalist_for_UserDetail_DeleteCommand(object source, DataListCommandEventArgs e)
    {
        WorkFlow.ClsUsr obj = new WorkFlow.ClsUsr();
        WorkFlow.ClsUsrPrp objprp = new WorkFlow.ClsUsrPrp();
        objprp.UsrId = Convert.ToInt32(datalist_for_UserDetail.DataKeys[e.Item.ItemIndex]);
        obj.Delete_Usr(objprp);
        Datalist_Bind();
    }
    protected void datalist_for_UserDetail_EditCommand(object source, DataListCommandEventArgs e)
    {
        Response.Redirect("User_Edit.aspx?selectRec="+datalist_for_UserDetail.DataKeys[e.Item.ItemIndex]);
    }
}
