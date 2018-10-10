<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsertEmployee.aspx.cs" Inherits="Practices.InsertEmployee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="名字："></asp:Label>
        <asp:TextBox ID="name" runat="server"></asp:TextBox>
        <p>
            <asp:Label ID="Label2" runat="server" Text="年龄："></asp:Label>
            <asp:TextBox ID="age" runat="server"></asp:TextBox>
        </p>
        <asp:Label ID="Label3" runat="server" Text="公寓号："></asp:Label>
        <asp:TextBox ID="departmengid" runat="server"></asp:TextBox>
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="EmpDepartment" DataValueField="EmpDepartment">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [EmpDepartment] FROM [Employees]"></asp:SqlDataSource>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添加" />
        </p>
        <asp:Label ID="textshow" runat="server"></asp:Label>
    </form>
</body>
</html>
