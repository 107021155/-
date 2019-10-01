<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>107021155</title>
    <style type="text/css">
        .auto-style1 {
            color: #FFFF66;
            font-size: xx-large;
            background-color: #0000FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>

    <a href="Default.aspx">Default.aspx</a>

    
        <br />
        <span class="auto-style1">賴俊佑的網站</span><br class="auto-style1" />
        <br />
        <asp:Label ID="Label1" runat="server" BackColor="Yellow" ForeColor="#FF3300" Text="姓名:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="160px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" BackColor="Red" Font-Size="Medium" ForeColor="Lime" OnClick="Button1_Click" Text="確定" />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Default2.aspx">next page</asp:HyperLink>

    
    </div>
    </form>
</body>
</html>
