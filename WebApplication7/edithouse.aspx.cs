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
    public partial class edithouse : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
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

            com.Connection = conn;

            com.CommandText = "SELECT * FROM addhome where email='" + Session["email"].ToString() + "' "; 

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



            com.Connection = conn;

            com.CommandText = "DELETE FROM addhome WHERE  hid=" + key.Value.ToString() + "";

            conn.Open();

            com.ExecuteNonQuery();

            conn.Close();

            Response.Write("Record deleted successfully");

            bindgrid();

        }

        protected void EmployeeFormView_ItemUpdating(object sender, FormViewUpdateEventArgs e)

        {



            DataKey key = EmployeeFormView.DataKey;

            TextBox txtFirstName = (TextBox)EmployeeFormView.FindControl("txtcat");

            TextBox txtLastName = (TextBox)EmployeeFormView.FindControl("txttype");

            TextBox txtAddress = (TextBox)EmployeeFormView.FindControl("TextBox1");

            TextBox txtDesignation = (TextBox)EmployeeFormView.FindControl("txtAddress2");

            TextBox txtDes = (TextBox)EmployeeFormView.FindControl("txtamount");






            com.Connection = conn;

            // com.CommandText = "UPDATE Employees SET FirstName ='" + txtFirstName.Text + "',LastName ='" + txtLastName.Text + "',Address ='" + txtAddress.Text + "',Designation ='" + txtDesignation.Text + "'   WHERE EmployeeID='" + key.Value.ToString() + "'";
            com.CommandText = "update addhome set category='" + txtFirstName.Text + "',type='" + txtLastName.Text + "',houseno='" + txtAddress.Text + "',address='" + txtDesignation.Text + "',amount='" + txtDes.Text + "' where hid=" + key.Value.ToString() + "";

            conn.Open();

            com.ExecuteNonQuery();

            Response.Write("Record updated successfully");

            bindgrid();

            conn.Close();

        }

        protected void EmployeeFormView_ModeChanging(object sender, FormViewModeEventArgs e)

        {

            EmployeeFormView.ChangeMode(e.NewMode);

            bindgrid();

            if (e.NewMode == FormViewMode.Edit)

            {

                EmployeeFormView.AllowPaging = false;

            }

            else

            {

                EmployeeFormView.AllowPaging = true;

            }

        }

        protected void EmployeeFormView_ItemInserted(object sender, FormViewInsertedEventArgs e)

        {

            EmployeeFormView.ChangeMode(FormViewMode.ReadOnly);

        }

        protected void EmployeeFormView_ItemUpdated(object sender, FormViewUpdatedEventArgs e)

        {

            EmployeeFormView.ChangeMode(FormViewMode.ReadOnly);

        }

        protected void EmployeeFormView_ItemInserting(object sender, FormViewInsertEventArgs e)

        {





        }

    }
}