<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdateJob.aspx.cs" Inherits="UpdateJob" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Job- Job Hound</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-weight: 700">
    
        Update Job:</div>
        Job ID:
        <asp:TextBox ID="TextBox1" required="required" pattern=".*[^ ].*" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="TextBox1" runat="server" ErrorMessage="Numbers Only!" ValidationExpression="\d+"></asp:RegularExpressionValidator>
        <br />
        <br />
        Column to Edit:
        <asp:DropDownList ID="DropDownList1" required="required" runat="server" Height="54px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" style="margin-top: 0px; margin-bottom: 0px">
            <asp:ListItem disabled="disabled">Select One</asp:ListItem>
            <asp:ListItem>Title</asp:ListItem>
            <asp:ListItem>Location</asp:ListItem>
            <asp:ListItem>Company</asp:ListItem>
            <asp:ListItem>Minimum Salary</asp:ListItem>
            <asp:ListItem>Maximum Salary</asp:ListItem>
            <asp:ListItem>Hours</asp:ListItem>
            <asp:ListItem>Position</asp:ListItem>
            <asp:ListItem>Education Level</asp:ListItem>
            <asp:ListItem>Major</asp:ListItem>
            <asp:ListItem>Description</asp:ListItem>
            <asp:ListItem>Requirements</asp:ListItem>
        </asp:DropDownList>
        &nbsp;<br />
        <br />
        New Value:<asp:TextBox ID="TextBox2" runat="server" required="required" pattern=".*[^ ].*" OnTextChanged="TextBox2_TextChanged" style="margin-left: 5px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update" />
         <br />
        <br />
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Never mind, I don&#39;t want to update my job info.</asp:LinkButton>
         <div align="center">
        <asp:Image ID="JobHoundLogo" ImageUrl="~/Job Hound.jpg" runat="server" Height="170px" Width="170px" />
        </div>
    </form>
</body>
</html>
