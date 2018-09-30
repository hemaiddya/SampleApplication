<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WFH.aspx.cs" Inherits="FridayTrial.WFH" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/ViewBuildings.aspx">Go Back to Building Details</asp:HyperLink>
        <br />
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">

            <Columns>
            
            
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
            
             <asp:BoundField DataField="first_Name" HeaderText="first_Name" SortExpression="first_Name" />
            <asp:BoundField DataField="last_Name" HeaderText="last_Name" SortExpression="last_Name" />
            <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
        </Columns>
        </asp:GridView>
    </form>
</body>
</html>
