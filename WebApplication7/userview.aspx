<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeFile="userview.aspx.cs" Inherits="WebApplication7.userview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<center>  <h1 style="font-size: xx-large; color: #2F878E"><B>CUSTOMER DETAILS</B></h1>

    <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal"
   Width="100%" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
        onselectedindexchanged="DataList1_SelectedIndexChanged" 
        BackColor="White" CellPadding="3" CellSpacing="1">
   
      <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
   
   <ItemTemplate>
      
    

        
      
       
         <table>
                                     <tr>
                                         <td><b>Customer ID:</b></td>
                                         <td>
                                             <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="12pt" ForeColor="#000066" Text='<%# Eval("cusid") %>' Width="100%" />
                                             <br />
                                         </td>
                                     </tr>
                                     <tr>
                                         <td><b>Name:</b></td>
                                         <td>
                                             <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="12pt" ForeColor="#000066" Text='<%# Eval("fname") %>' Width="100%" />
                                             <br />
                                         </td>
                                     </tr>
                                     <tr>
                                         <td><b>Address:</b></td>
                                         <td>
                                             <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="12pt" ForeColor="#000066" Text='<%# Eval("address") %>' Width="100%" />
                                             <br />
                                         </td>
                                     </tr>
                                     <tr>
                                         <td><b>Mobile:</b></td>
                                         <td>
                                             <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="12pt" ForeColor="#000066" Text='<%# Eval("mobile") %>' Width="100%" />
                                             <br />
                                         </td>
                                     </tr>
                                     <tr>
                                         <td><b>City:</b></td>
                                         <td>
                                             <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="12pt" ForeColor="#000066" Text='<%# Eval("city") %>' Width="75%" Height="32px" />
                                             <br />
                                         </td>
                                     </tr>
                                     <tr>
                                         <td><b>Pincode:</b></td>
                                         <td>
                                             <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="12pt" ForeColor="#000066" Text='<%# Eval("pin") %>' Width="100%" />
                                             <br />
                                         </td>
                                     </tr>
                                     <tr>
                                         <td><b>Email-Id:</b></td>
                                         <td>
                                             <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="12pt" ForeColor="#000066" Text='<%# Eval("email") %>' Width="100%" />
                                             <br />
                                         </td>
                                     </tr>
                                     <tr>
                                         <td><b>Password:</b></td>
                                         <td>
                                             <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="12pt" ForeColor="#000066" Text='<%# Eval("pwd") %>' Width="100%" />
                                             <br />
                                         </td>
                                     </tr>
                                     <tr>
                                         
                                         <td>&nbsp;</td>
                                     </tr>
                                 </table>
        
   </ItemTemplate>
   
            
   </asp:DataList></center>

</asp:Content>
