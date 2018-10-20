using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    string username;
    string password;

    protected void UsernameLI_TB_TextChanged(object sender, EventArgs e)
    {
        username = UsernameLI_TB.Text;
    }

    protected void PasswordLI_TB_TextChanged(object sender, EventArgs e)
    {
        password = PasswordLI_TB.Text;
    }

    protected void loginLI_BTN_Click(object sender, EventArgs e)
    {
        string RedirectPage;
        Service LoginClass = new Service();
        RedirectPage = LoginClass.Login(username, password);
        if (RedirectPage == "Employer")
        {
            Session["userName"] = username;
            Response.Redirect("Employer.aspx");

        }
        else if (RedirectPage == "Seeker")
        {
            Session["userName"] = username;
            Response.Redirect("JobSeeker.aspx");
        }
        else
        {
            IncorrectInfoLI_LBL.Text = "Invalid username or password!";
            IncorrectInfoLI_LBL.ForeColor = Color.Red;
            //Ensure to empty the strings as values are not kept after the else statement is executed.
            UsernameLI_TB.Text = String.Empty;
            PasswordLI_TB.Text = String.Empty;
        }  
    }

    protected void LinkToRegisterButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }


}