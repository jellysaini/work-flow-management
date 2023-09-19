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
using System.Collections.Generic;

public partial class admin_Default : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Convert.ToString(Session["UserName"]);
        DataList_Firm_Bind();
    }


/*****************Methode to bind datalist*****************************/
    public void DataList_Firm_Bind()
    {
        nsWorkFlowManagement.clsFirm obj = new nsWorkFlowManagement.clsFirm();
        datalist_for_firm_detail.DataSource = obj.Display_Firm();
        datalist_for_firm_detail.DataBind();
    }


    protected void datalist_for_firm_detail_EditCommand(object source, DataListCommandEventArgs e)
    {
        
        Response.Redirect("Firm_Edit.aspx?qrystrvar="+datalist_for_firm_detail.DataKeys[e.Item.ItemIndex]);
    }
  
}
