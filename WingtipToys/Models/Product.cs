using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace WingtipToys.Models
{
    public class Product
    {
        [Key]
        [ScaffoldColumn(false)]
        public int ProductID { get; set; }

        [Display]
        [Required, StringLength(100)]
        [DisplayName("Product Name")]
        public string ProductName { get; set; }

        [Required, StringLength(10000), Display(Name = "Product Description"), DataType(DataType.MultilineText)]
        public string Description { get; set; }

        [DisplayName("Image Path")]
        public string ImagePath { get; set; }

        [DisplayName("Unit Price")]
        public decimal? UnitPrice { get; set; }

        [DisplayName("Category")]
        public int CategoryID { get; set; }

        public virtual Category Category { get; set; }
    }
}