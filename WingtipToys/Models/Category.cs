using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace WingtipToys.Models
{
    public class Category
    {
    [Key]
    [ScaffoldColumn(false)]
    public int ID { get; set; }

    [Required, StringLength(1000), Display(Name = "Category Name")]
    public string CategoryName { get; set; }

    [StringLength(10000), Display(Name = "Category Description"), DataType(DataType.MultilineText)]
    public string Description { get; set; }

    public virtual ICollection<Product> Products { get; set; }
    }
}