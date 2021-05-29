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
    public partial class Displayhome : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                conn.Open();
                //string constr = "Server=SampleServer; Database=SampleDB; uid=test; pwd=test";
                string query = "SELECT *  FROM addhome ";
                //Session["pname"] = "pname";

                SqlDataAdapter da = new SqlDataAdapter(query, conn);
                DataTable table = new DataTable();

                da.Fill(table);
                DataList1.DataSource = table;
                DataList1.DataBind();
                conn.Close();
            }
        }
        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }


}