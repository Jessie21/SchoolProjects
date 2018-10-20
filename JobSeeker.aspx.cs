using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using jobApp;

public partial class JobSeeker : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userName"] == null)
            Response.Redirect("Login.aspx");
        username.Text = (string)Session["userName"];
    }

    string DDLselect;
    string TBselect;

    protected void LogoutJS_BTN_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }

    protected void SelectionJS_DDL_SelectedIndexChanged(object sender, EventArgs e)
    {
        DDLselect = SelectionJS_DDL.Text;
    }
        
    protected void SelectionJS_TB_TextChanged(object sender, EventArgs e)
    {
        TBselect = SelectionJS_TB.Text;
    }

    protected void SubmitSelectionJS_BTN_Click(object sender, EventArgs e)
    {
        Jobs filterJob = new Jobs();
        GridView2.DataSource = filterJob.GetSome(DDLselect, TBselect);     
        GridView2.DataBind();
        SelectionJS_DDL.Text = "Select One";
        SelectionJS_TB.Text = String.Empty;

    }








    
}