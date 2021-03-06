﻿using System;
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
    public partial class Edit : System.Web.UI.Page
    {
		protected WingtipToys.Models.ProductContext _db = new WingtipToys.Models.ProductContext();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Update methd to update the selected OrderDetail item
        // USAGE: <asp:FormView UpdateMethod="UpdateItem">
        public void UpdateItem(int  OrderDetailId)
        {
            using (_db)
            {
                var item = _db.OrderDetails.Find(OrderDetailId);

                if (item == null)
                {
                    // The item wasn't found
                    ModelState.AddModelError("", String.Format("Item with id {0} was not found", OrderDetailId));
                    return;
                }

                TryUpdateModel(item);
                item.UnitPrice = _db.Products.Find(item.ProductProductID).UnitPrice;
                IQueryable Ord = _db.OrderDetails.Where(s => s.OrderId == item.OrderId);
                decimal? sum =0;

                foreach(WingtipToys.Models.OrderDetail hj in Ord)
                {
                    sum += hj.TotalPrice;
                }
                _db.Orders.Find(item.OrderId).Total =(decimal)sum;
                


                if (ModelState.IsValid)
                {
                    // Save changes here
                    _db.SaveChanges();
                    Response.Redirect("../Default");
                }
            }
        }

        // This is the Select method to selects a single OrderDetail item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public WingtipToys.Models.OrderDetail GetItem([FriendlyUrlSegmentsAttribute(0)]int? OrderDetailId)
        {
            if (OrderDetailId == null)
            {
                return null;
            }

            using (_db)
            {
                return _db.OrderDetails.Find(OrderDetailId);
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
