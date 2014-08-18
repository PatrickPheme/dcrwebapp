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

namespace WingtipToys.Admin.OrderDetail
{
    public partial class Delete : System.Web.UI.Page
    {
		protected WingtipToys.Models.ProductContext _db = new WingtipToys.Models.ProductContext();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Delete methd to delete the selected OrderDetail item
        // USAGE: <asp:FormView DeleteMethod="DeleteItem">
        public void DeleteItem(int OrderDetailId)
        {
            using (_db)
            {
                var item = _db.OrderDetails.Find(OrderDetailId);

                if (item != null)
                {
                    _db.OrderDetails.Remove(item);
                    _db.SaveChanges();
                       item.UnitPrice = _db.Products.Find(item.ProductProductID).UnitPrice;
                IQueryable Ord = _db.OrderDetails.Where(s => s.OrderId == item.OrderId);
                decimal? sum =0;

                foreach(WingtipToys.Models.OrderDetail hj in Ord)
                {
                    sum += hj.TotalPrice;
                }
                _db.Orders.Find(item.OrderId).Total =(decimal)sum;
                _db.SaveChanges();
                }
            }
            Response.Redirect("../Default");
        }

        // This is the Select methd to selects a single OrderDetail item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public WingtipToys.Models.OrderDetail GetItem([FriendlyUrlSegmentsAttribute(0)]int? OrderDetailId)
        {
            if (OrderDetailId == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.OrderDetails.Where(m => m.OrderDetailId == OrderDetailId).Include(m => m.Order).Include(m => m.Product).FirstOrDefault();
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

