using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication7
{
    public partial class adminlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if ((TextBox1.Text== "admin") && (TextBox2.Text == "admin"))
            {


                Response.Redirect("adminpanel.aspx");
            }
            else
            {

                Label1.Text = "Invalid User!!!!";
            }
        }
    }
}