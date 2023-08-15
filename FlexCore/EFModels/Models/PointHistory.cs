﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace EFModels.Models
{
    public partial class PointHistory
    {
        [Key]
        public int PointHistoryId { get; set; }
        public bool GetOrDeduct { get; set; }
        public int UsageAmount { get; set; }
        [Column(TypeName = "datetime")]
        public DateTime EffectiveDate { get; set; }
        public int? fk_MemberId { get; set; }
        public int? fk_OrderId { get; set; }
        public int? fk_TypeId { get; set; }
        public int? fk_MemberPointsId { get; set; }

        [ForeignKey("fk_MemberId")]
        [InverseProperty("PointHistories")]
        public virtual Member fk_Member { get; set; }
        [ForeignKey("fk_MemberPointsId")]
        [InverseProperty("PointHistories")]
        public virtual MemberPoint fk_MemberPoints { get; set; }
        [ForeignKey("fk_OrderId")]
        [InverseProperty("PointHistories")]
        public virtual order fk_Order { get; set; }
        [ForeignKey("fk_TypeId")]
        [InverseProperty("PointHistories")]
        public virtual Type fk_Type { get; set; }
    }
}