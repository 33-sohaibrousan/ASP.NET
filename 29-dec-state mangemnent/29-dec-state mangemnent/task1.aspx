<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="task1.aspx.cs" Inherits="_29_dec_state_mangemnent.task1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
        <asp:Label ID="Label1" runat="server"  Text="email"></asp:Label>
        <asp:TextBox ID="email" textmode="Email" runat="server"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="login"  ControlToValidate="email" ForeColor="red" runat="server" ErrorMessage="please fill this field"></asp:RequiredFieldValidator><br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"  ForeColor="red" ControlToValidate="email" ValidationGroup="login" ErrorMessage="this email is not correct" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br />

        <asp:Label ID="Label2" runat="server" Text="password"></asp:Label>
        <asp:TextBox ID="password" TextMode="Password" runat="server"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="login"  ControlToValidate="password"  ForeColor="red" ErrorMessage="please fill this field"></asp:RequiredFieldValidator><br />

        <asp:CheckBox ID="CheckBox1" runat="server" Text="remmember me" OnCheckedChanged="CheckBox1_CheckedChanged" /><br />

        <asp:Button ID="Button1" runat="server" ValidationGroup="login" Text="login" OnClick="Button1_Click" />

    </form>
</body>
</html>
