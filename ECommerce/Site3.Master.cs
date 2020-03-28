using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPageDemo
{
    public partial class Site3 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            userLabel.Text = Session["name"].ToString();
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            //Session.Abandon();
            Session.Clear();
            Response.Redirect("Login.aspx");
        }
    }
}
