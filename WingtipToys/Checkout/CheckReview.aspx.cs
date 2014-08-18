using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WingtipToys.Logic;
using WingtipToys.Models;

namespace WingtipToys.Checkout
{
    public partial class CheckReview : System.Web.UI.Page

    {
        ProductContext _db = new ProductContext();
        
        protected void Page_Load(object sender, EventArgs e)
        {
             string user = Context.User.Identity.Name;

             Customer myCust = _db.Customers.FirstOrDefault(p => p.Customer_Email == user);

             Label4.Text = "First Name : " + myCust.Customer_FirstName;
             Label5.Text = "Email : " + myCust.Customer_Email;
             Label6.Text = "Cell Number : " + myCust.Customer_CellNo;

             ShoppingCartActions actions = new ShoppingCartActions();
             Label3.Text = "R " + actions.GetTotal().ToString();
        }
        public List<CartItem> GetCartItem()
        {
            ShoppingCartActions actions = new ShoppingCartActions();
            return actions.GetCartItems();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Status sStatus = new Status();
            sStatus.StatusId = 1;

            Customer myCust = _db.Customers.FirstOrDefault(p => p.Customer_Email == Context.User.Identity.Name);

            Order myOrd = new Order();
             myOrd.CustomerCustomerId = myCust.CustomerId;
             myOrd.Phone = myCust.Customer_CellNo;
             myOrd.StatusId = 1;
             myOrd.OrderDate = DateTime.Now;
             myOrd.Customer = myCust;
             myOrd.status = sStatus;
            _db.Orders.Add(myOrd);
            _db.SaveChanges();
            using (WingtipToys.Logic.ShoppingCartActions usersShoppingCart = new WingtipToys.Logic.ShoppingCartActions())
            {
                List<CartItem> myOrderList = usersShoppingCart.GetCartItems();

                

                // Add OrderDetail information to the DB for each product purchased.
                for (int i = 0; i < myOrderList.Count; i++)
                {  
                
                    // Create a new OrderDetail object.
                    var myOrderDetail = new OrderDetail();
                    myOrderDetail.OrderId = myOrd.OrderId;          
                    myOrderDetail.ProductProductID = myOrderList[i].ProductId;
                    


                    myOrderDetail.Quantity = myOrderList[i].Quantity;
                    myOrderDetail.UnitPrice = (decimal)myOrderList[i].Product.UnitPrice;
                  //  myOrderDetail.TotalPrice = (decimal)myOrderList[i].Product.UnitPrice * myOrderList[i].Quantity;
                    _db.OrderDetails.Add(myOrderDetail);
                    _db.SaveChanges();
                }
                myOrd.Total = usersShoppingCart.GetTotal();
                _db.SaveChanges();
                usersShoppingCart.EmptyCart();
            }
            Session["OrderId"] = myOrd.OrderId;

            if(Session["CarModel"] != null){
              Installation myInstall = new Installation();
              myInstall.OrderId = myOrd.OrderId;
              myInstall.DateOfInstallation = DateTime.Now;
              myInstall.CarModel = Session["CarModel"].ToString();
              myInstall.CarName = Session["CarName"].ToString();
              myInstall.DateOfBooking = DateTime.Now;
              myInstall.Installation_Description = "Description of installation";
              myInstall.StatusId = 1;
              myInstall.Order = myOrd;
              _db.Installations.Add(myInstall);
              _db.SaveChanges();

              Booking Book = new Booking();
              Book.Customer = myCust;
              Book.CustomerCustomerId = myCust.CustomerId;
              Book.DateOfBooking = DateTime.Now;
              Book.DateOfWork = (DateTime)Session["Date"];
              Book.Order = myOrd;
              Book.OrderId = myOrd.OrderId;
              Book.Booking_Description = "Booking description";
              Book.CarModel = Session["CarModel"].ToString();
              Book.CarName = Session["CarName"].ToString();
              Book.StatusId = 1;
              Book.TypeId = 2;
              _db.Bookings.Add(Book);
              _db.SaveChanges();

            }

            Response.Redirect("CheckoutComplete.aspx");
         
        }

    }
}