using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WingtipToys.Models;

namespace WingtipToys
{
    public partial class JobTrack : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        public IQueryable<WingtipToys.Models.Order> GetOrders()
        {

            var gh = new ProductContext();
            IQueryable<WingtipToys.Models.Order> query =  (IQueryable<WingtipToys.Models.Order>)gh.Orders;
            query = query.Where(P => P.Customer.Customer_Email == Context.User.Identity.Name);
            return query;
        }

        public IQueryable<WingtipToys.Models.Installation> GetInstallations()
        {

            var gh = new ProductContext();
            IQueryable<WingtipToys.Models.Installation> query = (IQueryable<WingtipToys.Models.Installation>)gh.Installations;
            query = query.Where(P => P.Order.Customer.Customer_Email == Context.User.Identity.Name);
            return query;
        }
        public IQueryable<WingtipToys.Models.Repairs> GetRepairs()
        {

            var gh = new ProductContext();
            IQueryable<WingtipToys.Models.Repairs> query = (IQueryable<WingtipToys.Models.Repairs>)gh.Repairss;
            query = query.Where(P => P.customer.Customer_Email == Context.User.Identity.Name);
            return query;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
        }
    }
}