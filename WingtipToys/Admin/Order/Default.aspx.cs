using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using WingtipToys.Models;

namespace WingtipToys.Admin.Order
{
    public partial class Default : System.Web.UI.Page
    {
		protected WingtipToys.Models.ProductContext _db = new WingtipToys.Models.ProductContext();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Model binding method to get List of Order entries
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<WingtipToys.Models.Order> GetData()
        {
            return _db.Orders.Include(m => m.Customer);
        }
    }
}

