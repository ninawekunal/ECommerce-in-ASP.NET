using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data.Sql;

namespace MasterPageDemo
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        String name, email, password, country, city, address;
        long contact;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            name = TextBox1.Text;
            email = TextBox2.Text;
            password = TextBox3.Text;
            country = DropDownList1.SelectedItem.ToString();
            city = TextBox4.Text;
            address = TextBox6.Text;
            contact = Convert.ToInt64(TextBox5.Text);

            String con_str = ConfigurationManager.ConnectionStrings["myDb"].ConnectionString;
            using (SqlConnection con = new SqlConnection(con_str))
            {

                con.Open();
                SqlCommand cmd = new SqlCommand("insert into Users values('"+name+"','" + email + "','" + password + "','" + country + "','" + city + "'," + contact + ",'" + address + "')", con);
                int result = cmd.ExecuteNonQuery();
                if (result!=0)
                {
                    lblError.Text = "Registered Successfully.. Click here to go to :";
                    HyperLink1.Visible = true;
                }
                
                
            }
        }
    }
}