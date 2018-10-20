<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddJob.aspx.cs" Inherits="AddJob" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Job- Job Hound</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <strong>Job Hound&#39;s Add Job</strong></div>
        <p>
            Job Name:
            <asp:TextBox ID="JobNameAJ_TB" required="required" MaxLength="50" runat="server" pattern=".*[^ ].*" OnTextChanged="JobNameAJ_TB_TextChanged"></asp:TextBox>
        </p>
        <p>
            Job Location:
            <asp:TextBox ID="JobLocAJ_TB" required="required" MaxLength="50" runat="server" pattern=".*[^ ].*" OnTextChanged="JobLocAJ_TB_TextChanged"></asp:TextBox>
        </p>
        <p>
            Company Name:
            <asp:TextBox ID="CompNameAJ_TB" required="required" MaxLength ="30" runat="server" pattern=".*[^ ].*" OnTextChanged="CompNameAJ_TB_TextChanged"></asp:TextBox>
        </p>
        <p>
            Salary Range:&nbsp; $
            <asp:TextBox ID="SalMinAJ_TB" required="required" runat="server" pattern=".*[^ ].*" OnTextChanged="SalMinAJ_TB_TextChanged"></asp:TextBox>
&nbsp;to $
            <asp:TextBox ID="SalMaxAJ_TB" required="required" runat="server" pattern=".*[^ ].*" OnTextChanged="SalMaxAJ_TB_TextChanged"></asp:TextBox>
&nbsp;(Do not use commas)&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="SalMinAJ_TB" runat="server" ErrorMessage="Numbers Only" ValidationExpression="\d+"></asp:RegularExpressionValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="SalMaxAJ_TB" runat="server" ErrorMessage="Numbers Only" ValidationExpression="\d+"></asp:RegularExpressionValidator>
        &nbsp;</p>
        <p>
            Work Hours: <asp:TextBox ID="WorkHrsAJ_TB" required="required" MaxLength="50" runat="server" pattern=".*[^ ].*" OnTextChanged="WorkHrsAJ_TB_TextChanged"></asp:TextBox>
        </p>
        <p>
            Position:
            <asp:DropDownList ID="PositionAJ_DDL" required="required" runat="server" OnSelectedIndexChanged="PositionAJ_DDL_SelectedIndexChanged">
                <asp:ListItem disabled="disabled">Select One</asp:ListItem>
                <asp:ListItem>Part Time</asp:ListItem>
                <asp:ListItem>Full Time</asp:ListItem>
                <asp:ListItem>Temp</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            Education Level and Major:
            <asp:DropDownList ID="EduLvlAJ_DDL" required="required" runat="server" OnSelectedIndexChanged="EduLvlAJ_DDL_SelectedIndexChanged">
                <asp:ListItem disabled="disabled">Select One</asp:ListItem>
                <asp:ListItem>None</asp:ListItem>
                <asp:ListItem>GED</asp:ListItem>
                <asp:ListItem>High School Diploma</asp:ListItem>
                <asp:ListItem>Associate</asp:ListItem>
                <asp:ListItem>Bachelors</asp:ListItem>
                <asp:ListItem>Masters</asp:ListItem>
                <asp:ListItem>PhD</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:DropDownList>
&nbsp;
            <asp:TextBox ID="JobMajorAJ_TB" MaxLength="50" required="required" runat="server" pattern=".*[^ ].*" OnTextChanged="JobMajorAJ_TB_TextChanged"></asp:TextBox>
        &nbsp;(If no major required, please specify &quot;None&quot;)</p>
        <p>
            Job Description:&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="JobDescAJ_TB" TextMode="MultiLine" required="required" MaxLength="5000" runat="server" pattern=".*[^ ].*" Height="150px" Width="300px" OnTextChanged="JobDescAJ_TB_TextChanged"></asp:TextBox>
        </p>
        <p id="Job">
            Job Requirements: <asp:TextBox ID="JobReqAJ_TB" required="required" MaxLength="5000" TextMode="MultiLine" runat="server" pattern=".*[^ ].*" Height="150px" Width="300px" OnTextChanged="JobReqAJ_TB_TextChanged"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="LinkToConfirmAddJobAJ_BTN" runat="server" Text="Add Job" OnClick="LinkToConfirmAddJobAJ_BTN_Click" />
        </p>
        <asp:LinkButton ID="ReturnHomePageAJ_LNK" runat="server" OnClick="ReturnHomePageAJ_LNK_Click">Never mind, I do not want to add a job. </asp:LinkButton>
        <div align="center">
        <asp:Image ID="JobHoundLogo" ImageUrl="~/Job Hound.jpg" runat="server" Height="170px" Width="170px" />
        </div>
    </form>
</body>
</html>
