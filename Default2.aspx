<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
        <tr>
            <td>Enter First Name</td>
            <td>
                <asp:TextBox ID="txtFirstname" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Enter Last Name</td>
            <td>
                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Enter Address</td>
            <td>
                <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Enter City</td>
            <td>
                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Enter State (WA)</td>
            <td>
                <asp:TextBox ID="txtState" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Enter zipcode</td>
            <td>
                <asp:TextBox ID="txtZipCode" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Enter Email</td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Enter Home Phone</td>
            <td>
                <asp:TextBox ID="txtHomePhone" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Enter Donation</td>
            <td>
                <asp:TextBox ID="txtDonation" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" /></td>
            <td>
                <asp:TextBox ID="txtError" runat="server"></asp:TextBox></td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
