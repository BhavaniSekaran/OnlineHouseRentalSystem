<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="viewstatus.aspx.cs" Inherits="WebApplication7.viewstatus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>   <h1 style="font-size: xx-large; color: #2F878E"><b>STATUS</b></h1>
       
          
          <div style="overflow-x:scroll;width:500px;margin-left:auto;margin-right:auto;">
           <asp:Repeater ID="Repeater1" runat="server">
         <ItemTemplate>
             <table style="border :1px solid #A55129;background-color:#FFF7E7">
                 <tr><td>
        <asp:Image ID="image" runat="server" 
         ImageUrl='<%# "disp.aspx?hid="+Eval("hid") %>' Height="120px" 
           Width="120px" /></td>
            <br /> <td>
                <table><tr><td><b>House ID:</b></td><td>
         <asp:Label ID="Label1" runat="server" Text='<%# Eval("hid") %>' Font-Bold="True"
         Font-Size="12pt" ForeColor="#000066" Width="100%" />
         <br />
              </td></tr> 
                    <tr><td><b>House Status:</b></td><td>
         <asp:Label ID="Label2" runat="server" Text='<%# Eval("status") %>' Font-Bold="True"
         Font-Size="12pt" ForeColor="#000066" Width="100%" />
         <br />
              </td></tr>
                    
                    </td> </tr></table> </table>
              </ItemTemplate>
    </asp:Repeater>
           </div>
       
       </center>
   
</asp:Content>
