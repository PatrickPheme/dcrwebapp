using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using WingtipToys.Models;

namespace WingtipToys.Admin
{
    public partial class AdminOrderDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public IQueryable<WingtipToys.Models.OrderDetail> GetOrderDetail([QueryString("OrderId")] int? OrderId)
        {
            Label1.Text = OrderId.ToString();
            var gh = new ProductContext();
            IQueryable<WingtipToys.Models.OrderDetail> query = (IQueryable<WingtipToys.Models.OrderDetail>)gh.OrderDetails;
            if (OrderId.HasValue && OrderId > 0)
            {
                query = query.Where(P => P.OrderId == OrderId);
            }
            return query;
        }
    }
}