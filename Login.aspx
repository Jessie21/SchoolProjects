<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!-- //////////////////////MAKE ME THE START PAGE//////////////////// -->

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Log In- Job Hound</title>
</head>
<body>
    
    <form id="form1" runat="server">
    <div style="font-weight: 700">
    
        <p style="margin-left: 0px">
            Job Hound Login Page</p>
    
    </div>
        <div>

            Username:
            <asp:TextBox ID="UsernameLI_TB" MaxLength="20" runat="server" OnTextChanged="UsernameLI_TB_TextChanged"></asp:TextBox>
        <asp:Label ID="IncorrectInfoLI_LBL" runat="server"></asp:Label>
            <br />
            <br />
            Password: <asp:TextBox ID="PasswordLI_TB" MaxLength="30" type ="password" runat="server" OnTextChanged="PasswordLI_TB_TextChanged"></asp:TextBox>

            <br />
            <br />

        </div>
        <p>
            <asp:Button ID="loginLI_BTN" runat="server" OnClick="loginLI_BTN_Click" Text="Login" />
        </p>
        <p>
        <asp:LinkButton ID="LinkRegisterLI_LK" runat="server" OnClick="LinkToRegisterButton_Click">Not registered yet? Click here!</asp:LinkButton>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <div align="center">
        <asp:Image ID="JobHoundLogo" ImageUrl="~/Job Hound.jpg" runat="server" Height="170px" Width="170px" />
        </div>
    </form>
</body>
</html>
