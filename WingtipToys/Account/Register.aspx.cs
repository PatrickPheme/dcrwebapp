using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using WingtipToys.Models;

namespace WingtipToys.Account
{
    public partial class Register : Page
    {
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            var manager = new UserManager();
            var user = new ApplicationUser() { UserName = Email.Text };

            IdentityResult result = manager.Create(user, Password.Text);
           

           
                 
           


                //Create the customer
                ProductContext _db = new ProductContext();

                Customer CreateCust = new Customer();
                CreateCust.Customer_Email = Email.Text;
                CreateCust.Customer_FirstName = FirstName.Text;
                CreateCust.Customer_LastName = LastName.Text;
                CreateCust.Customer_CellNo = CellNo.Text;
                CreateCust.Customer_CommunicationRef = DropDownList2.SelectedValue;
                CreateCust.Customer_Gender = DropDownList1.SelectedValue;
                CreateCust.Customer_BirthDate = DateTime.Now;
                CreateCust.Customer_Car = "Mercedez";
                _db.Customers.Add(CreateCust);
                _db.SaveChanges();
            if (result.Succeeded )
            {
                
                IdentityHelper.SignIn(manager, user, isPersistent: false);


                ///////////////////////code added by Patrick/////////////////////////////////
                using (WingtipToys.Logic.ShoppingCartActions usersShoppingCart = new WingtipToys.Logic.ShoppingCartActions())
                {
                    String cartId = usersShoppingCart.GetCartId();
                    usersShoppingCart.MigrateCart(cartId, user.Id);
                }


                IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
            } 
            else
            {
                ErrorMessage.Text = result.Errors.FirstOrDefault();
                ErrorMessage.Text = ErrorMessage.Text  + "Failed to insert record in to database";
            }



           
           
               
           
        }
  
    }
}