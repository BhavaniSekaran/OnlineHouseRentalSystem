<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="edit.aspx.cs" Inherits="WebApplication7.edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <center>  <h1 style="font-size: xx-large; color: #2F878E">&nbsp;</h1>
        <h1 style="font-size: xx-large; color: #2F878E"><B>EDIT PROFILE </B></h1>
         <p style="font-size: xx-large; color: #2F878E">&nbsp;</p>
     </center>
                                <p style="font-size: xx-large; color: #2F878E" class="center">&nbsp;</p>
     <center>  
    <table style="width: 65%; height: 439px;">
                                            <tr>
                                                <td style="height: 35px; font-size: medium; color: #000080; font-weight: bold; " colspan="2">
                                                <center>   <asp:Button ID="Button3" runat="server" style="background-color: #FFFF00" Text="Show Profile" OnClick="Button3_Click" /></center> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="height: 35px; font-size: medium; color: #000080; font-weight: bold; width: 527px;"><b>Customer Name</b></td>
                                                <td style="height: 35px; font-size: large; color: #000000">
                                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="height: 35px; font-size: medium; color: #000080; font-weight: bold; width: 527px;"><b>Customer Address</b></td>
                                                <td style="height: 35px; font-size: large; color: #000000">
                                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="height: 35px; font-size: medium; color: #000080; font-weight: bold; width: 527px;"><b>Customer Mobile </b></td>
                                                <td style="height: 35px; font-size: large; color: #000000">
                                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="height: 35px; font-size: medium; color: #000080; font-weight: bold; width: 527px;"><b>Customer City</b></td>
                                                <td style="height: 35px; font-size: large; color: #000000">
                                                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="height: 35px; font-size: medium; color: #000080; font-weight: bold; width: 527px;"><b>Customer Pincode</b></td>
                                                <td style="height: 35px; font-size: large; color: #000000">
                                                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="height: 35px; font-size: medium; color: #000000; font-weight: bold; width: 527px;">
                                                    <asp:Button ID="Button1" runat="server" CssClass="fa-inverse" style="background-color: #006600" Text="Update Profile" OnClick="Button1_Click1" />
                                                </td>
                                                <td style="height: 35px; font-size: large; color: #000000">
                                                    <asp:Button ID="Button2" runat="server" CssClass="fa-inverse" style="background-color: #990000" Text="Cancel" OnClick="Button2_Click1" />
                                                </td>
                                            </tr>
                                        </table></center>
                                <p>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </p>
</asp:Content>
