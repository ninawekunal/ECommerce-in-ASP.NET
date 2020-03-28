using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

namespace MasterPageDemo
{
    public partial class GridViewDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridLoad();
            }
        }
        protected void GridLoad()
        {
            String con_str = ConfigurationManager.ConnectionStrings["myDb"].ConnectionString;
            using (SqlConnection con = new SqlConnection(con_str))
            {

                con.Open();
                SqlCommand cmd = new SqlCommand("select * from products", con);
                SqlDataReader dr = cmd.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
                con.Close();


            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            String pName, pPrice, pCat, pBrand, pImage;
            if (e.CommandName=="Add")
            {
                pName = (GridView1.FooterRow.FindControl("TextBoxName") as TextBox).Text;
                pPrice = (GridView1.FooterRow.FindControl("TextBoxPrice") as TextBox).Text;
                pCat = (GridView1.FooterRow.FindControl("TextBoxCat") as TextBox).Text;
                pBrand = (GridView1.FooterRow.FindControl("TextBoxBrand") as TextBox).Text;
                // pImage = GridView1.FooterRow.FindControl("TextBoxName").ToString();

                String con_str = ConfigurationManager.ConnectionStrings["myDb"].ConnectionString;
                using (SqlConnection con = new SqlConnection(con_str))
                {

                    con.Open();
                    SqlCommand cmd = new SqlCommand("insert into products(p_name,price,cat_id,brand_id) values('" + pName + "'," + pPrice + "," + pCat + "," + pBrand +  ")", con);
                    //cmd.Parameters.AddWithValue("@pName",pName);
                    int result = cmd.ExecuteNonQuery();
                    if (result != 0)
                    {
                        GridLoad();
                        
                    }

                    con.Close();
                }
            }
            if (e.CommandName == "Delete")
            {
                
                 String pID = (GridView1.FooterRow.FindControl("TextBoxID") as TextBox).Text;

                String con_str = ConfigurationManager.ConnectionStrings["myDb"].ConnectionString;
                using (SqlConnection con = new SqlConnection(con_str))
                {

                    con.Open();
                    SqlCommand cmd = new SqlCommand("delete from products where p_id="+pID, con);
                    //cmd.Parameters.AddWithValue("@pName",pName);
                    int result = cmd.ExecuteNonQuery();
                    if (result != 0)
                    {
                        GridLoad();

                    }

                    con.Close();
                }
            }
        }
    }
}