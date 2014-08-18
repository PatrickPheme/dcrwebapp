using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using WingtipToys.Models;

namespace WingtipToys.Admin.Product
{
    public partial class Insert : System.Web.UI.Page
    {
		protected WingtipToys.Models.ProductContext _db = new WingtipToys.Models.ProductContext();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // This is the Insert method to insert the entered Product item
        // USAGE: <asp:FormView InsertMethod="InsertItem">
        public void InsertItem()
        {
            FileUpload ProductImage = (FileUpload)Formgh.FindControl("ProductImage");
            Boolean fileOK = false;
            String path = Server.MapPath("~/Catalog/Images/");
            if (ProductImage.HasFile)
            {
                String fileExtension = System.IO.Path.GetExtension(ProductImage.FileName).ToLower();
                String[] allowedExtensions = { ".gif", ".png", ".jpeg", ".jpg" };
                for (int i = 0; i < allowedExtensions.Length; i++)
                {
                    if (fileExtension == allowedExtensions[i])
                    {
                        fileOK = true;
                    }
                }
            }
            if (fileOK)
            {
                try
                {
                    // Save to Images folder.
                    ProductImage.PostedFile.SaveAs(path + ProductImage.FileName);
                    // Save to Images/Thumbs folder.
                    ProductImage.PostedFile.SaveAs(path + "Thumbs/" + ProductImage.FileName);
                }
                catch (Exception ex)
                {
                    Label myL = (Label)Formgh.FindControl("Label1");
                    myL.Text = ex.Message;
                    myL.Text = myL.Text + ProductImage.FileName;
                }
            }

            using (_db)
            {
                System.Web.DynamicData.DynamicControl myDynamic = (System.Web.DynamicData.DynamicControl)Formgh.FindControl("ImagePat");
                var item = new WingtipToys.Models.Product();
                TryUpdateModel(item);

                myDynamic.SetAttribute(ProductImage.FileName, ProductImage.FileName);
               
                item.ImagePath = ProductImage.FileName;

                if (ModelState.IsValid)
                {
                    // Save changes
                    _db.Products.Add(item);
                    _db.SaveChanges();

                    Response.Redirect("Default");
                }
            }
        }

        protected void ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Cancel", StringComparison.OrdinalIgnoreCase))
            {
                Response.Redirect("Default");
            }
        }

        protected void Formgh_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }
    }
}
