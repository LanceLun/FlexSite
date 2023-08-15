﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace EFModels.Models
{
    public partial class MembershipLevel
    {
        public MembershipLevel()
        {
            Members = new HashSet<Member>();
            fk_Privileges = new HashSet<Privilege>();
        }

        [Key]
        public int LevelId { get; set; }
        [Required]
        [StringLength(10)]
        public string LevelName { get; set; }
        [Required]
        [StringLength(30)]
        [Unicode(false)]
        public string MinSpending { get; set; }
        public int? Discount { get; set; }
        [StringLength(300)]
        public string Description { get; set; }

        [InverseProperty("fk_Level")]
        public virtual ICollection<Member> Members { get; set; }

        [ForeignKey("fk_LevelId")]
        [InverseProperty("fk_Levels")]
        public virtual ICollection<Privilege> fk_Privileges { get; set; }
    }
}