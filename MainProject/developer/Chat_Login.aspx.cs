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
    chatDataContext db = new chatDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Convert.ToString(Session["UserName"]);
        if (Page.IsPostBack == false)
        {
            AddRoom();
        }


    }
    private void AddRoom()
    {
        var q = from p in db.tbroms
                select p;
        DropDownList1.DataTextField = "romnam";
        DropDownList1.DataValueField = "romcod";
        DropDownList1.DataSource = q;
        DropDownList1.DataBind();
    }
   
    
    protected void img_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Chat_Page.aspx?romcod=" + DropDownList1.SelectedValue + "&romnam=" + DropDownList1.SelectedItem);
    }
}
