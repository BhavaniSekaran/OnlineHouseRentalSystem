using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Text;

namespace WebApplication7
{
    public partial class contact1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            }

        protected void Button1_Click(object sender, EventArgs e)
        {
             
            string from = "bhavy2021@gmail.com";
            string pass = "2021bhavy";
            //From address    
            MailMessage message = new MailMessage(from, from);

            string mailbody ="Email From : " + TextBox2.Text+"<br/>"+"Name : "+TextBox1.Text+ "<br/>" +"Message:"+ TextBox4.Text;
            message.Subject = TextBox3.Text;
            message.Body = mailbody;
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential(from, pass);
            client.EnableSsl = true;
            client.UseDefaultCredentials = false;
            client.Credentials = basicCredential1;
            try
            {
                client.Send(message);
                Response.Write("<script>alert('Successfully Sent')</script>");


            }

            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

             


                
            
        }
    }
}