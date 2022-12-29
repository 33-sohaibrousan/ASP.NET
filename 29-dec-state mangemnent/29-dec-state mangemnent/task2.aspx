<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="task2.aspx.cs" Inherits="_29_dec_state_mangemnent.task2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                 <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br />
       
<%--        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />--%>
       
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
            </Triggers>
        </asp:UpdatePanel>
        <asp:Timer ID="Timer1" Interval="1000" runat="server" OnTick="Timer1_Tick1"></asp:Timer>
        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AppendDataBoundItems="True">
        <asp:ListItem Value="Red">red</asp:ListItem>
        <asp:ListItem Value="Green">green</asp:ListItem>
        <asp:ListItem Value="Blue">blue</asp:ListItem>
        </asp:DropDownList>
       
    </form>
</body>
</html>
