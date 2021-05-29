using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace WebApplication7
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        SqlDataAdapter sqlda = new SqlDataAdapter();

        SqlCommand com = new SqlCommand();

        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)

            {

                bindgrid();

            }
        }
        private void bindgrid()

        {


            dt = new DataTable();

            com.Connection = conn;

            com.CommandText = "SELECT * FROM booking2 where email='" + Session["email"].ToString() + "' ";

            sqlda = new SqlDataAdapter(com);

            sqlda.Fill(dt);

            FormView1.DataSource = dt;

            FormView1.DataBind();



        }





        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn.Open();
            

            DataKey key = FormView1.DataKey;
            

            String name1 = "Accepted";
            SqlCommand cmd = new SqlCommand("update booking2 set status='" + name1 + "' where hid=" + key.Value.ToString() + "", conn);
            Response.Write("<script>alert('Successfully Accepted')</script>");




            bindgrid();


            conn.Open();
            String name2 = "Booked";
            SqlCommand cmd2 = new SqlCommand("update addhome set status='" + name2 + "' where hid=" + name + "", conn);
            cmd2.ExecuteNonQuery();
            conn.Close();
            int ind1 = Convert.ToInt32(e.CommandArgument.ToString());
            String email = GridView1.Rows[ind1].Cells[3].Text;
            string to = email; //To address    
            string from = Session["email"].ToString();
            string pass = Session["pwd"].ToString();
            //From address    
            MailMessage message = new MailMessage(from, to);

            string mailbody = "House To Be Booked <br>House ID=" + name + "";
            message.Subject = "House Status";
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
            }

            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}