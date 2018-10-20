using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Employer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userTest"] == null)
            Response.Redirect("Login.aspx");
        username.Text = (string)Session["userName"];
    }

    

    protected void BTNtoAddJobEM_BTN_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddJob.aspx");
    }

    protected void LogoutEm_BTN_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("UpdateJob.aspx");
    }
}