<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="postbaack.aspx.cs" Inherits="_3_1_2023.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:CheckBox ID="CheckBox1" AutoPostBack="true" Text="male" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" />
            <asp:CheckBox ID="CheckBox2" AutoPostBack="true" Text="female" runat="server" OnCheckedChanged="CheckBox2_CheckedChanged" />
            <asp:Button ID="Button1" runat="server" Text="Button" />
        </div>
    </form>
</body>
</html>
