using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WingtipToys.Models;

namespace WingtipToys
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        ProductContext _db = new ProductContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Customer myCust = _db.Customers.FirstOrDefault(p => p.Customer_Email == Context.User.Identity.Name);

            Repairs myRepair = new Repairs();
            myRepair.DateOfRepair = Calendar1.SelectedDate;
            myRepair.DateOfBooking = DateTime.Now;
            myRepair.RepairDescription = TextBox2.Text;
            myRepair.StatusId = 1;
            myRepair.customer = myCust;
            myRepair.CustomerCustomerId = myCust.CustomerId;
            _db.Repairss.Add(myRepair);

            _db.SaveChanges();

            Session["JobNumber"] = myRepair.RepairsId;

            Booking Book = new Booking();
            Book.StatusId = 1;
            Book.TypeId = 1;
            Book.Booking_Description = TextBox2.Text;
            Book.CarModel = CarModel.Text;
            Book.CarName = CarName.Text;
            Book.Customer = myCust;
            Book.CustomerCustomerId = myCust.CustomerId;
            Book.DateOfBooking = DateTime.Now;
            Book.DateOfWork = Calendar1.SelectedDate;
            _db.Bookings.Add(Book);
            _db.SaveChanges();

            Response.Redirect("RepairConfirm.aspx");
        }
    }
}