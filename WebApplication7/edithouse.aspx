<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="edithouse.aspx.cs" Inherits="WebApplication7.edithouse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <center>
      <h1 style="font-size: xx-large; color: #2F878E"><B>EDIT HOUSE DETAILS</B></h1>
      <p style="font-size: xx-large; color: #2F878E">&nbsp;</p>

     
     <asp:FormView ID="EmployeeFormView"

              

                DataKeyNames="hid"    

                Gridlines="Both"  AllowPaging="True"

               

                RunAt="server" onitemdeleting="EmployeeFormView_ItemDeleting"

        onpageindexchanging="EmployeeFormView_PageIndexChanging"

        onitemupdating="EmployeeFormView_ItemUpdating"

        oniteminserted="EmployeeFormView_ItemInserted"

        oniteminserting="EmployeeFormView_ItemInserting"

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
                            <asp:LinkButton ID="EditButton" RunAt="server" CommandName="Edit" style="font-family: Verdana; font-weight: bold; font-size: small; color: #800000" Text="Edit" />
                            &nbsp; &nbsp;
                            <asp:LinkButton ID="DeleteButton" RunAt="server" CommandName="Delete" style="font-family: Verdana; font-weight: bold; font-size: small; color: #800000" Text="Delete" />
                        </td>

                    </tr>

                  </table>                

                </ItemTemplate>

 

                <EditItemTemplate>

                  <table style="background-color: #FFFFFF">

                    <tr><td style="color: #000066"><b>House ID:</b></td>

                        <td><asp:TextBox ID="txtid"

                                         Text='<%# Bind("hid") %>'

                                         RunAt="Server" /></td></tr>

                   

 

                    <tr><td style="color: #000066"><b>Category:</b></td>

                        <td><asp:TextBox ID="txtcat"

                                         Text='<%# Bind("category") %>'

                                         RunAt="Server" /></td></tr>

 

                    <tr><td style="color: #000066"><b>Type Of House:</b></td>

                        <td><asp:TextBox ID="txttype"

                                         Text='<%# Bind("type") %>'

                                         RunAt="Server" /></td></tr>

                                   <tr><td style="color: #000066"><b>HouseNO:</b></td>

                        <td><asp:TextBox ID="TextBox1"

                                         Text='<%# Bind("houseno") %>'

                                         RunAt="Server" /></td></tr>           

                                        

                    <tr><td style="color: #000066"><b>Address:</b></td>

                        <td><asp:TextBox ID="txtAddress2"

                                         Text='<%# Bind("address") %>'

                                         RunAt="Server" /></td></tr>

                                        

                    <tr><td style="color: #000066"><b>Amount:</b></td>

                        <td><asp:TextBox ID="txtamount"

                                         Text='<%# Bind("amount") %>'

                                         RunAt="Server" /></td></tr>                                         

                                     

                                         

                    <tr>

                      <td colspan="2">

                        <asp:LinkButton ID="UpdateButton"

                                        Text="Update"

                                        CommandName="Update"

                                        RunAt="server" style="color: #800000"/>

                          &nbsp;

                        <asp:LinkButton ID="CancelUpdateButton"

                                        Text="Cancel"

                                        CommandName="Cancel"

                                        RunAt="server" style="color: #800000"/>

                      </td>

                    </tr>

                  </table>                

                </EditItemTemplate>

 

               

 

              </asp:FormView>

 </center>
</asp:Content>
