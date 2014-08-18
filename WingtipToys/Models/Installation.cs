using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace WingtipToys.Models
{
    public class Installation
    {
        [Key]
        public int JobId { get; set; }


        [DisplayName("Booking Date")]
        public Nullable<DateTime> DateOfBooking { get; set; }

        [DisplayName("Car Model")]
        public string CarModel { get; set; }

        [DisplayName("Car Name")]
        public string CarName { get; set; }

        [DisplayName("Status")]
        public int StatusId { get; set; }

        public virtual BookingStatus BookStatus { get; set; }

        [DisplayName("Scheduled Date")]
        public DateTime? DateOfInstallation { get; set; }

        [StringLength(10000), Display(Name = "Installation Description"), DataType(DataType.MultilineText)]
        public string Installation_Description { get; set; }

        [DisplayName("Order Id")]   
        public int OrderId { get; set; }

        public virtual Order Order { get; set; }

    }
}