<%@ Page Title="Buidlings" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewBuildings.aspx.cs" Inherits="FridayTrial.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
       

    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AddBuilding.aspx">Add New Building</asp:HyperLink>

        
        
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="LinqDataSource1">
        <Columns>
            <asp:TemplateField HeaderText ="ID">
              <ItemTemplate>
            <asp:LinkButton Id="LinkButton1" OnClick="LinkButton1_Click" Text='<%#Eval("ID")%>' runat="server">LinkButton</asp:LinkButton>   
            </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            
        </Columns>
    </asp:GridView>
    
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="FridayTrial.DataClasses1DataContext" EnableInsert="True" EnableUpdate="True" EntityTypeName="" TableName="Buildings">
    </asp:LinqDataSource>
    
    <br />
    <br />

    
    <asp:Button ID="Button1"  runat="server" Text="WFH Employees" OnClick="Button1_Click" />
</asp:Content>
