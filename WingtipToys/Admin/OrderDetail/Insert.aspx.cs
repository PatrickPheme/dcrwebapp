using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using WingtipToys.Models;

namespace WingtipToys.Admin.OrderDetail
{
    public partial class Insert : System.Web.UI.Page
    {
		protected WingtipToys.Models.ProductContext _db = new WingtipToys.Models.ProductContext();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // This is the Insert method to insert the entered OrderDetail item
        // USAGE: <asp:FormView InsertMethod="InsertItem">
        public void InsertItem()
        {
            using (_db)
            {
                var item = new WingtipToys.Models.OrderDetail();

                TryUpdateModel(item);

                item.UnitPrice = _db.Products.Find(item.ProductProductID).UnitPrice;

                if (ModelState.IsValid)
                {
                    // Save changes
                    _db.OrderDetails.Add(item);
                    _db.SaveChanges();

                    IQueryable Ord = _db.OrderDetails.Where(s => s.OrderId == item.OrderId);
                    decimal? sum = 0;

                    foreach (WingtipToys.Models.OrderDetail hj in Ord)
                    {
                        sum += hj.TotalPrice;
                    }
                    _db.Orders.Find(item.OrderId).Total = (decimal)sum;
                    _db.SaveChanges();

                    Response.Redirect("Default");
                }
            }
        }

        protected void ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Cancel", StringComparison.OrdinalIgnoreCase))
            {
                Response.Redirect("Default");
            }
        }
    }
}
