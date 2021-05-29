<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="status.aspx.cs" Inherits="WebApplication7.status" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <asp:Image ID="image" runat="server" 
         ImageUrl='<%# "disp.aspx?hid="+Eval("hid") %>' Height="192px" 
           Width="189px" />
            <br /> 
        
          <asp:Label ID="Label1" runat="server" Text='<%# Eval("houseno") %>' Font-Bold="True"
         Font-Size="20pt" ForeColor="#000066" Width="100%" />
         <br />


        </ItemTemplate>
    </asp:DataList>
</asp:Content>
