<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="confirm.aspx.cs" Inherits="WebApplication7.confirm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>  <h1 style="font-size: xx-large; color: #2F878E">&nbsp;</h1>
        <h1 style="font-size: xx-large; color: #2F878E"><B>CONFRIM BOOKING</B></h1>
    <table style="width: 65%; height: 439px;">
                                            <tr>
                                                <td rowspan="12" style="width: 278px">
                                                    <asp:Image ID="Image1" runat="server" Height="246px" Width="245px" />
                                                </td>
                                                <td style="font-size: medium; color: #000080; font-weight: bold;"><b>Book ID </b></td>
                                                <td style="font-size: medium; color: #000080">
                                                    <asp:Label ID="Label10" runat="server" Text="Label" CssClass="bold"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="font-size: medium; color: #000080; height: 32px; font-weight: bold;"><b>House ID </b></td>
                                                <td style="font-size: large; color: #000000; height: 32px;"><b>
                                                    <asp:Label ID="Label1" runat="server" Text="Label" style="color: #000080; font-size: medium;"></asp:Label>
                                                    </b></td>
                                            </tr>
                                            <tr>
                                                <td style="font-size: medium; color: #000080; font-weight: bold;"><b>Type of house </b></td>
                                                <td style="font-size: large; color: #000000"><b>
                                                    <asp:Label ID="Label2" runat="server" Text="Label" style="color: #000080; font-size: medium;"></asp:Label>
                                                    </b></td>
                                            </tr>
                                            <tr>
                                                <td style="font-size: medium; color: #000080; font-weight: bold;"><b>HouseNO </b></td>
                                                <td style="font-size: large; color: #000000"><b>
                                                    <asp:Label ID="Label3" runat="server" Text="Label" style="color: #000080; font-size: medium;"></asp:Label>
                                                    </b></td>
                                            </tr>
                                            <tr>
                                                <td style="font-size: medium; color: #000080; font-weight: bold;"><b>Address </b></td>
                                                <td style="font-size: large; color: #000000"><b>
                                                    <asp:Label ID="Label4" runat="server" Text="Label" style="color: #000080; font-size: medium;"></asp:Label>
                                                    </b></td>
                                            </tr>
                                            <tr>
                                                <td style="height: 34px; font-size: medium; color: #000080; font-weight: bold;"><b>Amount </b></td>
                                                <td style="height: 34px; font-size: large; color: #000000"><b>
                                                    <asp:Label ID="Label5" runat="server" Text="Label" style="color: #000080; font-size: medium;"></asp:Label>
                                                    </b></td>
                                            </tr>
                                            <tr>
                                                <td style="height: 34px; font-size: medium; color: #000080; font-weight: bold;"><b>SellerEmail Id</b></td>
                                                <td style="height: 34px; font-size: medium; color: #000080; font-weight: 700; font-family: Verdana;">
                                                    <asp:Label ID="Label11" runat="server" Text="Label" CssClass="bold"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="height: 35px; font-size: medium; color: #000080; font-weight: bold"><b>Customer ID </b></td>
                                                <td style="height: 35px; font-size: large; color: #000000"><b>
                                                    <asp:Label ID="Label6" runat="server" Text="Label" style="color: #000080; font-size: medium;"></asp:Label>
                                                    </b></td>
                                            </tr>
                                            <tr>
                                                <td style="height: 35px; font-size: medium; color: #000080; font-weight: bold"><b>Customer Name</b></td>
                                                <td style="height: 35px; font-size: large; color: #000000"><b>
                                                    <asp:Label ID="Label7" runat="server" Text="Label" style="color: #000080; font-size: medium;"></asp:Label>
                                                    </b></td>
                                            </tr>
                                            <tr>
                                                <td style="height: 35px; font-size: medium; color: #000080; font-weight: bold"><b>CustomerMobile </b></td>
                                                <td style="height: 35px; font-size: large; color: #000000"><b>
                                                    <asp:Label ID="Label8" runat="server" Text="Label" style="color: #000080; font-size: medium;"></asp:Label>
                                                    </b></td>
                                            </tr>
                                            <tr>
                                                <td style="height: 35px; font-size: medium; color: #000080; font-weight: bold"><b>Customer City</b></td>
                                                <td style="height: 35px; font-size: large; color: #000000"><b>
                                                    <asp:Label ID="Label9" runat="server" Text="Label" style="color: #000080; font-size: medium;"></asp:Label>
                                                    </b></td>
                                            </tr>
                                            <tr>
                                                <td style="height: 35px; font-size: medium; color: #000000; font-weight: bold">
                                                    <asp:Button ID="Button1" runat="server" CssClass="fa-inverse" style="background-color: #006600" Text="Confirm Booking" OnClick="Button1_Click1" />
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
