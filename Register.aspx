<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register- Job Hound</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-weight: 700">
    
        Register for Job Hound<br />
        <br />
        All fields are required!<br />
        <br />
        </div>

        <div>

            Username: <asp:TextBox ID="usernameRG_TB" MaxLength="20" required =" required" pattern=".*[^ ].*" runat="server" OnTextChanged="usernameRG_TB_TextChanged"></asp:TextBox>
&nbsp;(Up to 20 characters)&nbsp;
            <asp:Label ID="UserTakenRG_LBL" runat="server"></asp:Label>
            <br />
            <br />
            Password:
            <asp:TextBox ID="passwordRG_TB" MaxLength="30" MinLength="8" type ="password" required="required" pattern=".*[^ ].*" runat="server" OnTextChanged="passwordRG_TB_TextChanged"></asp:TextBox>
&nbsp;(Between 8 and 30 characters)<br />
            <br />
            Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="emailRG_TB" type="email" MaxLength="45" required="required" pattern=".*[^ ].*" runat="server" OnTextChanged="emailRG_TB_TextChanged"></asp:TextBox>
            <br />
            <br />
            Account Type:&nbsp;
            <asp:DropDownList ID="accTypeRG_DDL" required="required" runat="server" OnSelectedIndexChanged="accTypeRG_DDL_SelectedIndexChanged">
                <asp:ListItem disabled="disabled">Select One</asp:ListItem>
                <asp:ListItem>Job Seeker</asp:ListItem>
                <asp:ListItem>Employer</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;

            </div>
        <p>
            <asp:Button ID="createAccountRG_BTN" runat="server" OnClick="createAccountRG_BTN_Click" Text="Create Account" />
        </p>
        <asp:LinkButton ID="backToLoginRG_LINK" runat="server" OnClick="backToLoginRG_LINK_Click">I actually don't need to register, take me back to the login page.</asp:LinkButton>
        <br />
        <br />
    <div align="center">
        <asp:Image ID="JobHoundLogo" ImageUrl="~/Job Hound.jpg" runat="server" Height="170px" Width="170px" />
        </div>
    </form>
</body>
</html>