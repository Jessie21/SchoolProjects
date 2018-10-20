<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JobSeeker.aspx.cs" Inherits="JobSeeker" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Job Seeker Homepage- Job Hound</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-weight: 700">
    
        Welcome <asp:Literal runat="server" id="username" EnableViewState="false"></asp:Literal><br />
        <br />
        All jobs:</div>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="ObjectDataSource1" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="jobID" HeaderText="jobID" SortExpression="jobID" />
                    <asp:BoundField DataField="jobName" HeaderText="jobName" SortExpression="jobName" />
                    <asp:BoundField DataField="jobLoc" HeaderText="jobLoc" SortExpression="jobLoc" />
                    <asp:BoundField DataField="jobComp" HeaderText="jobComp" SortExpression="jobComp" />
                    <asp:BoundField DataField="jobSalMin" HeaderText="jobSalMin" SortExpression="jobSalMin" />
                    <asp:BoundField DataField="jobSalMax" HeaderText="jobSalMax" SortExpression="jobSalMax" />
                    <asp:BoundField DataField="jobHours" HeaderText="jobHours" SortExpression="jobHours" />
                    <asp:BoundField DataField="jobPosition" HeaderText="jobPosition" SortExpression="jobPosition" />
                    <asp:BoundField DataField="jobEduLvl" HeaderText="jobEduLvl" SortExpression="jobEduLvl" />
                    <asp:BoundField DataField="jobMajor" HeaderText="jobMajor" SortExpression="jobMajor" />
                    <asp:BoundField DataField="jobDesc" HeaderText="jobDesc" SortExpression="jobDesc" />
                    <asp:BoundField DataField="jobReq" HeaderText="jobReq" SortExpression="jobReq" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetAll" TypeName="jobApp.Jobs"></asp:ObjectDataSource>
        </p>
        <p>
            <asp:DropDownList ID="SelectionJS_DDL" required ="required" runat="server" OnSelectedIndexChanged="SelectionJS_DDL_SelectedIndexChanged">
                <asp:ListItem disabled="disabled">Select One</asp:ListItem>         
                <asp:ListItem>Title</asp:ListItem>
                <asp:ListItem>Location</asp:ListItem>
                <asp:ListItem>Company</asp:ListItem>
                <asp:ListItem>Minimum Salary</asp:ListItem>
                <asp:ListItem>Maximum Salary</asp:ListItem>
                <asp:ListItem>Position</asp:ListItem>
                <asp:ListItem>Education Level</asp:ListItem>
                <asp:ListItem>Major</asp:ListItem>
            </asp:DropDownList>
        &nbsp;&nbsp;
            <asp:TextBox ID="SelectionJS_TB" MaxLength="75" required ="required" runat="server" OnTextChanged="SelectionJS_TB_TextChanged"></asp:TextBox>
        &nbsp;
            <asp:Button ID="SubmitSelectionJS_BTN" runat="server" Text="Submit" OnClick="SubmitSelectionJS_BTN_Click" />
        </p>
        <p style="font-weight: 700">
            Searched jobs (if this is blank, no results were returned):</p>
        <p>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="jobName" HeaderText="Job Title" SortExpression="jobName" />
                    <asp:BoundField DataField="jobLoc" HeaderText="Location" SortExpression="jobLoc" />
                    <asp:BoundField DataField="jobComp" HeaderText="Compamy" SortExpression="jobComp" />
                    <asp:BoundField DataField="jobSalMin" HeaderText="Minimum Salary" SortExpression="jobSalMin" />
                    <asp:BoundField DataField="jobSalMax" HeaderText="Maximum Salary" SortExpression="jobSalMax" />
                    <asp:BoundField DataField="jobHours" HeaderText="Hours" SortExpression="jobHours" />
                    <asp:BoundField DataField="jobPosition" HeaderText="Position" SortExpression="jobPosition" />
                    <asp:BoundField DataField="jobEduLvl" HeaderText="Education Level" SortExpression="jobEduLvl" />
                    <asp:BoundField DataField="jobMajor" HeaderText="Major" SortExpression="jobMajor" />
                    <asp:BoundField DataField="jobDesc" HeaderText="Job Description" SortExpression="jobDesc" />
                    <asp:BoundField DataField="jobReq" HeaderText="Job Requirements" SortExpression="jobReq" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
        </p>
        <p>
            <asp:Button ID="LogoutJS_BTN" formnovalidate="true" runat="server" OnClick="LogoutJS_BTN_Click" Text="Logout" />
        </p>
        <div align="center">
        <asp:Image ID="JobHoundLogo" ImageUrl="~/Job Hound.jpg" runat="server" Height="170px" Width="170px" />
        </div>
    </form>
</body>
</html>
