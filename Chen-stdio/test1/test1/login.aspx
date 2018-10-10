<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="test1.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
        </div>
        <asp:TextBox ID="TxtPwd" runat="server" TextMode="Password"></asp:TextBox>
        <p>
            <asp:Button ID="Button1" runat="server" Text="登陆" OnClick="Button1_Click" />
        </p>
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </form>
</body>
</html>
