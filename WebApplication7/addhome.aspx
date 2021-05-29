<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="addhome.aspx.cs" Inherits="WebApplication7.addhome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
     <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css/main.css" rel="stylesheet" media="all">
</head>

<body>
    
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">HOME REGISTRATION</h2>
                </div>
                <div class="card-body">
                    <form method="POST">
                        <div class="form-row m-b-55">
                             
                            <div class="value">
                                <div class="form-row">
                            <div class="name">House Id</div>
                            <div class="value">
                                <div class="input-group">
                                     <asp:TextBox ID="TextBox1"  class="input--style-5" runat="server"></asp:TextBox>   </div>
                            </div>
                        </div>
                              <div class="form-row">
                            <div class="name">Category</div>
                            <div class="value">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple select--no-search">
                                       <asp:DropDownList ID="DropDownList1" runat="server">
                                           <asp:ListItem>Select House</asp:ListItem>
                                           <asp:ListItem>Apartment</asp:ListItem>
                                           <asp:ListItem>Seprate House</asp:ListItem>
                                        </asp:DropDownList>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
                        </div>      
                            <div class="form-row">
                            <div class="name">Type Of House</div>
                            <div class="value">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple select--no-search">
                                       <asp:DropDownList ID="DropDownList2" runat="server">
                                           <asp:ListItem>Select Type Of House</asp:ListItem>
                                           <asp:ListItem>2BHK</asp:ListItem>
                                           <asp:ListItem>3BHK</asp:ListItem>
                                           <asp:ListItem>4BHK</asp:ListItem>
                                        </asp:DropDownList>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
                        </div>

                              <div class="form-row">
                            <div class="name">House NO</div>
                            <div class="value">
                                <div class="input-group">
                                         <asp:TextBox ID="TextBox2"  class="input--style-5" runat="server"></asp:TextBox>    </div>
                         
                            </div>
                        </div>   
                        <div class="form-row">
                            <div class="name">Address</div>
                            <div class="value">
                                <div class="input-group">
                                     <asp:TextBox ID="TextBox3"  class="input--style-5" runat="server"></asp:TextBox>    </div>
                            </div>
                        </div>
                       
                        <div class="form-row">
                            <div class="name">Amount</div>
                            <div class="value">
                                <div class="input-group">
                                         <asp:TextBox ID="TextBox5"  class="input--style-5" runat="server"></asp:TextBox>    </div>
                         
                            </div>
                        </div>
                                <div class="form-row">
                            <div class="name">Status</div>
                            <div class="value">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple select--no-search">
                                       <asp:DropDownList ID="DropDownList3" runat="server">
                                           <asp:ListItem>Status Of House</asp:ListItem>
                                           <asp:ListItem>Not Booked</asp:ListItem>
                                        </asp:DropDownList>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
 
                         <div class="form-row">
                            <div class="name">Image</div>
                            <div class="value">
                                <div class="input-group">
         <asp:FileUpload ID="FileUpload1" runat="server" />
                                        <div  class="input--style-5" ></div>    

                                </div>
                         
                            </div>
                        </div>
                                
                       
                       
                        <div>
                            <button class="btn btn--radius-2 btn--red" type="submit" runat="server" style="width: 232px; height: 89px">
                                <asp:Button ID="Button1" runat="server" Height="38px" style="background-color: #FF4B5A" Text="Register" OnClick="Button1_Click1" Width="132px" />
                            </button>
                        </div>
                   
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js/global.js"></script>

</asp:Content>




