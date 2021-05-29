<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="book.aspx.cs" Inherits="WebApplication7.book" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>  <h1 style="font-size: xx-large; color: #2F878E"><b>BOOKING DETAILS</b></h1>
  
    <asp:FormView ID="EmployeeFormView"

              

                DataKeyNames="hid"    

                Gridlines="Both"  AllowPaging="True"

               

                RunAt="server" onitemdeleting="EmployeeFormView_ItemDeleting"

        onpageindexchanging="EmployeeFormView_PageIndexChanging"

        onitemupdating="EmployeeFormView_ItemUpdating"

      

        onitemupdated="EmployeeFormView_ItemUpdated"

        onmodechanging="EmployeeFormView_ModeChanging" BackColor="White"

        BorderColor="#3366CC" Width="756px" BorderStyle="None" BorderWidth="1px" CellPadding="4" style="font-family: Verdana; font-size: medium; background-color: #FFFFFF;">

 

                <FooterStyle BackColor="#ffffff" ForeColor="#000066" />

 

                <HeaderStyle backcolor="#003399"

                  forecolor="#CCCCFF" Font-Bold="True"/>

 

                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />

 

                <RowStyle backcolor="White" ForeColor="#003399"/>        

 

                <EditRowStyle backcolor="#ffffff" ForeColor="#000000" Font-Bold="True"/>

 

                <ItemTemplate>

                  <table>

                    <tr><td rowspan="6" style="text-align: left; width: 227px;">
                        <asp:Image ID="Image1"  runat="server"  ImageUrl='<%# "disp.aspx?hid="+Eval("hid") %>' Height="188px" 
           Width="247px" /></td>
                        <td><b>House ID:</b></td>
                        <td><%# Eval("hid") %></td></tr>

                    <tr>
                        <td><b>Category:</b></td>
                        <td><%# Eval("category") %></td></tr>

                       <tr>
                           <td><b>House NO:</b></td>
                           <td><%# Eval("houseno")%></td></tr>

                    <tr>
                        <td><b>Type of house:</b></td>
                        <td><%# Eval("type") %></td></tr>

                    <tr>
                        <td><b>Address:</b></td>
                        <td><%# Eval("address")%></td></tr>

                      <tr>
                          <td><b>Amount:</b></td>
                          <td><%# Eval("amount")%></td></tr>

                   
                    <tr>

                      <td style="width: 227px">

                        &nbsp;</td>

                        <td colspan="2">
                            &nbsp; &nbsp;
                            <asp:Button ID="Button1" runat="server" CssClass="fa-inverse" style="background-color: #800000" Text="Cancel Booking" Width="301px" />
                        </td>

                    </tr>

                  </table>                

                </ItemTemplate>

 

                

 

               

 

              </asp:FormView>
					
					

</asp:Content>
