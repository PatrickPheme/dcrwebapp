using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace WingtipToys.Models
{
    public class Booking
    {
        [Key]
        public int JobId { get; set; }

        [DisplayName("Date of Boking")]
        public Nullable<DateTime> DateOfBooking { get; set; }

        [DisplayName("Car Model")]
        public string CarModel { get; set; }

        [DisplayName("Car Name")]
        public string CarName { get; set; }


        [DisplayName("Scheduled Date")]
        public DateTime? DateOfWork { get; set; }

        [StringLength(10000), Display(Name = "Installation / Repair Description"), DataType(DataType.MultilineText)]
        public string Booking_Description { get; set; }

        [DisplayName("Order Id")]
        public int? OrderId { get; set; }

        public virtual Order Order { get; set; }

        [DisplayName("Status")]
        public int StatusId { get; set; }

        public virtual BookingStatus BookStatus { get; set; }


         [DisplayName("Booiking Type")]
        public int TypeId { get; set; }

        public virtual BookingType BookType { get; set; }

        [DisplayName("Customer Name")]
        public int CustomerCustomerId { get; set; }

        public virtual Customer Customer { get; set; }
    }

    public class BookingStatus
    {
        [Key]
        public int StatusId { get; set; }

        [Display]
        [DisplayName("Status")]
        public string StatusName { get; set; }
    }

    public class BookingType
    {
         [Key]
        public int TypeId { get; set; }

        [Display]
        [DisplayName("Booking Type")]
        public string BookType { get; set; }
    }
}