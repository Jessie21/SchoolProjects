using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using jobApp;

public partial class UpdateJob : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {

    }
    string DDLselect;
    string TBselect;
    int NDJob;

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DDLselect = DropDownList1.Text;
    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
        TBselect = TextBox2.Text;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Jobs filterJob = new Jobs();
        filterJob.Updatejob(DDLselect, TBselect,NDJob);
        DropDownList1.Text = "Select One";
        TextBox2.Text = String.Empty;
        Response.Redirect("Employer.aspx");
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        NDJob = int.Parse(TextBox1.Text);
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Employer.aspx");
    }
}