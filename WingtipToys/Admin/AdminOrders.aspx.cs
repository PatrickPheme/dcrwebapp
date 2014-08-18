using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WingtipToys.Models;

namespace WingtipToys.Admin
{
    public partial class AdminOrders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public IQueryable<WingtipToys.Models.Order> GetOrders()
        {
        

            var gh = new ProductContext();
            IQueryable<WingtipToys.Models.Order> query = gh.Orders;
            return query;
        }
    }
}