using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
     
    }

    string username;
    string password;
    string email;
    string accountType;

    protected void usernameRG_TB_TextChanged(object sender, EventArgs e)
    {
        username = usernameRG_TB.Text;
    }

    protected void passwordRG_TB_TextChanged(object sender, EventArgs e)
    {
        password = passwordRG_TB.Text;
    }

    protected void emailRG_TB_TextChanged(object sender, EventArgs e)
    {
        email = emailRG_TB.Text;
    }

    protected void accTypeRG_DDL_SelectedIndexChanged(object sender, EventArgs e)
    {
        accountType = accTypeRG_DDL.Text;
    }

    protected void createAccountRG_BTN_Click(object sender, EventArgs e)
    {
        bool userExists;
        Service RegisterClass = new Service();
        userExists = RegisterClass.Register(username, password, email, accountType);
        if (userExists)
        {
            UserTakenRG_LBL.Text = "Username already exists.";
            UserTakenRG_LBL.ForeColor = Color.Red;
            //Ensure to empty the strings and change the DDL because values are not kept after the if statement is executed.
            usernameRG_TB.Text = String.Empty;
            passwordRG_TB.Text = String.Empty;
            emailRG_TB.Text = String.Empty;
            accTypeRG_DDL.Text = "Select One";
            
        }
        else
            Response.Redirect("ConfirmRegister.aspx");
    }



    protected void backToLoginRG_LINK_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }

   
}