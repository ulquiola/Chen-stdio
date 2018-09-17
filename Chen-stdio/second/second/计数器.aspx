<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="计数器.aspx.cs" Inherits="second.计数器" %>

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
        <asp:Button ID="Button1" runat="server" Text="单击我" OnClick="Button1_Click" /><br /><br />
        你一共点击了<asp:TextBox ID="cishu" runat="server" Width="46px"></asp:TextBox>
&nbsp; 次<br /><br />

    </form>
</body>
</html>
