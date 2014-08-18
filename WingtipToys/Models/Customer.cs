using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace WingtipToys.Models
{
    public class Customer
    {
        [Key]
        public int CustomerId { get; set; }

        [Display]
        public string Customer_FirstName { get; set; }
        [DisplayName("Last Name")]
        public string Customer_LastName { get; set; }   
        public string Customer_Password { get; set; }

        [DisplayName("Email Address")]
        [RegularExpression(@"[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}",
        ErrorMessage = "Email is is not valid.")]
        public string Customer_Email { get; set; }

        [DisplayName("Cell Number")]
        public string Customer_CellNo { get; set; }


        [DisplayName("Birth Date")]
        public DateTime Customer_BirthDate { get; set; }

        [DisplayName("Communication Reference")]
        public string Customer_CommunicationRef { get; set; }

         [DisplayName("Gender")]
        public string Customer_Gender { get; set; }

        [DisplayName("Car")]
        public string Customer_Car { get; set; }

        public List<Order> Order { get; set; }
    }
}