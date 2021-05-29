using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace WebApplication7
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        string connStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
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
            SqlConnection conn = new SqlConnection(connStr);
            dt = new DataTable();
            com.Connection = conn;
            com.CommandText = "SELECT * FROM Employees";
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
            SqlConnection conn = new SqlConnection(connStr);
            com.Connection = conn;
            com.CommandText = "DELETE FROM Employees WHERE EmployeeID='" + key.Value.ToString() + "'";
            conn.Open();
            com.ExecuteNonQuery();
            conn.Close();
            Response.Write("Record deleted successfully");
            bindgrid();
        }
        protected void EmployeeFormView_ItemUpdating(object sender, FormViewUpdateEventArgs e)
        {

            DataKey key = EmployeeFormView.DataKey;
            TextBox txtFirstName = (TextBox)EmployeeFormView.FindControl("txtFirstName2");
            TextBox txtLastName = (TextBox)EmployeeFormView.FindControl("txtLastName2");
            TextBox txtAddress = (TextBox)EmployeeFormView.FindControl("txtAddress2");
            TextBox txtDesignation = (TextBox)EmployeeFormView.FindControl("txtDesignation2");

            SqlConnection conn = new SqlConnection(connStr);
            com.Connection = conn;
            com.CommandText = "UPDATE Employees SET FirstName ='" + txtFirstName.Text + "',LastName ='" + txtLastName.Text + "',Address ='" + txtAddress.Text + "',Designation ='" + txtDesignation.Text + "'   WHERE EmployeeID='" + key.Value.ToString() + "'";
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

            TextBox txtEmployeeID = (TextBox)EmployeeFormView.FindControl("txtEmployeeID1");
            TextBox txtFirstName = (TextBox)EmployeeFormView.FindControl("txtFirstName1");
            TextBox txtLastName = (TextBox)EmployeeFormView.FindControl("txtLastName1");
            TextBox txtAddress = (TextBox)EmployeeFormView.FindControl("txtAddress1");
            TextBox txtDesignation = (TextBox)EmployeeFormView.FindControl("txtDesignation1");

            SqlConnection conn = new SqlConnection(connStr);
            com.Connection = conn;
            com.CommandText = "INSERT INTO Employees Values('" + txtEmployeeID.Text + "','" + txtFirstName.Text + "', '" + txtLastName.Text + "', '" + txtAddress.Text + "', '" + txtDesignation.Text + "')";
            conn.Open();
            com.ExecuteNonQuery();
            Response.Write("Record inserted successfully");
            bindgrid();
            conn.Close();
        }
    }
}
