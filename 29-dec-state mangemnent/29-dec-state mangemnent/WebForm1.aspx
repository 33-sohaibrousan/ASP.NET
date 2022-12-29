<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_29_dec_state_mangemnent.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label runat="server" ID="label" Text=""></asp:Label><asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click1" />

<%--        ---------------------------------------------------------------%>


         <asp:HiddenField ID="HiddenField1" runat="server" Value="1" />
        <br />
        <asp:Label ID="Label1" runat="server" />
        <br />
        <asp:Button ID="Button2" runat="server" Text="Display Value" OnClick="Button1_Click" />
        <br />


        <asp:Button ID="Button3" runat="server" Text="login" OnClick="Button3_Click" />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        
        
        
        
        <br />
        
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                <br />

                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>

    </form>
    
</body>

</html>
