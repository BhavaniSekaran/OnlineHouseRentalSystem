using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Web.UI.WebControls;

namespace WebApplication7
{
    public partial class adminview : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindFormView();
            }

        }
        private void BindFormView()
        {
            con.Open();
            //string constr = "Server=SampleServer; Database=SampleDB; uid=test; pwd=test";
            string query = "SELECT *  FROM addhome where email='" + Session["email"].ToString() + "' ";
            //Session["pname"] = "pname";

            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable table = new DataTable();

            da.Fill(table);
            FormView1.DataSource = table;
            FormView1.DataBind();
            con.Close();

        }


        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {
            FormView1.PageIndex = e.NewPageIndex;
            this.BindFormView();
        }
    }
}
