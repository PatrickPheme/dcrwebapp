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

namespace WingtipToys.Admin.Order
{
    public partial class Delete : System.Web.UI.Page
    {
		protected WingtipToys.Models.ProductContext _db = new WingtipToys.Models.ProductContext();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Delete methd to delete the selected Order item
        // USAGE: <asp:FormView DeleteMethod="DeleteItem">
        public void DeleteItem(int OrderId)
        {
            using (_db)
            {
                var item = _db.Orders.Find(OrderId);

                if (item != null)
                {
                    _db.Orders.Remove(item);
                    _db.SaveChanges();
                    
                   IQueryable va = _db.OrderDetails.Where(p => p.OrderId == item.OrderId);

                   foreach (WingtipToys.Models.OrderDetail mk in va)
                   {
                       _db.OrderDetails.Remove(mk);
                   }
                   _db.SaveChanges();
                }
            }
            Response.Redirect("../Default");
        }

        // This is the Select methd to selects a single Order item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public WingtipToys.Models.Order GetItem([FriendlyUrlSegmentsAttribute(0)]int? OrderId)
        {
            if (OrderId == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.Orders.Where(m => m.OrderId == OrderId).Include(m => m.Customer).FirstOrDefault();
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

