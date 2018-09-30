<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs" Inherits="FridayTrial.AddEmployee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Go Back to Employee Details</asp:HyperLink>
        <br />
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
                  <asp:Label ID="Label2" runat="server" Text="Building ID"></asp:Label>
                 </td> 
                <td colspan ="2">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                 </td>
            </tr>
            <tr>
                <td>
                  <asp:Label ID="Label3" runat="server" Text="First Name"></asp:Label>
                </td>
                 <td colspan ="2">

                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
             </tr>
            <tr>
               <td>
                <asp:Label ID="Label4" runat="server" Text="Last Name"></asp:Label>
              </td>
                 <td colspan ="2">
                 <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
              </td>
         </tr>

            <tr>
                <td>
                  <asp:Label ID="Label5" runat="server" Text="Salary"></asp:Label>
                    </td>
                 <td colspan="2">
                   
                  <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
           </tr> 
      </table>

        <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />
    
    </div>
    </form>
</body>
</html>
