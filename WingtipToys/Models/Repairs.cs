using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace WingtipToys.Models
{
    public class Repairs
    {
        [Key]
        public int RepairsId { get; set; }

        public DateTime DateOfBooking { get; set; }

        public DateTime DateOfRepair { get; set; }

        [DisplayName("Status")]
        public int StatusId { get; set; }

        public virtual BookingStatus BookStatus { get; set; }

        [StringLength(10000), Display(Name = "Repair Description"), DataType(DataType.MultilineText)]
        public string RepairDescription { get; set; }

        [DisplayName("Customer Name")]
        public int CustomerCustomerId { get; set; }

        public virtual Customer customer { get; set; }
    }
}