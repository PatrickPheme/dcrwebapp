using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using WingtipToys.Models;

namespace WingtipToys.Admin.Booking
{
    public partial class Default : System.Web.UI.Page
    {
		protected WingtipToys.Models.ProductContext _db = new WingtipToys.Models.ProductContext();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Model binding method to get List of Booking entries
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<WingtipToys.Models.Booking> GetData()
        {
            return _db.Bookings.Include(m => m.BookStatus).Include(m => m.BookType).Include(m => m.Customer).Include(m => m.Order);
        }
    }
}

