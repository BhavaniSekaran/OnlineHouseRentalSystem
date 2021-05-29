<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication7._Default" %>

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
                    <h2 class="title">Admin Registration Form</h2>
                </div>
                <div class="card-body">
                    <form method="POST">
                        <div class="form-row m-b-55">
                             
                            <div class="value">
                                <div class="form-row">
                            <div class="name">Seller Id</div>
                            <div class="value">
                                <div class="input-group">
                                     <asp:TextBox ID="TextBox1"  class="input--style-5" runat="server"></asp:TextBox>   </div>
                            </div>
                        </div>
                                   
                             <div class="form-row">
                            <div class="name">Name</div>
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
                       
                        <div class="form-row m-b-55">
                            <div class="name">Phone</div>
                            <div class="value">
                                <div class="row row-refine">
                                    <div class="col-3">
                                        <div class="input-group-desc">
                                             <asp:TextBox ID="TextBox5"  class="input--style-5" runat="server"></asp:TextBox>  
                                            <label class="label--desc">Pin Code</label>
                                        </div>
                                    </div>
                                    <div class="col-9">
                                        <div class="input-group-desc">
                                            <asp:TextBox ID="TextBox6"  class="input--style-5" runat="server"></asp:TextBox> 
                                            <label class="label--desc">Mobile</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
 <div class="form-row">
                            <div class="name">City</div>
                            <div class="value">
                                <div class="input-group">
                                 <asp:TextBox ID="TextBox4"  class="input--style-5" runat="server"></asp:TextBox>   </div>
                           
                            </div>
     </div>
                        <div class="form-row">
                            <div class="name">Email</div>
                            <div class="value">
                                <div class="input-group">
                                     <asp:TextBox ID="TextBox7"  class="input--style-5" runat="server"></asp:TextBox>   </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Password</div>
                            <div class="value">
                                <div class="input-group">
                                     <asp:TextBox ID="TextBox8"  class="input--style-5" runat="server" TextMode="Password"></asp:TextBox>   </div>
                            </div>
                        </div>
                                 <div class="form-row">
                            <div class="name">Date</div>
                            <div class="value">
                                <div class="input-group">
        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                                        </div>
                        </div>
                                     <div></div>
                        <div class="form-row">
                            <div class="name">Subject</div>
                            <div class="value">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple select--no-search">
                                       <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row p-t-20">
                            <label class="label label--block">Are you an existing customer?</label>
                            <div class="p-t-15">
                                <label class="radio-container m-r-55">Yes
                                    <input type="radio" checked="checked" name="exist">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container">No
                                    <input type="radio" name="exist">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                        </div>
                        <div>
                            <button class="btn btn--radius-2 btn--red" type="submit">Register</button>
                        </div>
                    </form>
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
