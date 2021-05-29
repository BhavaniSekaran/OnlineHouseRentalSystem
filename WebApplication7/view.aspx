<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="view.aspx.cs" Inherits="WebApplication7.view" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<center>  <h1 style="font-size: xx-large; color: #2F878E"><b>House details</b></h1>
    <table style="width: 61%; height: 271px;">
                                    <tr>
                                        <td rowspan="13" style="width: 184px; color: #5AC1CA;">
                                            <asp:Image ID="Image1" runat="server" Height="305px" Width="306px" />
                                        </td>
                                        <td style="color: #000080; font-weight: bold; font-size: medium;"><span style="font-family: Verdana; font-weight: bold; font-size: medium">House ID</td>
                                        <td style="color: #000080; font-size: medium;">
                                            <b>
                                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                            </span>
                                            </b>
                                        </td>
                                    </tr>
                                    <tr style="font-family: Verdana; font-size: medium">
                                        <td style="color: #000080; font-weight: bold; font-size: medium;"><b>category</b></td>
                                        <td style="color: #009999">
                                            <b>
                                            <asp:Label ID="Label2" runat="server" Text="Label" style="color: #000080"></asp:Label>
                                            </b>
                                        </td>
                                    </tr>
                                    <tr style="font-family: Verdana; font-size: medium">
                                        <td style="color: #000080; font-weight: bold; font-size: medium;"><b>Type of house</b></td>
                                        <td style="color: #009999">
                                            <b>
                                            <asp:Label ID="Label3" runat="server" Text="Label" style="color: #000080"></asp:Label>
                                            </b>
                                        </td>
                                    </tr>
                                    <tr style="font-family: Verdana">
                                        <td style="color: #000080; font-weight: bold; font-size: medium;"><b><span style="font-size: medium">House</span></b><span style="font-size: medium; font-weight: bold;">NO</span><span style="font-size: medium"><b> </b> </td>
                                        <td style="color: #000080; font-size: medium;">
                                            <b>
                                            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                            </span>
                                            </b>
                                        </td>
                                    </tr>
                                    <tr style="font-family: Verdana; font-size: medium">
                                        <td style="color: #000080; font-weight: bold; font-size: medium;"><b>Address </b> </td>
                                        <td style="color: #009999">
                                            <b>
                                            <asp:Label ID="Label5" runat="server" Text="Label" style="color: #000080"></asp:Label>
                                            </b>
                                        </td>
                                    </tr>
                                    <tr style="font-family: Verdana; font-size: medium">
                                        <td style="color: #000080; font-weight: bold; font-size: medium;"><b>Amount </b> </td>
                                        <td style="color: #009999">
                                            <b>
                                            <asp:Label ID="Label6" runat="server" Text="Label" style="color: #000080"></asp:Label>
                                            </b>
                                        </td>
                                    </tr>
                                    <tr style="font-family: Verdana; font-size: medium">
                                        <td style="color: #000080; font-weight: bold; font-size: medium;"><b>House Status </b> </td>
                                        <td style="margin-left: 80px; color: #009999;">
                                            <b>
                                            <asp:Label ID="Label7" runat="server" Text="Label" style="color: #000080"></asp:Label>
                                            </b>
                                        </td>
                                    </tr>
                                    <tr style="font-family: Verdana; font-size: medium">
                                        <td style="color: #000080; font-weight: bold; font-size: medium;"><b>Seller Email</b></td>
                                        <td style="margin-left: 80px; color: #009999;">
                                            <b>
                                            <asp:Label ID="Label8" runat="server" Text="Label" style="color: #000080"></asp:Label>
                                            </b>
                                        </td>
                                    </tr>
                                    <tr style="font-family: Verdana; font-size: medium">
                                        <td style="color: #000080; font-weight: bold; font-size: medium;"><b>Seller Name</b></td>
                                        <td style="margin-left: 80px; color: #009999;">
                                            <b>
                                            <asp:Label ID="Label9" runat="server" Text="Label" style="color: #000080"></asp:Label>
                                            </b>
                                        </td>
                                    </tr>
                                    <tr style="font-family: Verdana; font-size: medium">
                                        <td style="color: #000080; font-weight: bold; font-size: medium;"><b>Seller Address</b></td>
                                        <td style="margin-left: 160px; color: #009999;">
                                            <b>
                                            <asp:Label ID="Label10" runat="server" Text="Label" style="color: #000080"></asp:Label>
                                            </b>
                                        </td>
                                    </tr>
                                    <tr style="font-family: Verdana; font-size: medium">
                                        <td style="color: #000080; font-weight: bold; font-size: medium;"><b>Seller mobile</b></td>
                                        <td style="margin-left: 160px; color: #009999;">
                                            <b>
                                            <asp:Label ID="Label11" runat="server" Text="Label" style="color: #000080"></asp:Label>
                                            </b>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Button ID="Button2" runat="server" CssClass="fa-inverse" style="background-color: #006600" Text="Confirm Booking" Height="34px" OnClick="Button2_Click1" />
                                        </td>
                                        <td style="margin-left: 160px">
                                            <asp:Button ID="Button3" runat="server" CssClass="fa-inverse" style="background-color: #990000" Text="Cancel" OnClick="Button3_Click" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td style="margin-left: 160px">
                                            &nbsp;</td>
                                    </tr>
                                </table></center>
                                <p>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </p>
					
</asp:Content>
