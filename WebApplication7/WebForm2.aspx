<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="WebForm2.aspx.cs" Inherits="WebApplication7.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>  <h1 style="font-size: xx-large; color: #2F878E"><b>BOOKING DETAILS</b></h1>
      <p style="font-size: xx-large; color: #2F878E">&nbsp;</p>
      <p style="font-size: xx-large; color: #2F878E">
       <center>  <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="hid" OnPageIndexChanging="FormView1_PageIndexChanging" Height="496px" Width="1006px">
              <ItemTemplate>
                  <table style="width: 100%">
                      <tr>
                          <td rowspan="8">
                              <asp:Image ID="Image1" runat="server" ImageUrl='<%# "disp.aspx?hid="+Eval("hid") %>' Height="258px" Width="215px" />
                          </td>
                          <td>BookId</td>
                          <td><%# Eval("bid") %></td>
                      </tr>
                      <tr>
                          <td>HOuse ID</td>
                          <td><%# Eval("hid") %></td>
                      </tr>
                      <tr>
                          <td>Address</td>
                          <td><%# Eval("address") %></td>
                      </tr>
                      <tr>
                          <td>Amount</td>
                          <td><%# Eval("amount") %></td>
                      </tr>
                      <tr>
                          <td>Customer Id</td>
                          <td><%# Eval("cusid") %></td>
                      </tr>
                      <tr>
                          <td>Customer Address</td>
                          <td><%# Eval("name") %></td>
                      </tr>
                      <tr>
                          <td>Customer Mobile</td>
                          <td><%# Eval("mobile") %></td>
                      </tr>
                      <tr>
                          <td>Customer city</td>
                          <td><%# Eval("city") %></td>
                      </tr>
                      <tr>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                      </tr>
                      <tr>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                      </tr>
                      <tr>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                      </tr>
                      <tr>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                      </tr>
                  </table>
              </ItemTemplate>


          </asp:FormView>
           &nbsp;</p>
           <table style="width: 100%">
               <tr>
                   <td style="width: 448px">
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Accept" CssClass="fa-inverse" style="background-color: #336600" Width="465px" />
    
                   </td>
                   <td>
    
          <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Reject" CssClass="fa-inverse" style="background-color: #800000" Width="465px" />
                   </td>
               </tr>
           </table>
      <p style="font-size: xx-large; color: #2F878E">
          &nbsp;</p>

   
      </center> 
     
     
   
</asp:Content>
