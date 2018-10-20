<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Employer.aspx.cs" Inherits="Employer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employer Homepage- Job Hound</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-weight: 700">
    
        Welcome <asp:Literal ID="username" runat="server" EnableViewState="false"></asp:Literal> <br />
        <br />
        List of all jobs on the website:<br />
        <br />
        
       
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="ObjectDataSource2" ForeColor="Black" GridLines="Vertical">
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
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetAll" TypeName="jobApp.Jobs"></asp:ObjectDataSource>
        <br />
        <br />
            <asp:Button ID="BTNtoAddJobEM_BTN" formnovalidate="true" runat="server" OnClick="BTNtoAddJobEM_BTN_Click" Text="Add a New Job" />
        
       
        &nbsp;&nbsp;
        <asp:Button ID="Button1" formnovalidate="true" runat="server" OnClick="Button1_Click" Text="Update Job" />
        <asp:Button ID="LogoutEm_BTN" formnovalidate="true" runat="server" OnClick="LogoutEm_BTN_Click" Text="Logout" style="margin-left: 19px" Width="58px" />
        
       
        <br />
        <br />
        See your companies jobs (If this is blank, it means no results were returned):

        
       
        </div>
        <br />
            <asp:Panel ID="p" runat="server" DefaultButton="SearchCompEM_TB">
                Company Name:&nbsp;<asp:TextBox ID="CompNameEM_TB" runat="server" pattern=".*[^ ].*" required="required"></asp:TextBox>
&nbsp;
            <asp:Button ID="SearchCompEM_TB" runat="server" Text="Submit" />
                </asp:Panel>
        </p>
        <p>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="ObjectDataSource1" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="jobID" HeaderText="Job ID" SortExpression="jobID" />
                    <asp:BoundField DataField="jobName" HeaderText="Job Title" SortExpression="jobName" />
                    <asp:BoundField DataField="jobLoc" HeaderText="Location" SortExpression="jobLoc" />
                    <asp:BoundField DataField="jobComp" HeaderText="Company" SortExpression="jobComp" />
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
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetSome" TypeName="jobApp.Jobs">
                <SelectParameters>
                    <asp:Parameter DefaultValue="jobCompany" Name="type" Type="String" />
                    <asp:ControlParameter ControlID="CompNameEM_TB" DefaultValue="" Name="desc" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>

        </p>
        <div align="center">
        <asp:Image ID="JobHoundLogo" ImageUrl="~/Job Hound.jpg" runat="server" Height="170px" Width="170px" />
        </div>
    </form>
</body>
</html>
