<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeFile="contact1.aspx.cs" Inherits="WebApplication7.contact1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <head>
	<link rel="stylesheet" href="css/style.css">

	</head>
	
	<section class="ftco-section img bg-hero" style="background-image: url(images/w.jpg);">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">CONTACT uS</h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-lg-11">
					<div class="wrapper">
						<div class="row no-gutters justify-content-between">
							<div class="col-lg-6 d-flex align-items-stretch">
								<div class="info-wrap w-100 p-5">
									<h3 class="mb-4">Contact us</h3>
				        	<div class="dbox w-100 d-flex align-items-start">
				        		<div class="icon d-flex align-items-center justify-content-center">
				        			<span class="fa fa-map-marker"></span>
				        		</div>
				        		<div class="text pl-4">
					            <p><span>Address:</span> 198 West 21th Street, Suite 721 Salem 10016</p>
					          </div>
				          </div>
				        	<div class="dbox w-100 d-flex align-items-start">
				        		<div class="icon d-flex align-items-center justify-content-center">
				        			<span class="fa fa-phone"></span>
				        		</div>
				        		<div class="text pl-4">
					            <p><span>Phone:</span> <a href="tel://1234567920">+ 1235 2355 98</a></p>
					          </div>
				          </div>
				        	<div class="dbox w-100 d-flex align-items-start">
				        		<div class="icon d-flex align-items-center justify-content-center">
				        			<span class="fa fa-paper-plane"></span>
				        		</div>
				        		<div class="text pl-4">
					            <p><span>Email:</span> <a href="mailto:info@yoursite.com">info@onlinerental.com</a></p>
					          </div>
				          </div>
				        	<div class="dbox w-100 d-flex align-items-start">
				        		<div class="icon d-flex align-items-center justify-content-center">
				        			<span class="fa fa-globe"></span>
				        		</div>
				        		<div class="text pl-4">
					            <p><span>Website</span> <a href="contact1.aspx">www.onlinerental.in</a></p>
					          </div>
				          </div>
			          </div>
							</div>
							<div class="col-lg-5">
								<div class="contact-wrap w-100 p-md-5 p-4">
									<h3 class="mb-4" style="font-family: Arial; font-size: large; color: #000080"><strong>Leave Message</strong></h3>
									<div id="form-message-warning" class="mb-4"></div> 
				      		<div id="form-message-success" class="mb-4">
				            Your message was sent, thank you!
				      		</div>
									
										<div class="row">
											<div class="col-md-12">
												<div class="form-group">
													NAME<asp:TextBox ID="TextBox1" class="form-control"  runat="server"></asp:TextBox>
												</div>
											</div>
											<div class="col-md-12"> 
												<div class="form-group">
													EMAIL ID<asp:TextBox ID="TextBox2"  class="form-control"  runat="server"></asp:TextBox>				</div>
											</div>
											<div class="col-md-12">
												<div class="form-group">
													SUBJECT<asp:TextBox ID="TextBox3" class="form-control"  runat="server"></asp:TextBox></div>
											</div>
											<div class="col-md-12">
												<div class="form-group">
													MESSAGE<asp:TextBox ID="TextBox4" class="form-control"  runat="server" TextMode="MultiLine"></asp:TextBox>	</div>
											</div>
											<div class="col-md-12">
												<div class="form-group">
													<asp:Button ID="Button1" runat="server" Text="Send Message"  class="btn btn-primary" OnClick="Button1_Click" style="left: 0px; top: 0px"/>
													<div class="submitting"></div>
												</div>
											</div>
										</div>
									
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		   	</div>
	</section>
		
	

	

	

</asp:Content>
