<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FridayTrial._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AddEmployee.aspx">Add New Employee</asp:HyperLink>
     
        
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="LinqDataSource1">
        <Columns>
            
            
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Building_id" nullDisplayText= null HeaderText="Building_id" SortExpression ="Building Id" />
                     
            <asp:BoundField DataField="first_Name" HeaderText="first_Name" SortExpression="first_Name" />
            <asp:BoundField DataField="last_Name" HeaderText="last_Name" SortExpression="last_Name" />
            <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
        </Columns>
    </asp:GridView>
    
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="FridayTrial.DataClasses1DataContext" EnableInsert="True" EnableUpdate="True" EntityTypeName="" TableName="Employees">
    </asp:LinqDataSource>
    </br>
    <asp:Label ID="Label1" runat="server" Text="Total Salary :"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Max Salary:"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Min Salary :"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Average Salary:"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
    
    </asp:Content>
