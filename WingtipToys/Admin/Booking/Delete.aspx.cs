using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using Microsoft.AspNet.FriendlyUrls.ModelBinding;
using WingtipToys.Models;

namespace WingtipToys.Admin.Booking
{
    public partial class Delete : System.Web.UI.Page
    {
		protected WingtipToys.Models.ProductContext _db = new WingtipToys.Models.ProductContext();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Delete methd to delete the selected Booking item
        // USAGE: <asp:FormView DeleteMethod="DeleteItem">
        public void DeleteItem(int JobId)
        {
            using (_db)
            {
                var item = _db.Bookings.Find(JobId);

                if (item != null)
                {
                    _db.Bookings.Remove(item);
                    _db.SaveChanges();
                }
            }
            Response.Redirect("../Default");
        }

        // This is the Select methd to selects a single Booking item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public WingtipToys.Models.Booking GetItem([FriendlyUrlSegmentsAttribute(0)]int? JobId)
        {
            if (JobId == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.Bookings.Where(m => m.JobId == JobId).Include(m => m.BookStatus).Include(m => m.BookType).Include(m => m.Customer).Include(m => m.Order).FirstOrDefault();
            }
        }

        protected void ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Cancel", StringComparison.OrdinalIgnoreCase))
            {
                Response.Redirect("../Default");
            }
        }
    }
}

