using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using WingtipToys.Models;

namespace WingtipToys
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        public IQueryable<WingtipToys.Models.Product> GetProductSummary([QueryString("productID")] int? productId)
        {
            var gh = new ProductContext();
            IQueryable<WingtipToys.Models.Product> query = (IQueryable<WingtipToys.Models.Product>)gh.Products;
            if (productId.HasValue && productId > 0)
            {
                query = query.Where(P => P.ProductID == productId);
            }
            return query;
        }
    }
}