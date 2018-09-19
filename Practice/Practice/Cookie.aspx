<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cookie.aspx.cs" Inherits="Practice.Cookie" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Label ID="Label1" runat="server" Text="姓名："></asp:Label>
        <asp:TextBox ID="Name" runat="server"></asp:TextBox>
        <p>
            <asp:Label ID="Label2" runat="server" Text="电子邮件："></asp:Label>
            <asp:TextBox ID="Email" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="电话："></asp:Label>
            <asp:TextBox ID="PhoneNumber" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="Button1" runat="server" Text="数据保存到Cookie中" OnClick="Button1_Click1" style="height: 21px" />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click1" Text="清空" />
        <p>
            <asp:Button ID="Button2" runat="server" Text="读取客户端Cookie中的数据，并显示" OnClick="Button2_Click" />
        </p>
    </form>
</body>
</html>
