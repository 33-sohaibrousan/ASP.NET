<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="task1_2_1_2023_امانة_عمان_الكبرى.WebUserControl1" %>
<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<div id="main" runat="server" >
    <h1 style="background-color:cornflowerblue; width: 226px;">رايكم يهمنا</h1>
    <p>ما هو مدى رضاك عن الخدمات الالكترونية الخاصة بالتخزين؟</p>
   
        
        <asp:RadioButton ID="RadioButton1" AutoPostBack="true" runat="server" value="1" Text="ممتاز" GroupName="radio" /><br />
        <asp:RadioButton ID="RadioButton2" AutoPostBack="true" runat="server" value="2" Text="جيد جدا" GroupName="radio" /><br />
        <asp:RadioButton ID="RadioButton3" AutoPostBack="true" runat="server" value="3" Text="جيد" GroupName="radio"/><br />
        <asp:RadioButton ID="RadioButton4" AutoPostBack="true" runat="server" value="4" Text="ضعيف" GroupName="radio"/><br />
        <asp:RadioButton ID="RadioButton5" AutoPostBack="true" runat="server" value="5" Text="مقبول" GroupName="radio"/><br />
   
    <asp:Button ID="Button1" runat="server" Text="تصويت" OnClick="Button1_Click" />

</div>

<div id="result" runat="server" >
 
<asp:Chart ID="Chart1" runat="server" Height="791px" Width="854px">
    <Series>
        
        <asp:Series Name="Series1" ChartType="StackedColumn100"></asp:Series>

        
    </Series>
    
    <ChartAreas>
        
        <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
         
         <asp:ChartArea Name="ChartArea2"></asp:ChartArea>
                 
                 <asp:ChartArea Name="ChartArea3"></asp:ChartArea>
                         
                         <asp:ChartArea Name="ChartArea4"></asp:ChartArea>
                 
                 <asp:ChartArea Name="ChartArea5"></asp:ChartArea>

        

        
    </ChartAreas>
    
</asp:Chart>




<asp:Label ID="Label1" runat="server" Text=""></asp:Label><br />
<asp:Label ID="Label2" runat="server" Text=""></asp:Label><br />
<asp:Label ID="Label3" runat="server" Text=""></asp:Label><br />
<asp:Label ID="Label4" runat="server" Text=""></asp:Label><br />
<asp:Label ID="Label5" runat="server" Text=""></asp:Label>
<br />
<br />

<asp:Label ID="Label6" runat="server" Text=""></asp:Label>


</div>
