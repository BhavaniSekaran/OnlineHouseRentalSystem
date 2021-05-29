<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Displayhome.aspx.cs" Inherits="WebApplication7.Displayhome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<center><h1 style="font-size: xx-large; color: #2F878E"><B> HOUSE DETAILS</B></h1></center>

  <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal"
   Width="100%" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
        onselectedindexchanged="DataList1_SelectedIndexChanged" 
        BackColor="White" CellPadding="3" CellSpacing="1">
   
      <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
   
   <ItemTemplate>
      
    
 <a href ='<%# "view.aspx?hid="+Eval("hid") %>' /> <asp:Image ID="image" runat="server" 
         ImageUrl='<%# "disp.aspx?hid="+Eval("hid") %>' Height="192px" 
           Width="189px" /></a>
           
         <br /> 
        
          <asp:Label ID="Label1" runat="server" Text='<%# Eval("houseno") %>' Font-Bold="True"
         Font-Size="20pt" ForeColor="#000066" Width="100%" />
         <br />
      
       
        
        
   </ItemTemplate>
   
   <ItemStyle HorizontalAlign="Center" VerticalAlign="Top" BackColor="#DEDFDE" 
          ForeColor="Black"  />
      <SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
      <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
</asp:DataList>
</asp:Content>

