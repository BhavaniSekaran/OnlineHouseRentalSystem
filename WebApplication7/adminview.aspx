<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="adminview.aspx.cs" Inherits="WebApplication7.adminview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>  <h1 style="font-size: xx-large; color: #2F878E"><B>VIEW HOUSE DETAILS</B></h1>

  <asp:FormView CssClass="container" ID="FormView1" AllowPaging="True" OnPageIndexChanging="FormView1_PageIndexChanging" runat="server" CellPadding="4" ForeColor="#333333" Width="762px">  
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <ItemTemplate>  
                   <table style="width: 97%; height: 344px;">
                                            <tr>
                                                <td rowspan="13" style="width: 278px">
                                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# "disp.aspx?hid="+Eval("hid") %>' Height="317px" Width="245px" />
                                                </td>
   
                           <td style="font-size: medium; color: #000080; font-weight: bold; width: 307px;"><b>House ID </b></td>
                                                
                            <td style="width: 386px"><%#Eval("hid") %></td>  
                        </tr>  
                        <tr>  
                            <td style="height: 34px; font-size: medium; color: #000080; font-weight: bold; width: 307px;"><b>Category</b></td>
                                               
                            <td style="width: 386px"><%#Eval("category") %></td>  
                        </tr> 
                        <tr>  
                          <td style="font-size: medium; color: #000080; font-weight: bold; width: 307px;"><b>Type of house </b></td>
                                                                     
                            <td style="width: 386px"><%#Eval("type") %></td>  
                        </tr>  
                        <tr>  
                            <td style="font-size: medium; color: #000080; font-weight: bold; width: 307px;"><b>HouseNO </b></td>
                                               
                            <td style="width: 386px"><%#Eval("houseno") %></td>  
                        </tr>  
                        <tr>  
                           <td style="font-size: medium; color: #000080; font-weight: bold; width: 307px;"><b>Address </b></td>
                                               
                            <td style="width: 386px"><%#Eval("address") %></td>  
                        </tr>  
                        <tr>  
                            <td style="height: 34px; font-size: medium; color: #000080; font-weight: bold; width: 307px;"><b>Amount </b></td>
                                               
                            <td style="width: 386px"><%#Eval("amount") %></td>  
                        </tr>  
                        <tr>  
                            <td style="height: 34px; font-size: medium; color: #000080; font-weight: bold; width: 307px;"><b>Status</b></td>
                                               
                            <td style="width: 386px"><%#Eval("status") %></td>  
                        </tr>  
                                            
                                          
                    </table>  

                </ItemTemplate>  
                <PagerStyle BackColor="#284775" ForeColor="#000086" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            </asp:FormView>

</asp:Content>


