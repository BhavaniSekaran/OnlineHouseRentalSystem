<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="WebApplication7.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>  <center>  <h1 style="font-size: xx-large; color: #2F878E"><B>&nbsp;Seller&nbsp; Login</B></h1>
        </div>
    
    <style>
        @import url(https://fonts.googleapis.com/css?family=Dancing+Script|Roboto);
*, *:after, *:before {
  box-sizing: border-box;
}
body {
 
  text-align: center;
  font-family: 'Roboto', sans-serif;
}

.panda {
  position: relative;
  width: 200px;
  margin: 50px auto;
}

.hand, .hand:after, .hand:before {
  width: 40px;
  height: 30px;
  border-radius: 50px;
  box-shadow: 0 2px 3px rgba(0, 0, 0, 0.15);
  background: #000;
  margin: 5px;
  position: absolute;
  top: 70px;
  left: -25px;
}
.hand:after, .hand:before {
  content: '';
  left: -5px;
  top: 11px;
}
.hand:before {
  top: 26px;
}
.hand.rgt, .rgt.hand:after, .rgt.hand:before {
  left: auto;
  right: -25px;
}
.hand.rgt:after, .hand.rgt:before {
  left: auto;
  right: -5px;
}



form {
  display: none;
  max-width: 400px;
  padding: 20px 40px;
  background: #fff;
  height: 300px;
  margin: auto;
  display: block;
  box-shadow: 0 10px 15px rgba(0, 0, 0, 0.15);
  transition: 0.3s;
  position: relative;
  transform: translateY(-100px);
  z-index: 500;
  border: 1px solid #eee;
}
form.up {
  transform: translateY(-180px);
}

h1 {
  color: #020115;
  font-family: 'Dancing Script', cursive;
}

.btn {
  background: #fff;
  padding: 5px;
  width: 150px;
  height: 35px;
  border: 1px solid #2F878E;
  margin-top: 25px;
  cursor: pointer;
  transition: 0.3s;
  box-shadow: 0 50px #2F878E inset;
  color: #fff;
}
.btn:hover {
  box-shadow: 0 0 #2F878E inset;
  color: #2F878E;
}
.btn:focus {
  outline: none;
}

.form-group {
  position: relative;
  font-size: 15px;
  color: #666;
}
.form-group + .form-group {
  margin-top: 30px;
}
.form-group .form-label {
  position: absolute;
  z-index: 1;
  left: 0;
  top: 5px;
  transition: 0.3s;
}
.form-group .form-control {
  width: 100%;
  position: relative;
  z-index: 3;
  height: 35px;
  background: none;
  border: none;
  padding: 5px 0;
  transition: 0.3s;
  border-bottom: 1px solid #777;
  color: #555;
}
.form-group .form-control:invalid {
  outline: none;
}
.form-group .form-control:focus, .form-group .form-control:valid {
  outline: none;
  box-shadow: 0 1px #;
  border-color: rgba(0, 0, 0, 0.15);
}
.form-group .form-control:focus + .form-label, .form-group .form-control:valid + .form-label {
  font-size: 12px;
  color: rgba(0, 0, 0, 0.15);
  transform: translateY(-15px);
}




.wrong-entry {
  -webkit-animation: wrong-log 0.3s;
  animation: wrong-log 0.3s;
}
.wrong-entry .alert {
  opacity: 1;
  transform: scale(1, 1);
}
@-webkit-keyframes eye-blink {
  to {
    height: 30px;
  }
}
@keyframes eye-blink {
  to {
    height: 30px;
  }
}
@-webkit-keyframes wrong-log {
  0%, 100% {
    left: 0px;
  }
  20% , 60% {
    left: 20px;
  }
  40% , 80% {
    left: -20px;
  }
}
@keyframes wrong-log {
  0%, 100% {
    left: 0px;
  }
  20% , 60% {
    left: 20px;
  }
  40% , 80% {
    left: -20px;
  }
}
        .auto-style1 {
            font-weight: bold;
            font-size: medium;
        }
        .auto-style2 {
            font-weight: bold;
            font-size: large;
            color: #008080;
        }
    </style><center>  
   
	<div class="panda">
  
  
    <div class="finger"></div>
  </div>
 
</div>

  <div class="hand"></div>
  <div class="hand rgt"></div>

  <div class="form-group">

      <label class="form-label">Email ID  </label><br />
   <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
    
  </div>
  <div class="form-group">
      <label class="form-label">Password</label><br />
    <asp:TextBox ID="TextBox2" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
    <asp:Label ID="Label1" runat="server" CssClass="auto-style1"></asp:Label>
      <br />
    <br />
    
<asp:Button ID="Button1" runat="server" class="btn" Text="Login" OnClick="Button1_Click1"></asp:Button>
  </div>
               <asp:LinkButton ID="LinkButton1" runat="server" CssClass="auto-style2" OnClick="LinkButton1_Click1">Register Here</asp:LinkButton>
         <br />
         <br />

         <br />
</asp:Content>
