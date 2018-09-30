<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddBuilding.aspx.cs" Inherits="FridayTrial.AddBuilding" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Go Back to Building Details</asp:HyperLink>
        <br />
        <br></br>

        <table>
            <tr>
               <td>
               <asp:Label ID="Label1" runat="server" Text="Id"></asp:Label>
               </td>
                <td colspan ="2">
                 <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                 </td>
              </tr>

            <tr>
                <td>
                  <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                 </td> 
                <td colspan ="2">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                 </td>
            </tr>
            <tr>
                <td>
                  <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
                </td>
                 <td colspan ="2">

                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
             </tr>
            
               </table>

        <br />
        <asp:Button ID="Button2" runat="server" Text="Save" OnClick="Button2_Click" />
    
    </div>
    </form>
</body>
</html>
