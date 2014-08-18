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

namespace WingtipToys.Admin.Repairs
{
    public partial class Delete : System.Web.UI.Page
    {
		protected WingtipToys.Models.ProductContext _db = new WingtipToys.Models.ProductContext();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Delete methd to delete the selected Repairs item
        // USAGE: <asp:FormView DeleteMethod="DeleteItem">
        public void DeleteItem(int RepairsId)
        {
            using (_db)
            {
                var item = _db.Repairss.Find(RepairsId);

                if (item != null)
                {
                    _db.Repairss.Remove(item);
                    _db.SaveChanges();
                }
            }
            Response.Redirect("../Default");
        }

        // This is the Select methd to selects a single Repairs item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public WingtipToys.Models.Repairs GetItem([FriendlyUrlSegmentsAttribute(0)]int? RepairsId)
        {
            if (RepairsId == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.Repairss.Where(m => m.RepairsId == RepairsId).Include(m => m.BookStatus).Include(m => m.customer).FirstOrDefault();
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

