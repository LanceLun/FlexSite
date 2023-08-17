﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace EFModels.Models
{
    public partial class ProductSubCategory
    {
        public ProductSubCategory()
        {
            Products = new HashSet<Product>();
        }

        [Key]
        public int ProductSubCategoryId { get; set; }
        [Required]
        [StringLength(50)]
        public string ProductSubCategoryName { get; set; }
        public int fk_ProductCategoryId { get; set; }
        [Required]
        [StringLength(150)]
        public string SubCategoryPath { get; set; }

        [ForeignKey("fk_ProductCategoryId")]
        [InverseProperty("ProductSubCategories")]
        public virtual ProductCategory fk_ProductCategory { get; set; }
        [InverseProperty("fk_ProductSubCategory")]
        public virtual ICollection<Product> Products { get; set; }
    }
}