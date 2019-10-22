<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="ch06_images_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Image ID="Image1" runat="server" ImageUrl="~/ch06/images/company_title.jpg" />
        <br />
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/ch06/images/buttons/shop-click.jpg" OnClick="ImageButton1_Click" />
        <asp:ImageButton ID="ImageButton2" runat="server" Height="62px" ImageUrl="~/ch06/images/buttons/art_btn.jpg" OnClick="ImageButton2_Click1" Width="114px" />
        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/ch06/images/buttons/upload_btn.jpg" OnClick="ImageButton3_Click1" />
        <br />
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
                <div class="auto-style1">
                    <br />
                    <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/ch06/images/background/carbg.jpg" Height="300px" Width="450px">
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        姓名:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <br />
                        性別:<asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                            <asp:ListItem Selected="True">男</asp:ListItem>
                            <asp:ListItem Selected="True">女</asp:ListItem>
                        </asp:RadioButtonList>
                        <br />
                        您想購買以下哪些產品?<br />
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>蘋果</asp:ListItem>
                            <asp:ListItem>奇異果</asp:ListItem>
                            <asp:ListItem>芭樂</asp:ListItem>
                            <asp:ListItem>香蕉</asp:ListItem>
                            <asp:ListItem>橘子</asp:ListItem>
                            <asp:ListItem>柳丁</asp:ListItem>
                        </asp:CheckBoxList>
                        <br />
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="加入購物車" />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </asp:Panel>
                    <br />
                    <asp:Panel ID="Panel2" runat="server" BackImageUrl="~/ch06/images/background/checkbg.jpg" Height="300px" Visible="False" Width="450px">
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="上一步" />
                        &nbsp;<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" style="height: 21px" Text="下一步" />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </asp:Panel>
                    <br />
                    <asp:Panel ID="Panel3" runat="server" BackImageUrl="~/ch06/images/background/finishbg.jpg" Height="300px" Width="450px" Visible="False">
                        <div class="auto-style1">
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            購物完成!<br />
                            <br />
                            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="回主畫面" />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                        </div>
                    </asp:Panel>
                    <br />
                    <br />
                </div>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <asp:Panel ID="Panel4" runat="server" BackImageUrl="~/ch06/images/background/bg.jpg" Height="174px" Width="450px">
                    <br />
                    &nbsp;&nbsp;
                    <asp:Image ID="Image2" runat="server" Height="140px" ImageUrl="~/ch06/images/art_info.jpg" Width="405px" />
                </asp:Panel>
                <br />
                &nbsp;&nbsp;
            </asp:View>
            <asp:View ID="View3" runat="server">
                <asp:Panel ID="Panel5" runat="server" BackImageUrl="~/ch06/images/background/bg.jpg" Height="174px" Width="450px">
                    &nbsp;&nbsp;
                    <br class="auto-style2" />
                    <span class="auto-style2">&nbsp;&nbsp; </span>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style2" Width="254px" />
                    <br class="auto-style2" />
                    <span class="auto-style2">&nbsp;&nbsp;&nbsp; </span>
                    <asp:Button ID="Button5" runat="server" CssClass="auto-style2" OnClick="Button5_Click" Text="上傳" />
                    <br class="auto-style2" />
                    <span class="auto-style2">&nbsp;&nbsp;&nbsp; </span>
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style2" Text="標籤"></asp:Label>
                </asp:Panel>
            </asp:View>
        </asp:MultiView>
    
    </div>
    </form>
</body>
</html>
