using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace MasterPageDemo
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            String email, password;
            email = txtEmail.Text;
            password = txtPassword.Text;
            String con_str = ConfigurationManager.ConnectionStrings["myDb"].ConnectionString;
            using(SqlConnection con = new SqlConnection(con_str))
            {
                
                con.Open();
                SqlCommand cmd = new SqlCommand("select name,email,password from Users where email='"+email+"' and password='"+password+"'",con);
                
                SqlDataAdapter ds = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                ds.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    Session["name"] = dt.Rows[0][0].ToString();
                    //lblError.Text = Session["name"].ToString();
                    Response.Redirect("Welcome.aspx");
                }
                else
                {
                    lblError.Text = "Invalid Credentials";

                }
            }

        }
    }
}