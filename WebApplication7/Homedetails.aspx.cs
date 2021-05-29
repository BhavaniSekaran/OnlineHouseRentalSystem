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
    public partial class Homedetails : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

            BindRepeater();
        }
        private void BindRepeater()
        {
            {
                conn.Open();
                //string constr = "Server=SampleServer; Database=SampleDB; uid=test; pwd=test";
                string query = "SELECT *  FROM addhome  ";
                //Session["pname"] = "pname";

                SqlDataAdapter da = new SqlDataAdapter(query, conn);
                DataTable table = new DataTable();

                da.Fill(table);

                DataList1.DataSource = table;
                DataList1.DataBind();
                conn.Close();

            }
        }
        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
           
        }

        protected void FormView1_PageIndexChanged(object sender, EventArgs e)
        {

        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
           // Response.Redirect("admindetails.aspx");
        }
    }
}