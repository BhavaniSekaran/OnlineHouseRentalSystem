<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebForm1.aspx.cs" Inherits="WebApplication7.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

 

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>Untitled Page</title>

</head>

<body>

    <form id="form1" runat="server">

    <div>

   

    </div>

    <asp:FormView ID="EmployeeFormView"

              

                DataKeyNames="hid"    

                Gridlines="Both"  AllowPaging="true"

               

                RunAt="server" onitemdeleting="EmployeeFormView_ItemDeleting"

        onpageindexchanging="EmployeeFormView_PageIndexChanging"

        onitemupdating="EmployeeFormView_ItemUpdating"

        oniteminserted="EmployeeFormView_ItemInserted"

        oniteminserting="EmployeeFormView_ItemInserting"

        onitemupdated="EmployeeFormView_ItemUpdated"

        onmodechanging="EmployeeFormView_ModeChanging" BackColor="#FFFF66"

        BorderColor="#FF8080" OnItemCommand="EmployeeFormView_ItemCommand" OnModeChanged="EmployeeFormView_ModeChanged">

 

                <HeaderStyle backcolor="Navy"

                  forecolor="#999966"/>

 

                <RowStyle backcolor="White" ForeColor="#CC3300"/>        

 

                <EditRowStyle backcolor="#66FF99" ForeColor="#FF9966"/>

 

                <ItemTemplate>

                  <table>

                    <tr><td align="right"><b>House ID:</b></td><td><%# Eval("hid") %></td></tr>

                    <tr><td align="right"><b>Category:</b></td> <td><%# Eval("category") %></td></tr>

                       <tr><td align="right"><b>House NO:</b></td>  <td><%# Eval("houseno")%></td></tr>

                    <tr><td align="right"><b>Type of house:</b></td>  <td><%# Eval("type") %></td></tr>

                    <tr><td align="right"><b>Address:</b></td>  <td><%# Eval("address")%></td></tr>

                      <tr><td align="right"><b>Amount:</b></td>  <td><%# Eval("amount")%></td></tr>

                   
                    <tr>

                      <td colspan="2">

                        <asp:LinkButton ID="EditButton"

                                        Text="Edit"

                                        CommandName="Edit"

                                        RunAt="server"/>

                          &nbsp; &nbsp;

                        <asp:LinkButton ID="DeleteButton"

                                        Text="Delete"

                                        CommandName="Delete"

                                        RunAt="server"/>

                      </td>

                    </tr>

                  </table>                

                </ItemTemplate>

 

                <EditItemTemplate>

                  <table>

                    <tr><td align="right"><b>House ID:</b></td>

                        <td><asp:TextBox ID="txtid"

                                         Text='<%# Bind("hid") %>'

                                         RunAt="Server" /></td></tr>

                   

 

                    <tr><td align="right"><b>Category:</b></td>

                        <td><asp:TextBox ID="txtcat"

                                         Text='<%# Bind("category") %>'

                                         RunAt="Server" /></td></tr>

 

                    <tr><td align="right"><b>Type Of House:</b></td>

                        <td><asp:TextBox ID="txttype"

                                         Text='<%# Bind("type") %>'

                                         RunAt="Server" /></td></tr>

                                   <tr><td align="right"><b>HouseNO:</b></td>

                        <td><asp:TextBox ID="TextBox1"

                                         Text='<%# Bind("houseno") %>'

                                         RunAt="Server" /></td></tr>           

                                        

                    <tr><td align="right"><b>Address:</b></td>

                        <td><asp:TextBox ID="txtAddress2"

                                         Text='<%# Bind("address") %>'

                                         RunAt="Server" /></td></tr>

                                        

                    <tr><td align="right"><b>Amount:</b></td>

                        <td><asp:TextBox ID="txtamount"

                                         Text='<%# Bind("amount") %>'

                                         RunAt="Server" /></td></tr>                                         

                                     

                                         

                    <tr>

                      <td colspan="2">

                        <asp:LinkButton ID="UpdateButton"

                                        Text="Update"

                                        CommandName="Update"

                                        RunAt="server"/>

                          &nbsp;

                        <asp:LinkButton ID="CancelUpdateButton"

                                        Text="Cancel"

                                        CommandName="Cancel"

                                        RunAt="server" OnClick="CancelUpdateButton_Click"/>

                      </td>

                    </tr>

                  </table>                

                </EditItemTemplate>

 

               

 

              </asp:FormView>

 

    </form>

</body>

</html>