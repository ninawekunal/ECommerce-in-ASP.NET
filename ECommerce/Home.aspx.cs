using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;

namespace MasterPageDemo
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName=="ViewDetails")
            {
                Response.Redirect("ViewDetails.aspx?id="+e.CommandArgument.ToString());
            }
            if (e.CommandName == "AddToCart")
            {
                int id = Convert.ToInt32(e.CommandArgument.ToString());
                String con_str = ConfigurationManager.ConnectionStrings["myDb"].ConnectionString;
                using (SqlConnection con = new SqlConnection(con_str))
                {
                    con.Open();
                    SqlCommand cmd1 = new SqlCommand("select * from products where p_id="+id,con);
                    SqlDataAdapter ds = new SqlDataAdapter(cmd1);
                    DataTable dt = new DataTable();
                    ds.Fill(dt);
                    if (dt.Rows.Count != 0)
                    {
                        String pro_name = dt.Rows[0][1].ToString();
                        String pro_image = dt.Rows[0][5].ToString();
                        String price = dt.Rows[0][2].ToString();
                        Label1.Text = "Name: " + pro_name + " Image: " + pro_image + " Price: " + price;
                        SqlCommand cmd = new SqlCommand("insert into Cart(pro_id,pro_name,pro_image,pro_price) values(@pro_id,@pro_name,@pro_image,@pro_price)", con);
                        cmd.Parameters.AddWithValue("@pro_id",id);
                        cmd.Parameters.AddWithValue("@pro_name", pro_name);
                        cmd.Parameters.AddWithValue("@pro_image", pro_image);
                        cmd.Parameters.AddWithValue("@pro_price", price);

                        int result = cmd.ExecuteNonQuery();
                        con.Close();
                        if (result != 0)
                        {
                            Response.Redirect("Cart.aspx");
                        }
                    }

                    
                    
                }
                
                     
                
            }
        }
    }
}