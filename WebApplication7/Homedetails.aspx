<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeFile="Homedetails.aspx.cs" Inherits="WebApplication7.Homedetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>  <h1 style="font-size: xx-large; color: #2F878E"><B>HOUSE DETAILS</B></h1>

        <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal"
   Width="100%" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
        onselectedindexchanged="DataList1_SelectedIndexChanged" 
        BackColor="White" CellPadding="3" CellSpacing="1">
   
      <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
   
   <ItemTemplate>
      
    
<asp:Image ID="image" runat="server" 
         ImageUrl='<%# "disp.aspx?hid="+Eval("hid") %>' Height="192px" 
           Width="189px" /></a>
           
         <br /> 
        
        
      
       
         <table>
                                     <tr>
                                         <td><b>House ID:</b></td>
                                         <td>
                                             <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="12pt" ForeColor="#000066" Text='<%# Eval("hid") %>' Width="100%" />
                                             <br />
                                         </td>
                                     </tr>
                                     <tr>
                                         <td><b>Category:</b></td>
                                         <td>
                                             <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="12pt" ForeColor="#000066" Text='<%# Eval("category") %>' Width="100%" />
                                             <br />
                                         </td>
                                     </tr>
                                     <tr>
                                         <td><b>Type Of House:</b></td>
                                         <td>
                                             <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="12pt" ForeColor="#000066" Text='<%# Eval("type") %>' Width="100%" />
                                             <br />
                                         </td>
                                     </tr>
                                     <tr>
                                         <td><b>House No:</b></td>
                                         <td>
                                             <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="12pt" ForeColor="#000066" Text='<%# Eval("houseno") %>' Width="100%" />
                                             <br />
                                         </td>
                                     </tr>
                                     <tr>
                                         <td><b>House Address:</b></td>
                                         <td>
                                             <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="12pt" ForeColor="#000066" Text='<%# Eval("address") %>' Width="75%" Height="32px" />
                                             <br />
                                         </td>
                                     </tr>
                                     <tr>
                                         <td><b>House Amount:</b></td>
                                         <td>
                                             <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="12pt" ForeColor="#000066" Text='<%# Eval("amount") %>' Width="100%" />
                                             <br />
                                         </td>
                                     </tr>
                                     <tr>
                                         <td><b>House Status:</b></td>
                                         <td>
                                             <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="12pt" ForeColor="#000066" Text='<%# Eval("status") %>' Width="100%" />
                                             <br />
                                         </td>
                                     </tr>
                                     <tr>
                                         <td><b>Seller email:</b></td>
                                         <td>
                                             <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="12pt" ForeColor="#000066" Text='<%# Eval("email") %>' Width="100%" />
                                             <br />
                                         </td>
                                     </tr>
                                     <tr>
                                         
                                         <td>&nbsp;</td>
                                     </tr>
                                 </table>
        
   </ItemTemplate>
   
            
   </asp:DataList>
          

</asp:Content>
