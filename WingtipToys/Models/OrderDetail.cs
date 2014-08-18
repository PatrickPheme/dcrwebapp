using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace WingtipToys.Models
{
    public class OrderDetail
    {
        [Key]
        public int OrderDetailId { get; set; }

        public int Quantity { get; set; }
        [DisplayName("Unit Price")]
        public decimal? UnitPrice { get; set; }

        [DisplayName("Total Price")]
        [DatabaseGenerated(DatabaseGeneratedOption.Computed)]
        public decimal? TotalPrice
        {
            get { return UnitPrice * Quantity; }
            private set { }
        }

        [Required]
        [DisplayName("Order Id")]     
        public int OrderId { get; set; }

        public virtual Order Order { get; set; }

        [Required]
        [DisplayName("Product Name")]
        public int ProductProductID{ get; set; }

        public virtual Product Product { get; set; }

    }
}