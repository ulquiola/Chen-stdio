<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HelloWorld.aspx.cs" Inherits="HelloWorld.HelloWorld" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="result" runat="server" Width="100px"></asp:TextBox>
    </div>
        <asp:Button ID="Button2" runat="server" Height="27px" Text="7" Width="27px" OnClick="Button_Click" />
        <asp:Button ID="Button4" runat="server" Height="27px" Text="8" Width="27px" OnClick="Button_Click" />
        <asp:Button ID="Button11" runat="server" Height="27px" Text="9" Width="27px" OnClick="Button_Click" />
        <asp:Button ID="opration" runat="server" Height="27px" Text="+" Width="27px" OnClick="opration_Click" />
        <br />
        <asp:Button ID="Button5" runat="server" Height="27px" Text="4" Width="27px" OnClick="Button_Click" />
        <asp:Button ID="Button6" runat="server" Height="27px" Text="5" Width="27px" OnClick="Button_Click" />
        <asp:Button ID="Button7" runat="server" Height="27px" Text="6" Width="27px" OnClick="Button_Click" />
        <asp:Button ID="Button12" runat="server" Height="27px" Text="-" Width="27px" OnClick="opration_Click" />
        <br />
        <asp:Button ID="Button8" runat="server" Height="27px" Text="1" Width="27px" OnClick="Button_Click" />
        <asp:Button ID="Button9" runat="server" Height="27px" Text="2" Width="27px" OnClick="Button_Click" />
        <asp:Button ID="Button10" runat="server" Height="27px" Text="3" Width="27px" OnClick="Button_Click" />
        <asp:Button ID="Button13" runat="server" Height="27px" OnClick="Button13_Click" Text="=" Width="27px" />
    </form>
</body>
</html>
