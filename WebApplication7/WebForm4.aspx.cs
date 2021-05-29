using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication7
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        //  string connStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

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

            com.Connection = con;

            com.CommandText = "SELECT * FROM booking2 where email='" + Session["email"].ToString() + "' "; 

            sqlda = new SqlDataAdapter(com);

            sqlda.Fill(dt);

            FormView1.DataSource = dt;

            FormView1.DataBind();



        }



        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {
           
            bindgrid();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();

            DataKey key = FormView1.DataKey;

            String name4 = "Not Booked";
            SqlCommand cmd2 = new SqlCommand("update addhome set status='" + name4 + "' where hid='" + key.Value.ToString() + "'", con);
            cmd2.ExecuteNonQuery();
            SqlCommand cmd3 = new SqlCommand("delete from booking2 where hid='" + key.Value.ToString() + "'", con);
            cmd3.ExecuteNonQuery();
            Response.Write("<script>alert('Your house to be cancelled')</script>");


            con.Close();
        }
    }


}