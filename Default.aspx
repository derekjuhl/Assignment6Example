<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Community Assist Charities</h1>
        <p>These are the services we offer</p>
        <p>
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <strong><%#Eval("ServiceName") %>:</strong> <%#Eval("ServiceDescription") %><br />
            </ItemTemplate>
        </asp:DataList>

        </p>
    </div>
    </form>
</body>
</html>
