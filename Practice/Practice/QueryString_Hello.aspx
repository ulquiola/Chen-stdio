<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QueryString_Hello.aspx.cs" Inherits="Practice.QueryString_Hello" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Label ID="Label1" runat="server" Text="姓名："></asp:Label>
        <asp:TextBox ID="Nameh" runat="server"></asp:TextBox>
        <p>
            <asp:Label ID="Label2" runat="server" Text="电子邮件："></asp:Label>
            <asp:TextBox ID="Emailh" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="电话："></asp:Label>
            <asp:TextBox ID="PhoneNumberh" runat="server"></asp:TextBox>
        </p>
    </div>
    </form>
</body>
</html>
