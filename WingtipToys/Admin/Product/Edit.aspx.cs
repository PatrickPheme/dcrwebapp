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
namespace WingtipToys.Admin.Product
{
    public partial class Edit : System.Web.UI.Page
    {
		protected WingtipToys.Models.ProductContext _db = new WingtipToys.Models.ProductContext();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Update methd to update the selected Product item
        // USAGE: <asp:FormView UpdateMethod="UpdateItem">
        public void UpdateItem(int  ProductID)
        {
            using (_db)
            {
                var item = _db.Products.Find(ProductID);

                if (item == null)
                {
                    // The item wasn't found
                    ModelState.AddModelError("", String.Format("Item with id {0} was not found", ProductID));
                    return;
                }

                TryUpdateModel(item);

                if (ModelState.IsValid)
                {
                    // Save changes here
                    _db.SaveChanges();
                    Response.Redirect("../Default");
                }
            }
        }

        // This is the Select method to selects a single Product item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public WingtipToys.Models.Product GetItem([FriendlyUrlSegmentsAttribute(0)]int? ProductID)
        {
            if (ProductID == null)
            {
                return null;
            }

            using (_db)
            {
                return _db.Products.Find(ProductID);
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
