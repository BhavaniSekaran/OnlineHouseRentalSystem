<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebForm3.aspx.cs" Inherits="WebApplication7.WebForm3" %>

                                  
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
                    <tr><td><b>Category:</b></td><td>
         <asp:Label ID="Label2" runat="server" Text='<%# Eval("category") %>' Font-Bold="True"
         Font-Size="12pt" ForeColor="#000066" Width="100%" />
         <br />
              </td></tr>
                    <tr><td><b>Type Of House:</b></td><td>
         <asp:Label ID="Label3" runat="server" Text='<%# Eval("type") %>' Font-Bold="True"
         Font-Size="12pt" ForeColor="#000066" Width="100%" />
         <br />
              </td></tr>
                    <tr><td><b>House NO:</b></td><td>
         <asp:Label ID="Label4" runat="server" Text='<%# Eval("houseno") %>' Font-Bold="True"
         Font-Size="12pt" ForeColor="#000066" Width="100%" />
         <br />
              </td></tr>
                    <tr><td><b>House Address:</b></td><td>
         <asp:Label ID="Label5" runat="server" Text='<%# Eval("address") %>' Font-Bold="True"
         Font-Size="12pt" ForeColor="#000066" Width="100%" />
         <br />
              </td></tr>
                    <tr><td><b>House Amount:</b></td><td>
         <asp:Label ID="Label6" runat="server" Text='<%# Eval("amount") %>' Font-Bold="True"
         Font-Size="12pt" ForeColor="#000066" Width="100%" />
         <br />
              </td></tr>
                    <tr><td><b>House Status:</b></td><td>
         <asp:Label ID="Label7" runat="server" Text='<%# Eval("status") %>' Font-Bold="True"
         Font-Size="12pt" ForeColor="#000066" Width="100%" />
         <br />
              </td></tr>
                    </td> </tr></table> </table>

              </ItemTemplate>
    </asp:Repeater></body>
</html>
                 
