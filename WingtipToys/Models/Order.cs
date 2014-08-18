using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace WingtipToys.Models
{
    public class Order
    {
        [Key]
        [Display]
        [ScaffoldColumn(true)]
        public int OrderId { get; set; }

        [DisplayName("Order Id")]
        [ScaffoldColumn(true)]
        public int PaymentTransactionId {
            get { return OrderId; }
            private set { }
        }

//        [Required]
   //     [ScaffoldColumn(true)]
     //   [DisplayName("Order Status")]
      //  public string Status { get; set; }

        [Required]
        [DisplayName("Order Date")]
        public System.DateTime OrderDate { get; set; }

        //[Required(ErrorMessage = "First Name is required")

        [StringLength(10)]
        [ScaffoldColumn(true)]
        public string Phone { get; set; }

      //  [Required(ErrorMessage = "Email Address is required")]
        [DisplayName("Email Address")]
        [RegularExpression(@"[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}",
        ErrorMessage = "Email is is not valid.")]
        [DataType(DataType.EmailAddress)]
        public string Email { get; set; }

        [ScaffoldColumn(true)]
        public decimal Total { get; set; }

        public List<OrderDetail> OrderDetails { get; set; }

        [DisplayName("Customer Name")]
        public int CustomerCustomerId { get; set; }

        public virtual Customer Customer { get; set; }

        [DisplayName("Status")]
        public int StatusId { get; set; }

        public virtual Status status { get; set; }
    }

    public class Status
    {
        [Key]
        public int StatusId { get; set; }
        [Display]
        [DisplayName("Status")]
        public string StatusName { get; set; }
    }
}