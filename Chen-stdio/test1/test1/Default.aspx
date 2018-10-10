<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="test1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       
        <div style="width:760px;margin:0 auto;background-color:antiquewhite">
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <a  href="Login.aspx">登录</a>
            <h3>热销图书</h3>
            <p>&nbsp;</p>
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <div style="width:170px;height:300px;padding-left:10px;padding-right:10px ">
                        <img  src='<%# Eval("images") %>' style="width:150px;height:150px"/>
                                               
                        <a><%# Eval("bookname") %></a>
                        <h4><%# Eval("price")%></h4>
                        <h4><%# Eval("commentNum")%></h4>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
    </form>
</body>
</html>
