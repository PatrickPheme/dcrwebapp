using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WingtipToys
{
    public partial class Confirm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Checkout/CheckReview.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Session["CarModel"] = CarModel.Text;
            Session["CarName"] = CarName.Text;
            Session["Date"] = Calendar1.SelectedDate;
            Response.Redirect("Checkout/CheckReview.aspx");
        }
    }
}