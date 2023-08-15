﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace EFModels.Models
{
    public partial class ShoesCategory
    {
        public ShoesCategory()
        {
            CustomizedShoesPos = new HashSet<CustomizedShoesPo>();
        }

        [Key]
        public int ShoesCategoryId { get; set; }
        [Required]
        [StringLength(254)]
        public string ShoesCategoryName { get; set; }

        [InverseProperty("fk_ShoesCategory")]
        public virtual ICollection<CustomizedShoesPo> CustomizedShoesPos { get; set; }
    }
}