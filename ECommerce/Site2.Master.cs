using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPageDemo
{
    public partial class Site2 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName=="cat")
            {
                Response.Redirect("ProductsByCategory.aspx?cat_id="+e.CommandArgument.ToString());
            }
            if (e.CommandName == "brand")
            {
                Response.Redirect("ProductsByCategory.aspx?brand_id=" + e.CommandArgument.ToString());
            }
        }
    }
}