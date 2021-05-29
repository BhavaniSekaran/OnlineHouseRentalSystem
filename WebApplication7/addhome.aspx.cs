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
    public partial class addhome : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            auto();
        }
        void auto()
        {

            int a;

            con.Open();
            string query = "Select Max(hid) from addhome";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                string val = dr[0].ToString();
                if (val == "")
                {
                    TextBox1.Text = "101";
                }
                else
                {
                    a = Convert.ToInt32(dr[0].ToString());
                    a = a + 1;
                    TextBox1.Text = a.ToString();
                }
            }
            con.Close();
        }



        protected void Button7_Click(object sender, EventArgs e)
        {
           
        }
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
        protected void drpcate_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }



        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into addhome values('" + TextBox1.Text + "',@category,@type,@houseno,@address,@amount,@status,@image,@email)", con);

            cmd.Parameters.AddWithValue("@category", DropDownList1.Text);
            cmd.Parameters.AddWithValue("@type", DropDownList2.Text);

            cmd.Parameters.AddWithValue("@houseno", TextBox2.Text);
            cmd.Parameters.AddWithValue("@address", TextBox3.Text);
            cmd.Parameters.AddWithValue("@amount", TextBox5.Text);
            cmd.Parameters.AddWithValue("@status", DropDownList3.Text);
            cmd.Parameters.AddWithValue("@email", Session["email"]);
            int img = FileUpload1.PostedFile.ContentLength;

            byte[] msdata = new byte[img];

            FileUpload1.PostedFile.InputStream.Read(msdata, 0, img);

            cmd.Parameters.AddWithValue("@image", msdata);

            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            cmd.ExecuteNonQuery();

            con.Close();


            Response.Write("<script>alert('Successfully Registered')</script>");

            auto();
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox5.Text = "";
        }
    }
}