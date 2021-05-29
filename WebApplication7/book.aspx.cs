using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;


namespace WebApplication7
{
    public partial class book : System.Web.UI.Page
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

            com.CommandText = "SELECT * FROM addhome ";

            sqlda = new SqlDataAdapter(com);

            sqlda.Fill(dt);

            EmployeeFormView.DataSource = dt;

            EmployeeFormView.DataBind();



        }

        protected void EmployeeFormView_PageIndexChanging(object sender, FormViewPageEventArgs e)

        {

            EmployeeFormView.PageIndex = e.NewPageIndex;

            bindgrid();

        }

        protected void EmployeeFormView_ItemDeleting(object sender, FormViewDeleteEventArgs e)

        {

            DataKey key = EmployeeFormView.DataKey;



            com.Connection = con;

            com.CommandText = "DELETE FROM addhome WHERE  hid=" + key.Value.ToString() + "";

            con.Open();

            com.ExecuteNonQuery();

            con.Close();

            Response.Write("Record deleted successfully");

            bindgrid();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //DialogResult result = MessageBox.Show("Do you Want to Cancel the house", "Confirmation", MessageBoxButtons.YesNo);
            //if (result == DialogResult.Yes)
            //{
                //con.Open();
                //String name4 = "NotBook";
                //SqlCommand cmd2 = new SqlCommand("update addhome set status='" + name4 + "' where hid=" + Label1.Text + "", con);
                //cmd2.ExecuteNonQuery();
                //SqlCommand cmd3 = new SqlCommand("delete from booking2 where hid=" + Label1.Text + "", con);
                //cmd3.ExecuteNonQuery();
                //Response.Write("<script>alert('Your house to be cancelled')</script>");


                //con.Close();
            //}
            //else
            //{
            //    Response.Write("<script>alert('Your house to be Booked')</script>");

            //}
        }

       
    }

}
