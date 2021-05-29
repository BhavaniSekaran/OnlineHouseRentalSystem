<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="Accept.aspx.cs" Inherits="WebApplication7.Accept" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>  <h1 style="font-size: xx-large; color: #2F878E"><B>BOOKING DETAILS</B></h1>


    


    <div class="center">


    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" CellPadding="4" ForeColor="#333333" GridLines="None" style="font-family: Verdana; font-size: small; margin-top: 0px;" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="hid" HeaderText="HID" />
           
            <asp:BoundField DataField="houseno" HeaderText="HouseNo" />
           
            <asp:BoundField DataField="amount" HeaderText="Amount" />
            <asp:BoundField DataField="email" HeaderText="Email" />
            <asp:BoundField DataField="name" HeaderText="Name" />
            <asp:BoundField DataField="mobile" HeaderText="Mobile" />
            <asp:BoundField DataField="city" HeaderText="City" />
            <asp:BoundField DataField="status" HeaderText="Status" />
            <asp:ButtonField CommandName="accept" Text="Accept" ButtonType="Button" >
            <ControlStyle BackColor="#009933" />
            </asp:ButtonField>
            <asp:ButtonField CommandName="reject" Text="Reject" ButtonType="Button" >
            <ControlStyle BackColor="#FF3300" />
            </asp:ButtonField>
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    </div>
<center>  
    


</asp:Content>
