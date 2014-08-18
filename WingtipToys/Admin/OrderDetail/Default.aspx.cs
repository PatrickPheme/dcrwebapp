using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using WingtipToys.Models;
using System.Web.ModelBinding;

namespace WingtipToys.Admin.OrderDetail
{
    public partial class Default : System.Web.UI.Page
    {
		protected WingtipToys.Models.ProductContext _db = new WingtipToys.Models.ProductContext();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Model binding method to get List of OrderDetail entries
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<WingtipToys.Models.OrderDetail> GetData([QueryString("OrderId")] int? OrderId)
        {
            if (OrderId == null) {
                return _db.OrderDetails.Include(m => m.Order).Include(m => m.Product);
             }
            else{
            return _db.OrderDetails.Where(P => P.OrderId == OrderId).Include(m => m.Order).Include(m => m.Product);
            }
        }
    }
}

