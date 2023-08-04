/****** Object:  Table [dbo].[Activities]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Activities](
	[ActivityId] [int] IDENTITY(1,1) NOT NULL,
	[ActivityName] [nvarchar](50) NOT NULL,
	[fk_ActivityCategoryId] [int] NOT NULL,
	[ActivityDate] [datetime] NOT NULL,
	[fk_SpeakerId] [int] NOT NULL,
	[ActivityPlace] [nvarchar](100) NOT NULL,
	[ActivityImage] [nvarchar](300) NOT NULL,
	[ActivityBookStartTime] [datetime] NOT NULL,
	[ActivityBookEndTime] [datetime] NOT NULL,
	[ActivityAge] [tinyint] NOT NULL,
	[ActivitySalePrice] [int] NOT NULL,
	[ActivityOriginalPrice] [int] NOT NULL,
	[ActivityDescription] [nvarchar](300) NULL,
	[fk_ActivityStatusId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ActivityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActivityCategories]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivityCategories](
	[ActivityCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[ActivityCategoryName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ActivityCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActivityStatuses]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivityStatuses](
	[ActivityStatusId] [int] IDENTITY(1,1) NOT NULL,
	[ActivityStatusDescription] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ActivityStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AlternateAddresses]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlternateAddresses](
	[AddressId] [int] IDENTITY(501,1) NOT NULL,
	[AlternateAddress1] [nvarchar](300) NULL,
	[AlternateAddress2] [nvarchar](300) NULL,
	[fk_MemberId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[AddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BlackLists]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlackLists](
	[BlackListId] [int] IDENTITY(1,1) NOT NULL,
	[Behavior] [nvarchar](30) NOT NULL,
	[CreatedAt] [datetime] NULL,
 CONSTRAINT [PK__BlackLis__B54E3C740D440FFD] PRIMARY KEY CLUSTERED 
(
	[BlackListId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Branches]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branches](
	[BranchId] [int] IDENTITY(1,1) NOT NULL,
	[BranchName] [nvarchar](50) NOT NULL,
	[BranchAddress] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BranchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CartItems]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartItems](
	[CartItemId] [int] IDENTITY(1,1) NOT NULL,
	[fk_CardId] [int] NOT NULL,
	[fk_ProductId] [int] NOT NULL,
	[Description] [nvarchar](700) NOT NULL,
	[Qty] [int] NOT NULL,
 CONSTRAINT [PK_CartItem] PRIMARY KEY CLUSTERED 
(
	[CartItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ColorCategories]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ColorCategories](
	[ColorId] [int] IDENTITY(1,1) NOT NULL,
	[ColorName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ColorCategory] PRIMARY KEY CLUSTERED 
(
	[ColorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CouponCategories]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CouponCategories](
	[CouponCategoryId] [int] NOT NULL,
	[CouponCategoryName] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_coupon_category] PRIMARY KEY CLUSTERED 
(
	[CouponCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Coupons]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coupons](
	[CouponId] [int] IDENTITY(1,1) NOT NULL,
	[fk_CouponCategoryId] [int] NOT NULL,
	[CouponName] [nvarchar](50) NOT NULL,
	[CouponDescription] [nvarchar](100) NULL,
	[CouponCode] [nvarchar](50) NULL,
	[MinimumPurchaseAmount] [int] NOT NULL,
	[DiscountType] [int] NOT NULL,
	[DiscountValue] [int] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndType] [bit] NULL,
	[EndDays] [int] NULL,
	[EndDate] [datetime] NULL,
	[PersonMaxUsage] [int] NULL,
	[RequirementType] [int] NULL,
	[Requirement] [int] NULL,
	[fk_RequiredProjectTagID] [int] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Coupon] PRIMARY KEY CLUSTERED 
(
	[CouponId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CouponSendings]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CouponSendings](
	[SendingId] [int] IDENTITY(1,1) NOT NULL,
	[fk_CouponId] [int] NOT NULL,
	[fk_MemberId] [int] NULL,
	[SentDate] [datetime] NOT NULL,
	[RedemptionStatus] [bit] NOT NULL,
	[RedeemedDate] [datetime] NULL,
 CONSTRAINT [PK_CouponSending] PRIMARY KEY CLUSTERED 
(
	[SendingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customized_materials]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customized_materials](
	[Shoesmaterial_Id] [int] IDENTITY(1,1) NOT NULL,
	[material_Name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Shoesmaterial_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomizedOrders]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomizedOrders](
	[Customized_Id] [int] IDENTITY(1,1) NOT NULL,
	[Customized_number] [varchar](6000) NOT NULL,
	[Customized_Shoes_Id] [int] NULL,
	[Fk_ForMemberCustomized_Id] [int] NULL,
	[Customized_Eyelet] [int] NULL,
	[Customized_EdgeProtection] [int] NULL,
	[Customized_Rear] [int] NULL,
	[Customized_Tongue] [int] NULL,
	[Customized_Toe] [int] NULL,
	[Remark] [nvarchar](254) NULL,
	[OrderCreateTime] [datetime] NULL,
	[OrderEditTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Customized_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomizedShoesPo]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomizedShoesPo](
	[ShoesProductId] [int] IDENTITY(1,1) NOT NULL,
	[ShoesName] [nvarchar](254) NOT NULL,
	[ShoesDescription] [nvarchar](254) NULL,
	[ShoesOrigin] [nvarchar](50) NULL,
	[ShoesUnitPrice] [int] NOT NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[Status] [bit] NOT NULL,
	[fk_ShoesCategoryId] [int] NULL,
	[fk_ShoesColorId] [int] NULL,
	[DataCreateTime] [datetime] NOT NULL,
	[DataEditTime] [datetime] NOT NULL,
 CONSTRAINT [PK__Customiz__D7D2FD91792B994F] PRIMARY KEY CLUSTERED 
(
	[ShoesProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[DepartmentId] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [nvarchar](50) NULL,
 CONSTRAINT [PK__Departme__B2079BED023F95C3] PRIMARY KEY CLUSTERED 
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discounts]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discounts](
	[DiscountId] [int] IDENTITY(1,1) NOT NULL,
	[DiscountName] [nvarchar](20) NOT NULL,
	[DiscountDescription] [nvarchar](100) NULL,
	[fk_ProjectTagId] [int] NULL,
	[DiscountType] [int] NOT NULL,
	[DiscountValue] [int] NOT NULL,
	[ConditionType] [int] NOT NULL,
	[ConditionValue] [int] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[OrderBy] [int] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Discount] PRIMARY KEY CLUSTERED 
(
	[DiscountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobTitles]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobTitles](
	[TitleId] [int] IDENTITY(1,1) NOT NULL,
	[TitleName] [nvarchar](50) NULL,
	[fk_StaffPermissions] [int] NULL,
 CONSTRAINT [PK__JobTitle__75758986DFA010AD] PRIMARY KEY CLUSTERED 
(
	[TitleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[logistics_companies]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[logistics_companies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[tel] [varchar](12) NULL,
	[logistics_description] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberPoints]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberPoints](
	[MemberPointsId] [int] IDENTITY(1,1) NOT NULL,
	[PointSubtotal] [int] NOT NULL,
	[fk_MemberId] [int] NOT NULL,
 CONSTRAINT [PK__MemberPo__8D672C97D8EFE351] PRIMARY KEY CLUSTERED 
(
	[MemberPointsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Members]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Members](
	[MemberId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[Age] [tinyint] NULL,
	[Gender] [bit] NULL,
	[Mobile] [varchar](10) NOT NULL,
	[Email] [nvarchar](300) NOT NULL,
	[Birthday] [date] NULL,
	[CommonAddress] [nvarchar](100) NOT NULL,
	[Account] [varchar](30) NOT NULL,
	[EncryptedPassword] [varchar](70) NOT NULL,
	[Registration] [datetime] NULL,
	[IsConfirmed] [bit] NULL,
	[ConfirmCode] [varchar](50) NULL,
	[fk_LevelId] [int] NOT NULL,
	[fk_BlackListId] [int] NULL,
 CONSTRAINT [PK__Members__0CF04B18BDECE389] PRIMARY KEY CLUSTERED 
(
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MembershipLevelPrivileges]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MembershipLevelPrivileges](
	[fk_LevelId] [int] NOT NULL,
	[fk_PrivilegeId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[fk_LevelId] ASC,
	[fk_PrivilegeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MembershipLevels]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MembershipLevels](
	[LevelId] [int] IDENTITY(1,1) NOT NULL,
	[LevelName] [nvarchar](10) NOT NULL,
	[MinSpending] [varchar](30) NOT NULL,
	[Discount] [int] NULL,
	[Description] [nvarchar](300) NULL,
 CONSTRAINT [PK__Membersh__09F03C26F7CA5148] PRIMARY KEY CLUSTERED 
(
	[LevelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OneToOneReservations]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OneToOneReservations](
	[ReservationId] [int] IDENTITY(1,1) NOT NULL,
	[fk_BookerId] [int] NOT NULL,
	[ReservationStartTime] [datetime] NOT NULL,
	[ReservationEndTime] [datetime] NOT NULL,
	[fk_BranchId] [int] NOT NULL,
	[fk_ReservationSpeakerId] [int] NOT NULL,
	[fk_ReservationStatusId] [int] NOT NULL,
	[ReservationCreatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ReservationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_statuses]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_statuses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[order_status] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orderItems]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orderItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[order_Id] [int] NOT NULL,
	[product_name] [nvarchar](50) NULL,
	[fk_typeId] [int] NOT NULL,
	[per_price] [int] NULL,
	[quantity] [int] NULL,
	[discount_name] [nvarchar](50) NULL,
	[subtotal] [int] NULL,
	[discount_subtotal] [int] NULL,
	[Items_description] [nvarchar](50) NULL,
 CONSTRAINT [PK__orderIte__3214EC0749CD6A99] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ordertime] [datetime] NOT NULL,
	[fk_member_Id] [int] NOT NULL,
	[total_quantity] [int] NOT NULL,
	[logistics_company_Id] [int] NOT NULL,
	[order_status_Id] [int] NOT NULL,
	[pay_method_Id] [int] NOT NULL,
	[pay_status_Id] [int] NOT NULL,
	[coupon_name] [nvarchar](50) NULL,
	[coupon_discount] [int] NULL,
	[freight] [int] NULL,
	[cellphone] [varchar](12) NOT NULL,
	[receipt] [varchar](50) NULL,
	[receiver] [nvarchar](50) NULL,
	[recipient_address] [nvarchar](50) NULL,
	[order_description] [nvarchar](50) NULL,
	[total_price] [int] NOT NULL,
	[close] [bit] NULL,
	[close_time] [datetime] NULL,
	[fk_typeId] [int] NULL,
 CONSTRAINT [PK__orders__3214EC0762A71CC1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pay_methods]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pay_methods](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[pay_method] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pay_statuses]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pay_statuses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[pay_status] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PointHistories]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PointHistories](
	[PointHistoryId] [int] IDENTITY(1,1) NOT NULL,
	[GetOrDeduct] [bit] NOT NULL,
	[UsageAmount] [int] NOT NULL,
	[EffectiveDate] [datetime] NOT NULL,
	[fk_MemberId] [int] NULL,
	[fk_OrderId] [int] NULL,
	[fk_TypeId] [int] NULL,
	[fk_MemberPointsId] [int] NULL,
 CONSTRAINT [PK__PointHis__DBE13F178E6B8343] PRIMARY KEY CLUSTERED 
(
	[PointHistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PointManage]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PointManage](
	[PointManageId] [int] IDENTITY(1,1) NOT NULL,
	[GetOrDeduct] [bit] NOT NULL,
	[Amount] [int] NOT NULL,
	[fk_TypeId] [int] NOT NULL,
	[TypeProductId] [int] NULL,
	[PointExpirationDate] [datetime] NULL,
 CONSTRAINT [PK_PointManage] PRIMARY KEY CLUSTERED 
(
	[PointManageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PointTradeIn]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PointTradeIn](
	[PointTradeInId] [int] IDENTITY(1,1) NOT NULL,
	[fk_MemberId] [int] NOT NULL,
	[fk_OrderId] [int] NULL,
	[GiftThreshold] [nvarchar](30) NOT NULL,
	[GetPoints] [varchar](30) NULL,
	[MaxGetPoints] [varchar](30) NULL,
	[EffectiveDate] [datetime] NOT NULL,
	[ExpirationDate] [datetime] NOT NULL,
 CONSTRAINT [PK_PointTradeIn] PRIMARY KEY CLUSTERED 
(
	[PointTradeInId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Privileges]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Privileges](
	[PrivilegeId] [int] IDENTITY(1,1) NOT NULL,
	[PrivilegeName] [nvarchar](30) NOT NULL,
	[Description] [nvarchar](300) NULL,
 CONSTRAINT [PK__Privileg__B3E77E5C75DCF9CC] PRIMARY KEY CLUSTERED 
(
	[PrivilegeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategories]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategories](
	[ProductCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[ProductCategoryName] [nvarchar](50) NOT NULL,
	[fk_SalesCategoryId] [int] NOT NULL,
	[CategoryPath] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[ProductCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductComment]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductComment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[fk_MemberId] [int] NOT NULL,
	[fk_ProductGroupId] [int] NOT NULL,
	[Description] [nvarchar](1000) NOT NULL,
	[Score] [int] NOT NULL,
	[Status] [bit] NOT NULL,
	[CreateTime] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductGroups]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductGroups](
	[ProductGroupId] [int] IDENTITY(1,1) NOT NULL,
	[fk_ProductId] [varchar](254) NOT NULL,
	[fk_ColorId] [int] NOT NULL,
	[fk_SizeId] [int] NOT NULL,
	[Qty] [int] NOT NULL,
 CONSTRAINT [PK_ProductGroups] PRIMARY KEY CLUSTERED 
(
	[ProductGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImgs]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImgs](
	[ProductImgId] [int] IDENTITY(1,1) NOT NULL,
	[fk_ProductId] [varchar](254) NOT NULL,
	[fk_ColorId] [int] NULL,
	[ImgPath] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ProductImg] PRIMARY KEY CLUSTERED 
(
	[ProductImgId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [varchar](254) NOT NULL,
	[ProductName] [nvarchar](254) NOT NULL,
	[ProductDescription] [nvarchar](max) NOT NULL,
	[ProductMaterial] [nvarchar](50) NULL,
	[ProductOrigin] [nvarchar](50) NOT NULL,
	[UnitPrice] [int] NULL,
	[SalesPrice] [int] NOT NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[Status] [bit] NOT NULL,
	[LogOut] [bit] NOT NULL,
	[Tag] [nvarchar](100) NULL,
	[fk_ProductSubCategoryId] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[EditTime] [datetime] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSubCategories]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSubCategories](
	[ProductSubCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[ProductSubCategoryName] [nvarchar](50) NOT NULL,
	[fk_ProductCategoryId] [int] NOT NULL,
	[SubCategoryPath] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_ProductSubCategory] PRIMARY KEY CLUSTERED 
(
	[ProductSubCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectTagItems]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectTagItems](
	[fk_ProjectTagId] [int] NOT NULL,
	[fk_ProductId] [varchar](254) NOT NULL,
 CONSTRAINT [PK_discount_group_item] PRIMARY KEY CLUSTERED 
(
	[fk_ProjectTagId] ASC,
	[fk_ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectTags]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectTags](
	[ProjectTagId] [int] IDENTITY(1,1) NOT NULL,
	[ProjectTagName] [nvarchar](30) NOT NULL,
	[CreateAt] [datetime] NOT NULL,
	[ModifiedAt] [datetime] NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_discount_group] PRIMARY KEY CLUSTERED 
(
	[ProjectTagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReservationStatuses]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReservationStatuses](
	[ReservationId] [int] NOT NULL,
	[ReservationStatusDescription] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ReservationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesCategories]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesCategories](
	[SalesCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[SalesCategoryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SalesCategory] PRIMARY KEY CLUSTERED 
(
	[SalesCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoesCategories]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoesCategories](
	[ShoesCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[ShoesCategoryName] [nvarchar](254) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ShoesCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoesChooses]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoesChooses](
	[OptionId] [int] IDENTITY(1,1) NOT NULL,
	[OptinName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ShoesChooses] PRIMARY KEY CLUSTERED 
(
	[OptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoesColorCategories]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoesColorCategories](
	[ShoesColorId] [int] IDENTITY(1,1) NOT NULL,
	[ColorName] [nvarchar](50) NOT NULL,
	[ColorCode] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ShoesColorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoesGroups]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoesGroups](
	[ShoesGroupId] [int] IDENTITY(1,1) NOT NULL,
	[fk_ShoesMainId] [int] NOT NULL,
	[fk_OptionId] [int] NOT NULL,
	[fk_MaterialId] [int] NOT NULL,
	[fk_ShoesColorId] [int] NOT NULL,
	[Remark] [nvarchar](254) NULL,
 CONSTRAINT [PK_ShoesGroups] PRIMARY KEY CLUSTERED 
(
	[ShoesGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoesPictures]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoesPictures](
	[ShoesPicture_Id] [int] IDENTITY(1,1) NOT NULL,
	[ShoesPictureUrl] [nvarchar](4000) NULL,
	[fk_ShoesPictureProduct_Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ShoesPicture_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingCarts]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCarts](
	[CartId] [int] IDENTITY(1,1) NOT NULL,
	[fk_MemberID] [int] NOT NULL,
 CONSTRAINT [PK_ShoppingCart] PRIMARY KEY CLUSTERED 
(
	[CartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SizeCategories]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SizeCategories](
	[SizeId] [int] IDENTITY(1,1) NOT NULL,
	[SizeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SizeCategories] PRIMARY KEY CLUSTERED 
(
	[SizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SpeakerFields]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpeakerFields](
	[FieldId] [int] IDENTITY(1,1) NOT NULL,
	[FieldName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FieldId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Speakers]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Speakers](
	[SpeakerId] [int] IDENTITY(1,1) NOT NULL,
	[SpeakerName] [nvarchar](50) NOT NULL,
	[SpeakerPhone] [varchar](10) NULL,
	[fk_SpeakerFieldId] [int] NOT NULL,
	[SpeakerImg] [varchar](300) NULL,
	[fk_SpeakerBranchId] [int] NULL,
	[SpeakerDescription] [nvarchar](500) NULL,
	[SpeakerVisible] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SpeakerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StaffPermissions]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StaffPermissions](
	[PermissionsId] [int] IDENTITY(1,1) NOT NULL,
	[LevelName] [nvarchar](30) NULL,
 CONSTRAINT [PK__StaffPer__1EDAF9A81349059A] PRIMARY KEY CLUSTERED 
(
	[PermissionsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staffs]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staffs](
	[StaffId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[Age] [tinyint] NULL,
	[Gender] [bit] NULL,
	[Mobile] [varchar](10) NULL,
	[Email] [nvarchar](300) NOT NULL,
	[Birthday] [date] NULL,
	[Account] [varchar](30) NOT NULL,
	[Password] [varchar](70) NOT NULL,
	[DueDate] [date] NULL,
	[fk_PermissionsId] [int] NOT NULL,
	[fk_TitleId] [int] NOT NULL,
	[fk_DepartmentId] [int] NOT NULL,
	[ConfirmCode] [varchar](255) NULL,
 CONSTRAINT [PK_Staffs] PRIMARY KEY CLUSTERED 
(
	[StaffId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[SupplierId] [int] IDENTITY(1,1) NOT NULL,
	[SupplierCompanyName] [nvarchar](50) NOT NULL,
	[HasCertificate] [bit] NULL,
	[Supply_Material] [nvarchar](50) NULL,
	[SupplierCompanyPhone] [int] NULL,
	[SupplierCompanyEmail] [nvarchar](250) NULL,
	[SupplierCompanyAddress] [nvarchar](250) NULL,
	[SupplierCompanyNumber] [int] NULL,
	[SupplierStartDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SupplierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type]    Script Date: 2023/8/2 下午 01:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type](
	[TypeId] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[TypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Activity__732635EC1EAC76D8]    Script Date: 2023/8/2 下午 01:41:05 ******/
ALTER TABLE [dbo].[ActivityStatuses] ADD UNIQUE NONCLUSTERED 
(
	[ActivityStatusDescription] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__Alternat__3B54230C0C0A4AD5]    Script Date: 2023/8/2 下午 01:41:05 ******/
ALTER TABLE [dbo].[AlternateAddresses] ADD UNIQUE NONCLUSTERED 
(
	[fk_MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Branches__3903DB03170DB972]    Script Date: 2023/8/2 下午 01:41:05 ******/
ALTER TABLE [dbo].[Branches] ADD UNIQUE NONCLUSTERED 
(
	[BranchName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Branches__F50DE17A81A39D90]    Script Date: 2023/8/2 下午 01:41:05 ******/
ALTER TABLE [dbo].[Branches] ADD UNIQUE NONCLUSTERED 
(
	[BranchAddress] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__JobTitle__252BE89C516695E0]    Script Date: 2023/8/2 下午 01:41:05 ******/
ALTER TABLE [dbo].[JobTitles] ADD  CONSTRAINT [UQ__JobTitle__252BE89C516695E0] UNIQUE NONCLUSTERED 
(
	[TitleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__MemberPo__3B54230C8C81DA21]    Script Date: 2023/8/2 下午 01:41:05 ******/
ALTER TABLE [dbo].[MemberPoints] ADD  CONSTRAINT [UQ__MemberPo__3B54230C8C81DA21] UNIQUE NONCLUSTERED 
(
	[fk_MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Members__6FAE0782E1A56EB7]    Script Date: 2023/8/2 下午 01:41:05 ******/
ALTER TABLE [dbo].[Members] ADD  CONSTRAINT [UQ__Members__6FAE0782E1A56EB7] UNIQUE NONCLUSTERED 
(
	[Mobile] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Members__A9D1053442354E1D]    Script Date: 2023/8/2 下午 01:41:05 ******/
ALTER TABLE [dbo].[Members] ADD  CONSTRAINT [UQ__Members__A9D1053442354E1D] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Members__B0C3AC46ED2152FF]    Script Date: 2023/8/2 下午 01:41:05 ******/
ALTER TABLE [dbo].[Members] ADD  CONSTRAINT [UQ__Members__B0C3AC46ED2152FF] UNIQUE NONCLUSTERED 
(
	[Account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Reservat__ADF40EA639545590]    Script Date: 2023/8/2 下午 01:41:05 ******/
ALTER TABLE [dbo].[ReservationStatuses] ADD UNIQUE NONCLUSTERED 
(
	[ReservationStatusDescription] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__StaffPer__9EF3BE7B6829F02D]    Script Date: 2023/8/2 下午 01:41:05 ******/
ALTER TABLE [dbo].[StaffPermissions] ADD  CONSTRAINT [UQ__StaffPer__9EF3BE7B6829F02D] UNIQUE NONCLUSTERED 
(
	[LevelName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__Supplier__AE8E9B41568C6187]    Script Date: 2023/8/2 下午 01:41:05 ******/
ALTER TABLE [dbo].[Suppliers] ADD UNIQUE NONCLUSTERED 
(
	[SupplierCompanyNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Activities] ADD  CONSTRAINT [DF_Activities_fk_ActivityStatusId]  DEFAULT ((1)) FOR [fk_ActivityStatusId]
GO
ALTER TABLE [dbo].[BlackLists] ADD  CONSTRAINT [DF__BlackList__Creat__403A8C7D]  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Coupons] ADD  CONSTRAINT [DF_Coupon_EndDays]  DEFAULT (NULL) FOR [EndDays]
GO
ALTER TABLE [dbo].[Coupons] ADD  CONSTRAINT [DF_Coupon_EndDate]  DEFAULT (NULL) FOR [EndDate]
GO
ALTER TABLE [dbo].[Coupons] ADD  CONSTRAINT [DF_Coupon_PersonMaxUsage]  DEFAULT (NULL) FOR [PersonMaxUsage]
GO
ALTER TABLE [dbo].[Coupons] ADD  CONSTRAINT [DF_Coupon_RequirementType]  DEFAULT (NULL) FOR [RequirementType]
GO
ALTER TABLE [dbo].[Coupons] ADD  CONSTRAINT [DF_Coupon_Requirement]  DEFAULT (NULL) FOR [Requirement]
GO
ALTER TABLE [dbo].[Coupons] ADD  CONSTRAINT [DF_Coupon_fk_RequiredGroupID]  DEFAULT (NULL) FOR [fk_RequiredProjectTagID]
GO
ALTER TABLE [dbo].[Coupons] ADD  CONSTRAINT [DF_Coupons_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[CustomizedShoesPo] ADD  CONSTRAINT [DF_Customized_Shoes_Status]  DEFAULT ('false') FOR [Status]
GO
ALTER TABLE [dbo].[CustomizedShoesPo] ADD  CONSTRAINT [DF_CustomizedShoesPo_DataCreateTime]  DEFAULT (getdate()) FOR [DataCreateTime]
GO
ALTER TABLE [dbo].[CustomizedShoesPo] ADD  CONSTRAINT [DF_CustomizedShoesPo_DataEditTime]  DEFAULT (getdate()) FOR [DataEditTime]
GO
ALTER TABLE [dbo].[Discounts] ADD  CONSTRAINT [DF_Discounts_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Members] ADD  CONSTRAINT [DF__Members__Registr__32AB8735]  DEFAULT (getdate()) FOR [Registration]
GO
ALTER TABLE [dbo].[OneToOneReservations] ADD  DEFAULT (getdate()) FOR [ReservationCreatedDate]
GO
ALTER TABLE [dbo].[PointHistories] ADD  CONSTRAINT [DF__PointHist__Effec__3493CFA7]  DEFAULT (getdate()) FOR [EffectiveDate]
GO
ALTER TABLE [dbo].[PointTradeIn] ADD  CONSTRAINT [DF_PointTradeIn_EffectiveDate]  DEFAULT (getdate()) FOR [EffectiveDate]
GO
ALTER TABLE [dbo].[ProductComment] ADD  CONSTRAINT [DF_ProductComment_Status]  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[ProductComment] ADD  CONSTRAINT [DF_ProductComment_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Product_ProductId]  DEFAULT ('unique') FOR [ProductId]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Status]  DEFAULT ('false') FOR [Status]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Product_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Product_EditTime]  DEFAULT (getdate()) FOR [EditTime]
GO
ALTER TABLE [dbo].[ProjectTags] ADD  CONSTRAINT [DF_ProjectTags_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Staffs] ADD  CONSTRAINT [DF__Staffs__dueDate__395884C4]  DEFAULT (getdate()) FOR [DueDate]
GO
ALTER TABLE [dbo].[Activities]  WITH CHECK ADD FOREIGN KEY([fk_ActivityCategoryId])
REFERENCES [dbo].[ActivityCategories] ([ActivityCategoryId])
GO
ALTER TABLE [dbo].[Activities]  WITH CHECK ADD FOREIGN KEY([fk_ActivityStatusId])
REFERENCES [dbo].[ActivityStatuses] ([ActivityStatusId])
GO
ALTER TABLE [dbo].[Activities]  WITH CHECK ADD FOREIGN KEY([fk_SpeakerId])
REFERENCES [dbo].[Speakers] ([SpeakerId])
GO
ALTER TABLE [dbo].[AlternateAddresses]  WITH CHECK ADD  CONSTRAINT [FK__Alternate__fk_Me__3D2915A8] FOREIGN KEY([fk_MemberId])
REFERENCES [dbo].[Members] ([MemberId])
GO
ALTER TABLE [dbo].[AlternateAddresses] CHECK CONSTRAINT [FK__Alternate__fk_Me__3D2915A8]
GO
ALTER TABLE [dbo].[CartItems]  WITH CHECK ADD  CONSTRAINT [FK_CartItem_CartItem] FOREIGN KEY([CartItemId])
REFERENCES [dbo].[ShoppingCarts] ([CartId])
GO
ALTER TABLE [dbo].[CartItems] CHECK CONSTRAINT [FK_CartItem_CartItem]
GO
ALTER TABLE [dbo].[CartItems]  WITH CHECK ADD  CONSTRAINT [FK_CartItems_ProductGroups] FOREIGN KEY([fk_ProductId])
REFERENCES [dbo].[ProductGroups] ([ProductGroupId])
GO
ALTER TABLE [dbo].[CartItems] CHECK CONSTRAINT [FK_CartItems_ProductGroups]
GO
ALTER TABLE [dbo].[Coupons]  WITH CHECK ADD  CONSTRAINT [FK_Coupon_CouponCategory] FOREIGN KEY([fk_CouponCategoryId])
REFERENCES [dbo].[CouponCategories] ([CouponCategoryId])
GO
ALTER TABLE [dbo].[Coupons] CHECK CONSTRAINT [FK_Coupon_CouponCategory]
GO
ALTER TABLE [dbo].[Coupons]  WITH CHECK ADD  CONSTRAINT [FK_Coupon_ProjectTag] FOREIGN KEY([fk_RequiredProjectTagID])
REFERENCES [dbo].[ProjectTags] ([ProjectTagId])
GO
ALTER TABLE [dbo].[Coupons] CHECK CONSTRAINT [FK_Coupon_ProjectTag]
GO
ALTER TABLE [dbo].[CouponSendings]  WITH CHECK ADD  CONSTRAINT [FK_CouponSending_Coupon] FOREIGN KEY([fk_CouponId])
REFERENCES [dbo].[Coupons] ([CouponId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CouponSendings] CHECK CONSTRAINT [FK_CouponSending_Coupon]
GO
ALTER TABLE [dbo].[CouponSendings]  WITH CHECK ADD  CONSTRAINT [FK_CouponSendings_Members] FOREIGN KEY([fk_MemberId])
REFERENCES [dbo].[Members] ([MemberId])
GO
ALTER TABLE [dbo].[CouponSendings] CHECK CONSTRAINT [FK_CouponSendings_Members]
GO
ALTER TABLE [dbo].[CustomizedOrders]  WITH CHECK ADD  CONSTRAINT [FK__Customize__Custo__46B27FE2] FOREIGN KEY([Customized_Shoes_Id])
REFERENCES [dbo].[CustomizedShoesPo] ([ShoesProductId])
GO
ALTER TABLE [dbo].[CustomizedOrders] CHECK CONSTRAINT [FK__Customize__Custo__46B27FE2]
GO
ALTER TABLE [dbo].[CustomizedOrders]  WITH CHECK ADD FOREIGN KEY([Customized_Eyelet])
REFERENCES [dbo].[Customized_materials] ([Shoesmaterial_Id])
GO
ALTER TABLE [dbo].[CustomizedOrders]  WITH CHECK ADD FOREIGN KEY([Customized_EdgeProtection])
REFERENCES [dbo].[Customized_materials] ([Shoesmaterial_Id])
GO
ALTER TABLE [dbo].[CustomizedOrders]  WITH CHECK ADD FOREIGN KEY([Customized_Rear])
REFERENCES [dbo].[Customized_materials] ([Shoesmaterial_Id])
GO
ALTER TABLE [dbo].[CustomizedOrders]  WITH CHECK ADD FOREIGN KEY([Customized_Tongue])
REFERENCES [dbo].[Customized_materials] ([Shoesmaterial_Id])
GO
ALTER TABLE [dbo].[CustomizedOrders]  WITH CHECK ADD FOREIGN KEY([Customized_Toe])
REFERENCES [dbo].[Customized_materials] ([Shoesmaterial_Id])
GO
ALTER TABLE [dbo].[CustomizedOrders]  WITH CHECK ADD  CONSTRAINT [FK_CustomizedOrders_Members] FOREIGN KEY([Fk_ForMemberCustomized_Id])
REFERENCES [dbo].[Members] ([MemberId])
GO
ALTER TABLE [dbo].[CustomizedOrders] CHECK CONSTRAINT [FK_CustomizedOrders_Members]
GO
ALTER TABLE [dbo].[CustomizedShoesPo]  WITH CHECK ADD  CONSTRAINT [FK__Customize__fk_Sh__44CA3770] FOREIGN KEY([fk_ShoesCategoryId])
REFERENCES [dbo].[ShoesCategories] ([ShoesCategoryId])
GO
ALTER TABLE [dbo].[CustomizedShoesPo] CHECK CONSTRAINT [FK__Customize__fk_Sh__44CA3770]
GO
ALTER TABLE [dbo].[CustomizedShoesPo]  WITH CHECK ADD  CONSTRAINT [FK__Customize__fk_Sh__45BE5BA9] FOREIGN KEY([fk_ShoesColorId])
REFERENCES [dbo].[ShoesColorCategories] ([ShoesColorId])
GO
ALTER TABLE [dbo].[CustomizedShoesPo] CHECK CONSTRAINT [FK__Customize__fk_Sh__45BE5BA9]
GO
ALTER TABLE [dbo].[Discounts]  WITH CHECK ADD  CONSTRAINT [FK_Discount_DiscountGroup] FOREIGN KEY([fk_ProjectTagId])
REFERENCES [dbo].[ProjectTags] ([ProjectTagId])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Discounts] CHECK CONSTRAINT [FK_Discount_DiscountGroup]
GO
ALTER TABLE [dbo].[MemberPoints]  WITH CHECK ADD  CONSTRAINT [FK__MemberPoi__fk_Me__4E53A1AA] FOREIGN KEY([fk_MemberId])
REFERENCES [dbo].[Members] ([MemberId])
GO
ALTER TABLE [dbo].[MemberPoints] CHECK CONSTRAINT [FK__MemberPoi__fk_Me__4E53A1AA]
GO
ALTER TABLE [dbo].[Members]  WITH CHECK ADD  CONSTRAINT [FK__Members__fk_Blac__503BEA1C] FOREIGN KEY([fk_BlackListId])
REFERENCES [dbo].[BlackLists] ([BlackListId])
GO
ALTER TABLE [dbo].[Members] CHECK CONSTRAINT [FK__Members__fk_Blac__503BEA1C]
GO
ALTER TABLE [dbo].[Members]  WITH CHECK ADD  CONSTRAINT [FK__Members__fk_Leve__00DF2177] FOREIGN KEY([fk_LevelId])
REFERENCES [dbo].[MembershipLevels] ([LevelId])
GO
ALTER TABLE [dbo].[Members] CHECK CONSTRAINT [FK__Members__fk_Leve__00DF2177]
GO
ALTER TABLE [dbo].[MembershipLevelPrivileges]  WITH CHECK ADD  CONSTRAINT [FK__Membershi__fk_Le__01D345B0] FOREIGN KEY([fk_LevelId])
REFERENCES [dbo].[MembershipLevels] ([LevelId])
GO
ALTER TABLE [dbo].[MembershipLevelPrivileges] CHECK CONSTRAINT [FK__Membershi__fk_Le__01D345B0]
GO
ALTER TABLE [dbo].[MembershipLevelPrivileges]  WITH CHECK ADD  CONSTRAINT [FK__Membershi__fk_Pr__531856C7] FOREIGN KEY([fk_PrivilegeId])
REFERENCES [dbo].[Privileges] ([PrivilegeId])
GO
ALTER TABLE [dbo].[MembershipLevelPrivileges] CHECK CONSTRAINT [FK__Membershi__fk_Pr__531856C7]
GO
ALTER TABLE [dbo].[OneToOneReservations]  WITH CHECK ADD FOREIGN KEY([fk_BranchId])
REFERENCES [dbo].[Branches] ([BranchId])
GO
ALTER TABLE [dbo].[OneToOneReservations]  WITH CHECK ADD FOREIGN KEY([fk_ReservationSpeakerId])
REFERENCES [dbo].[Speakers] ([SpeakerId])
GO
ALTER TABLE [dbo].[OneToOneReservations]  WITH CHECK ADD FOREIGN KEY([fk_ReservationStatusId])
REFERENCES [dbo].[ReservationStatuses] ([ReservationId])
GO
ALTER TABLE [dbo].[OneToOneReservations]  WITH CHECK ADD  CONSTRAINT [FK_OneToOneReservations_Members] FOREIGN KEY([fk_BookerId])
REFERENCES [dbo].[Members] ([MemberId])
GO
ALTER TABLE [dbo].[OneToOneReservations] CHECK CONSTRAINT [FK_OneToOneReservations_Members]
GO
ALTER TABLE [dbo].[orderItems]  WITH CHECK ADD  CONSTRAINT [FK__orderItem__order__1B9317B3] FOREIGN KEY([order_Id])
REFERENCES [dbo].[orders] ([Id])
GO
ALTER TABLE [dbo].[orderItems] CHECK CONSTRAINT [FK__orderItem__order__1B9317B3]
GO
ALTER TABLE [dbo].[orderItems]  WITH CHECK ADD  CONSTRAINT [FK_orderItems_Type] FOREIGN KEY([fk_typeId])
REFERENCES [dbo].[Type] ([TypeId])
GO
ALTER TABLE [dbo].[orderItems] CHECK CONSTRAINT [FK_orderItems_Type]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK__orders__fk_membe__5BAD9CC8] FOREIGN KEY([fk_member_Id])
REFERENCES [dbo].[Members] ([MemberId])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK__orders__fk_membe__5BAD9CC8]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK__orders__logistic__5BAD9CC8] FOREIGN KEY([logistics_company_Id])
REFERENCES [dbo].[logistics_companies] ([Id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK__orders__logistic__5BAD9CC8]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK__orders__order_st__5CA1C101] FOREIGN KEY([order_status_Id])
REFERENCES [dbo].[order_statuses] ([Id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK__orders__order_st__5CA1C101]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK__orders__pay_meth__5D95E53A] FOREIGN KEY([pay_method_Id])
REFERENCES [dbo].[pay_methods] ([Id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK__orders__pay_meth__5D95E53A]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK__orders__pay_stat__5E8A0973] FOREIGN KEY([pay_status_Id])
REFERENCES [dbo].[pay_statuses] ([Id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK__orders__pay_stat__5E8A0973]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_Members] FOREIGN KEY([fk_member_Id])
REFERENCES [dbo].[Members] ([MemberId])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_Members]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_Type] FOREIGN KEY([fk_typeId])
REFERENCES [dbo].[Type] ([TypeId])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_Type]
GO
ALTER TABLE [dbo].[PointHistories]  WITH CHECK ADD  CONSTRAINT [FK__PointHist__fk_Me__03BB8E22] FOREIGN KEY([fk_MemberId])
REFERENCES [dbo].[Members] ([MemberId])
GO
ALTER TABLE [dbo].[PointHistories] CHECK CONSTRAINT [FK__PointHist__fk_Me__03BB8E22]
GO
ALTER TABLE [dbo].[PointHistories]  WITH CHECK ADD  CONSTRAINT [FK_PointHistories_MemberPoints] FOREIGN KEY([fk_MemberPointsId])
REFERENCES [dbo].[MemberPoints] ([MemberPointsId])
GO
ALTER TABLE [dbo].[PointHistories] CHECK CONSTRAINT [FK_PointHistories_MemberPoints]
GO
ALTER TABLE [dbo].[PointHistories]  WITH CHECK ADD  CONSTRAINT [FK_PointHistories_orders] FOREIGN KEY([fk_OrderId])
REFERENCES [dbo].[orders] ([Id])
GO
ALTER TABLE [dbo].[PointHistories] CHECK CONSTRAINT [FK_PointHistories_orders]
GO
ALTER TABLE [dbo].[PointHistories]  WITH CHECK ADD  CONSTRAINT [FK_PointHistories_Type] FOREIGN KEY([fk_TypeId])
REFERENCES [dbo].[Type] ([TypeId])
GO
ALTER TABLE [dbo].[PointHistories] CHECK CONSTRAINT [FK_PointHistories_Type]
GO
ALTER TABLE [dbo].[PointManage]  WITH CHECK ADD  CONSTRAINT [FK_PointManage_PointManage] FOREIGN KEY([PointManageId])
REFERENCES [dbo].[PointManage] ([PointManageId])
GO
ALTER TABLE [dbo].[PointManage] CHECK CONSTRAINT [FK_PointManage_PointManage]
GO
ALTER TABLE [dbo].[PointManage]  WITH CHECK ADD  CONSTRAINT [FK_PointManage_Type] FOREIGN KEY([fk_TypeId])
REFERENCES [dbo].[Type] ([TypeId])
GO
ALTER TABLE [dbo].[PointManage] CHECK CONSTRAINT [FK_PointManage_Type]
GO
ALTER TABLE [dbo].[PointTradeIn]  WITH CHECK ADD  CONSTRAINT [FK_PointTradeIn_Members] FOREIGN KEY([fk_MemberId])
REFERENCES [dbo].[Members] ([MemberId])
GO
ALTER TABLE [dbo].[PointTradeIn] CHECK CONSTRAINT [FK_PointTradeIn_Members]
GO
ALTER TABLE [dbo].[PointTradeIn]  WITH CHECK ADD  CONSTRAINT [FK_PointTradeIn_orders] FOREIGN KEY([fk_OrderId])
REFERENCES [dbo].[orders] ([Id])
GO
ALTER TABLE [dbo].[PointTradeIn] CHECK CONSTRAINT [FK_PointTradeIn_orders]
GO
ALTER TABLE [dbo].[ProductCategories]  WITH CHECK ADD  CONSTRAINT [FK_ProductCategories_SalesCategories] FOREIGN KEY([fk_SalesCategoryId])
REFERENCES [dbo].[SalesCategories] ([SalesCategoryId])
GO
ALTER TABLE [dbo].[ProductCategories] CHECK CONSTRAINT [FK_ProductCategories_SalesCategories]
GO
ALTER TABLE [dbo].[ProductComment]  WITH CHECK ADD  CONSTRAINT [FK_ProductComment_Members] FOREIGN KEY([fk_MemberId])
REFERENCES [dbo].[Members] ([MemberId])
GO
ALTER TABLE [dbo].[ProductComment] CHECK CONSTRAINT [FK_ProductComment_Members]
GO
ALTER TABLE [dbo].[ProductComment]  WITH CHECK ADD  CONSTRAINT [FK_ProductComment_ProductGroups] FOREIGN KEY([fk_ProductGroupId])
REFERENCES [dbo].[ProductGroups] ([ProductGroupId])
GO
ALTER TABLE [dbo].[ProductComment] CHECK CONSTRAINT [FK_ProductComment_ProductGroups]
GO
ALTER TABLE [dbo].[ProductGroups]  WITH CHECK ADD  CONSTRAINT [FK_ProductGroups_ColorCategories] FOREIGN KEY([fk_ColorId])
REFERENCES [dbo].[ColorCategories] ([ColorId])
GO
ALTER TABLE [dbo].[ProductGroups] CHECK CONSTRAINT [FK_ProductGroups_ColorCategories]
GO
ALTER TABLE [dbo].[ProductGroups]  WITH CHECK ADD  CONSTRAINT [FK_ProductGroups_Products] FOREIGN KEY([fk_ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[ProductGroups] CHECK CONSTRAINT [FK_ProductGroups_Products]
GO
ALTER TABLE [dbo].[ProductGroups]  WITH CHECK ADD  CONSTRAINT [FK_ProductGroups_SizeCategories] FOREIGN KEY([fk_SizeId])
REFERENCES [dbo].[SizeCategories] ([SizeId])
GO
ALTER TABLE [dbo].[ProductGroups] CHECK CONSTRAINT [FK_ProductGroups_SizeCategories]
GO
ALTER TABLE [dbo].[ProductImgs]  WITH CHECK ADD  CONSTRAINT [FK_ProductImgs_ColorCategories] FOREIGN KEY([fk_ColorId])
REFERENCES [dbo].[ColorCategories] ([ColorId])
ON UPDATE SET NULL
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[ProductImgs] CHECK CONSTRAINT [FK_ProductImgs_ColorCategories]
GO
ALTER TABLE [dbo].[ProductImgs]  WITH CHECK ADD  CONSTRAINT [FK_ProductImgs_Products] FOREIGN KEY([fk_ProductId])
REFERENCES [dbo].[Products] ([ProductId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductImgs] CHECK CONSTRAINT [FK_ProductImgs_Products]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductSubCategory] FOREIGN KEY([fk_ProductSubCategoryId])
REFERENCES [dbo].[ProductSubCategories] ([ProductSubCategoryId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Product_ProductSubCategory]
GO
ALTER TABLE [dbo].[ProductSubCategories]  WITH CHECK ADD  CONSTRAINT [FK_ProductSubCategories_ProductCategories] FOREIGN KEY([fk_ProductCategoryId])
REFERENCES [dbo].[ProductCategories] ([ProductCategoryId])
GO
ALTER TABLE [dbo].[ProductSubCategories] CHECK CONSTRAINT [FK_ProductSubCategories_ProductCategories]
GO
ALTER TABLE [dbo].[ProjectTagItems]  WITH CHECK ADD  CONSTRAINT [FK_discount_group_item_discount_group] FOREIGN KEY([fk_ProductId])
REFERENCES [dbo].[Products] ([ProductId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProjectTagItems] CHECK CONSTRAINT [FK_discount_group_item_discount_group]
GO
ALTER TABLE [dbo].[ProjectTagItems]  WITH CHECK ADD  CONSTRAINT [FK_ProjectTagItems_ProjectTagItems] FOREIGN KEY([fk_ProjectTagId], [fk_ProductId])
REFERENCES [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId])
GO
ALTER TABLE [dbo].[ProjectTagItems] CHECK CONSTRAINT [FK_ProjectTagItems_ProjectTagItems]
GO
ALTER TABLE [dbo].[ProjectTags]  WITH CHECK ADD  CONSTRAINT [FK_ProjectTags_ProjectTags] FOREIGN KEY([ProjectTagId])
REFERENCES [dbo].[ProjectTags] ([ProjectTagId])
GO
ALTER TABLE [dbo].[ProjectTags] CHECK CONSTRAINT [FK_ProjectTags_ProjectTags]
GO
ALTER TABLE [dbo].[ShoesGroups]  WITH CHECK ADD  CONSTRAINT [FK_ShoesGroups_Customized_materials] FOREIGN KEY([fk_MaterialId])
REFERENCES [dbo].[Customized_materials] ([Shoesmaterial_Id])
GO
ALTER TABLE [dbo].[ShoesGroups] CHECK CONSTRAINT [FK_ShoesGroups_Customized_materials]
GO
ALTER TABLE [dbo].[ShoesGroups]  WITH CHECK ADD  CONSTRAINT [FK_ShoesGroups_CustomizedShoesPo] FOREIGN KEY([fk_ShoesMainId])
REFERENCES [dbo].[CustomizedShoesPo] ([ShoesProductId])
GO
ALTER TABLE [dbo].[ShoesGroups] CHECK CONSTRAINT [FK_ShoesGroups_CustomizedShoesPo]
GO
ALTER TABLE [dbo].[ShoesGroups]  WITH CHECK ADD  CONSTRAINT [FK_ShoesGroups_ShoesChooses] FOREIGN KEY([fk_OptionId])
REFERENCES [dbo].[ShoesChooses] ([OptionId])
GO
ALTER TABLE [dbo].[ShoesGroups] CHECK CONSTRAINT [FK_ShoesGroups_ShoesChooses]
GO
ALTER TABLE [dbo].[ShoesGroups]  WITH CHECK ADD  CONSTRAINT [FK_ShoesGroups_ShoesColorCategories] FOREIGN KEY([fk_ShoesColorId])
REFERENCES [dbo].[ShoesColorCategories] ([ShoesColorId])
GO
ALTER TABLE [dbo].[ShoesGroups] CHECK CONSTRAINT [FK_ShoesGroups_ShoesColorCategories]
GO
ALTER TABLE [dbo].[ShoesPictures]  WITH CHECK ADD  CONSTRAINT [FK__ShoesPict__fk_Sh__70A8B9AE] FOREIGN KEY([fk_ShoesPictureProduct_Id])
REFERENCES [dbo].[CustomizedShoesPo] ([ShoesProductId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ShoesPictures] CHECK CONSTRAINT [FK__ShoesPict__fk_Sh__70A8B9AE]
GO
ALTER TABLE [dbo].[ShoppingCarts]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCarts_Members] FOREIGN KEY([fk_MemberID])
REFERENCES [dbo].[Members] ([MemberId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ShoppingCarts] CHECK CONSTRAINT [FK_ShoppingCarts_Members]
GO
ALTER TABLE [dbo].[Speakers]  WITH CHECK ADD FOREIGN KEY([fk_SpeakerBranchId])
REFERENCES [dbo].[Branches] ([BranchId])
GO
ALTER TABLE [dbo].[Speakers]  WITH CHECK ADD FOREIGN KEY([fk_SpeakerFieldId])
REFERENCES [dbo].[SpeakerFields] ([FieldId])
GO
ALTER TABLE [dbo].[Staffs]  WITH CHECK ADD  CONSTRAINT [FK__Staffs__fk_Depar__74794A92] FOREIGN KEY([fk_DepartmentId])
REFERENCES [dbo].[Departments] ([DepartmentId])
GO
ALTER TABLE [dbo].[Staffs] CHECK CONSTRAINT [FK__Staffs__fk_Depar__74794A92]
GO
ALTER TABLE [dbo].[Staffs]  WITH CHECK ADD  CONSTRAINT [FK__Staffs__fk_Permi__756D6ECB] FOREIGN KEY([fk_PermissionsId])
REFERENCES [dbo].[StaffPermissions] ([PermissionsId])
GO
ALTER TABLE [dbo].[Staffs] CHECK CONSTRAINT [FK__Staffs__fk_Permi__756D6ECB]
GO
ALTER TABLE [dbo].[Staffs]  WITH CHECK ADD  CONSTRAINT [FK__Staffs__fk_Title__76619304] FOREIGN KEY([fk_TitleId])
REFERENCES [dbo].[JobTitles] ([TitleId])
GO
ALTER TABLE [dbo].[Staffs] CHECK CONSTRAINT [FK__Staffs__fk_Title__76619304]
GO



--建倫***************************************************************--
INSERT INTO ColorCategories (ColorName)
VALUES
    ('黑'),
    ('白'),
    ('灰'),
    ('紅'),
    ('藍'),
    ('黃'),
	('粉'),
	('綠');

INSERT INTO SizeCategories ( SizeName)
VALUES ('S'),
       ('M'),
       ('L'),
	   ('XL'),
	   ('XXL'),
	   ('XXXL'),
	   ('XXXL'),
	   ('16'),
	   ('16.5'),
	   ('17'),
	   ('17.5'),
	   ('18'),
	   ('18.5'),
	   ('19'),
	   ('19.5'),
	   ('20'),
	   ('20.5'),
	   ('21'),
	   ('21.5'),
	   ('22'),
	   ('22.5'),
	   ('23'),
	   ('23.5'),
	   ('24'),
	   ('24.5'),
	   ('25'),
	   ('25.5'),
	   ('26'),
	   ('26.5'),
	   ('27'),
	   ('27.5'),
	   ('28'),
	   ('單一規格');


INSERT INTO SalesCategories (SalesCategoryName)
VALUES ('男裝'),
       ('女裝'),
       ('童裝');


INSERT INTO ProductCategories( ProductCategoryName,fk_SalesCategoryId,CategoryPath)
VALUES ('上衣',1,'男裝/上衣'),
	   ('上衣',2,'女裝/上衣'),
	   ('上衣',3,'童裝/上衣'),
       ('褲子',1,'男裝/褲子'),
	   ('褲子',2,'女裝/褲子'),
	   ('褲子',3,'童裝/褲子'),
       ('鞋子',1,'男裝/鞋子'),
	   ('鞋子',2,'女裝/鞋子'),
	   ('鞋子',3,'童裝/鞋子'),
       ('配件',1,'男裝/配件'),
	   ('配件',2,'女裝/配件'),
	   ('配件',3,'童裝/配件');


INSERT INTO ProductSubCategories( ProductSubCategoryName,fk_ProductCategoryId,SubCategoryPath)
VALUES 
('短袖',1,'男裝/上衣/短袖'),
('短袖',2,'女裝/上衣/短袖'),
('短袖',3,'童裝/上衣/短袖'),
('長袖',1,'男裝/上衣/長袖'),
('長袖',2,'女裝/上衣/長袖'),
('長袖',3,'童裝/上衣/長袖'),
('短褲',4,'男裝/褲子/短褲'),
('短褲',5,'女裝/褲子/短褲'),
('短褲',6,'童裝/褲子/短褲'),
('長褲',4,'男裝/褲子/長褲'),
('長褲',5,'女裝/褲子/長褲'),
('長褲',6,'童裝/褲子/長褲'),
('休閒鞋',7,'男裝/鞋子/休閒鞋'),
('休閒鞋',8,'女裝/鞋子/休閒鞋'),
('休閒鞋',9,'童裝/鞋子/休閒鞋'),
('運動鞋',7,'男裝/鞋子/運動鞋'),
('運動鞋',8,'女裝/鞋子/運動鞋'),
('運動鞋',9,'童裝/鞋子/運動鞋'),
('包包',10,'男裝/配件/包包'),
('包包',11,'女裝/配件/包包'),
('包包',12,'童裝/配件/包包'),
('帽子',10,'男裝/配件/帽子'),
('帽子',11,'女裝/配件/帽子'),
('帽子',12,'童裝/配件/帽子');



INSERT INTO Products(ProductId,ProductName,ProductDescription,ProductMaterial,ProductOrigin,UnitPrice,SalesPrice,Status,LogOut,Tag,fk_ProductSubCategoryID)
VALUES
('M_CL_ST_0001','男款純棉短袖上衣','簡單實用的基本款 T 恤，無論作為運動服或日常穿著都非常合適。物超所值，絕對讓你愛不釋手一款採用圓領、短袖、柔軟的純棉材質打造，物超所值的 T 恤。','98% 棉, 2% 彈性纖維','台灣',499,399,'false','false',null,1);

INSERT INTO ProductGroups(fk_ProductId,fk_ColorId,fk_SizeId,Qty)
VALUES
('M_CL_ST_0001',1,1,100),
('M_CL_ST_0001',1,2,200),
('M_CL_ST_0001',2,3,220),
('M_CL_ST_0001',2,4,50);

INSERT INTO ProductImgs(fk_ProductId,fk_ColorId,ImgPath)
VALUES 
('M_CL_ST_0001',1,'3147b9be0fbb42da88a60c7ca32fee87.jpg'),
('M_CL_ST_0001',2,'8f890d9ac11e4578891e78e13923d419.jpg');


INSERT INTO Products(ProductId,ProductName,ProductDescription,ProductMaterial,ProductOrigin,UnitPrice,SalesPrice,LogOut,Tag,fk_ProductSubCategoryID)
VALUES
('M_CL_ST_0002','男款快乾透氣短袖上衣','對環境友善的吸濕排汗 T 恤，適合偶爾登山健行時穿著。','90% 的再生聚酯纖維（Polyester）和 10% 的 Lyocell 製成','台灣',600,500,'false','限量',1);

INSERT INTO ProductGroups(fk_ProductId,fk_ColorId,fk_SizeId,Qty)
VALUES
('M_CL_ST_0002',3,1,220),
('M_CL_ST_0002',3,2,100),
('M_CL_ST_0002',4,4,50);

INSERT INTO ProductImgs(fk_ProductId,fk_ColorId,ImgPath)
VALUES 
('M_CL_ST_0002',3,'e16c292e3591485d9e87cfa2ef4ffe4e.jpg'),
('M_CL_ST_0002',4,'1de9aa248d494f2b9d36f7610060c532.jpg');


INSERT INTO Products(ProductId,ProductName,ProductDescription,ProductMaterial,ProductOrigin,UnitPrice,SalesPrice,LogOut,Tag,fk_ProductSubCategoryID)
VALUES
('F_CL_ST_0001','女款透氣跑步短袖上衣','讓你在夏日跑步時保持涼爽！輕盈透氣微孔布料搭配背部通風設計，讓空氣能在這款女款跑步 T 恤流通。','90% 的再生聚酯纖維（Polyester）和 10% 的 Lyocell 製成','台灣',null,399,'false',null,2);

INSERT INTO ProductGroups(fk_ProductId,fk_ColorId,fk_SizeId,Qty)
VALUES
('F_CL_ST_0001',2,1,220),
('F_CL_ST_0001',6,4,50),
('F_CL_ST_0001',6,5,30);

INSERT INTO ProductImgs(fk_ProductId,fk_ColorId,ImgPath)
VALUES 
('F_CL_ST_0001',2,'847b9a864c8b4a2fa2293fb4dce230e4.jpg'),
('F_CL_ST_0001',6,'a78b0647a40c4bb9bb12ad1b35a7bb22.jpg');


INSERT INTO Products(ProductId,ProductName,ProductDescription,ProductMaterial,ProductOrigin,UnitPrice,SalesPrice,LogOut,Tag,fk_ProductSubCategoryID)
VALUES
('F_CL_ST_0002','女款透氣排汗跑步短袖上衣','輕盈透氣這款透氣、舒適又柔美的 T 恤，是你夏天跑步時的必備衣物。','主要布料 100% 聚酯纖維','台灣',null,499,'false',null,2);

INSERT INTO ProductGroups(fk_ProductId,fk_ColorId,fk_SizeId,Qty)
VALUES
('F_CL_ST_0002',1,1,220),
('F_CL_ST_0002',2,2,100),
('F_CL_ST_0002',5,4,50);

INSERT INTO ProductImgs(fk_ProductId,fk_ColorId,ImgPath)
VALUES 
('F_CL_ST_0002',2,'0df1eb14096b4399a531b1efb0836b00.jpg'),
('F_CL_ST_0002',1,'54221a9d589a4ef5992c8a135fd354d7.jpg'),
('F_CL_ST_0002',5,'05017ebe8dfa49bbb9d632cf655e7f2e.jpg');



INSERT INTO Products(ProductId,ProductName,ProductDescription,ProductMaterial,ProductOrigin,UnitPrice,SalesPrice,LogOut,Tag,fk_ProductSubCategoryID)
VALUES
('C_CL_ST_0001','兒童款高爾夫排汗短袖上衣','適合兒童在 10°C 以上的天候中打高爾夫時穿著。透氣且輕量。這款採用柔軟輕量布料製成的高爾夫 Polo 衫，能有效排汗並保持乾爽，適合打高爾夫時穿著。','主要布料 100% 聚酯纖維','台灣',500,400,'false',null,3);

INSERT INTO ProductGroups(fk_ProductId,fk_ColorId,fk_SizeId,Qty)
VALUES
('C_CL_ST_0001',1,1,220),
('C_CL_ST_0001',2,4,50),
('C_CL_ST_0001',2,5,30);

INSERT INTO ProductImgs(fk_ProductId,fk_ColorId,ImgPath)
VALUES 
('C_CL_ST_0001',2,'75d6e809412e452a94ce51cf15dac53d.jpg'),
('C_CL_ST_0001',1,'be40fc127cce4e4a8d6eca64e43323be.jpg'),
('C_CL_ST_0001',null,'f9a3aa6666c24dccb8e0adbac0a8f6fe.jpg'),
('C_CL_ST_0001',null,'4e996c6713f24d969444f3460c404e65.jpg');


INSERT INTO Products(ProductId,ProductName,ProductDescription,ProductMaterial,ProductOrigin,UnitPrice,SalesPrice,LogOut,Tag,fk_ProductSubCategoryID)
VALUES
('C_CL_ST_0002','兒童款純棉圓領T恤','色彩活潑、適合每日穿著的 T 恤。孩子的心情變化就像他們換 T 恤的次數一樣頻繁，所以我們打造了具有多種色彩的 100% 純棉系列。','棉 100%','台灣',550,450,'false',null,3);

INSERT INTO ProductGroups(fk_ProductId,fk_ColorId,fk_SizeId,Qty)
VALUES
('C_CL_ST_0002',1,1,220),
('C_CL_ST_0002',3,2,300),
('C_CL_ST_0002',3,3,220),
('C_CL_ST_0002',3,4,50);

INSERT INTO ProductImgs(fk_ProductId,fk_ColorId,ImgPath)
VALUES 
('C_CL_ST_0002',3,'a065d92c606c4f2e90da19af26eead3c.jpg'),
('C_CL_ST_0002',1,'475db1a3df504d129e80162753f62b81.jpg');

INSERT INTO Products(ProductId,ProductName,ProductDescription,ProductMaterial,ProductOrigin,UnitPrice,SalesPrice,LogOut,Tag,fk_ProductSubCategoryID)
VALUES
('M_CL_LG_0001','男款高爾夫修身長袖上衣 (圓領針織衫)','適合在 10°C 到 20°C 的溫和氣候中打高爾夫球時穿著 。柔軟的100%棉質圓領針織衫柔軟的100%棉質圓領針織衫！','主要布料 100% 棉','台灣',499,399,'false',null,4);

INSERT INTO ProductGroups(fk_ProductId,fk_ColorId,fk_SizeId,Qty)
VALUES
('M_CL_LG_0001',3,1,220),
('M_CL_LG_0001',3,2,100),
('M_CL_LG_0001',6,3,80),
('M_CL_LG_0001',6,4,50);

INSERT INTO ProductImgs(fk_ProductId,fk_ColorId,ImgPath)
VALUES 
('M_CL_LG_0001',6,'cdbe0166563b407da8f9eb93bd8c224b.jpg'),
('M_CL_LG_0001',null,'620f98175f14483684fc9559c9b7f232.jpg'),
('M_CL_LG_0001',3,'7e21a40b6f684b96a168ad183af2e053.jpg'),
('M_CL_LG_0001',null,'09c674f4711d4864963f7b1b7c92de7c.jpg');


INSERT INTO Products(ProductId,ProductName,ProductDescription,ProductMaterial,ProductOrigin,UnitPrice,SalesPrice,Status,LogOut,Tag,fk_ProductSubCategoryID)
VALUES
('M_CL_LG_0002','上衣008','這是長袖上衣002','88% 聚酯纖維/12% 彈性纖維','台灣',null,1350,'true','true',null,4);

INSERT INTO ProductGroups(fk_ProductId,fk_ColorId,fk_SizeId,Qty)
VALUES
('M_CL_LG_0002',4,1,0),
('M_CL_LG_0002',4,2,0),
('M_CL_LG_0002',5,4,0);

INSERT INTO ProductImgs(fk_ProductId,fk_ColorId,ImgPath)
VALUES 
('M_CL_LG_0002',null,'Product_0081.jpg'),
('M_CL_LG_0002',null,'Product_0082.jpg'),
('M_CL_LG_0002',null,'Product_0083.jpg');


INSERT INTO Products(ProductId,ProductName,ProductDescription,ProductMaterial,ProductOrigin,UnitPrice,SalesPrice,Status,LogOut,Tag,fk_ProductSubCategoryID)
VALUES
('F_CL_LG_0001','女款 長袖連帽保暖排汗衣','能迅速把汗水吸到衣服表面，然後快速蒸發掉，才不會在吹到風的時候感冒，同時，也能在涼涼的天氣中，幫你維持體溫確保溫。','採用DAO™抗臭處理及FC0紗線的Phasic™AR II面料','台灣',null,2500,'true','false','限量',5);

INSERT INTO ProductGroups(fk_ProductId,fk_ColorId,fk_SizeId,Qty)
VALUES
('F_CL_LG_0001',1,1,220),
('F_CL_LG_0001',1,2,100),
('F_CL_LG_0001',5,3,80),
('F_CL_LG_0001',5,4,50);

INSERT INTO ProductImgs(fk_ProductId,fk_ColorId,ImgPath)
VALUES 
('F_CL_LG_0001',5,'4aa9971fac1d46aaaf1ad98ac4547b9b.jpg'),
('F_CL_LG_0001',null,'0cac753e1aae4728a93d94044326304e.jpg'),
('F_CL_LG_0001',1,'c392821690d34aed938ad499f74f5fb7.jpg'),
('F_CL_LG_0001',null,'8b82eb19391043a0aabf4d669e773d6c.jpg');


INSERT INTO Products(ProductId,ProductName,ProductDescription,ProductMaterial,ProductOrigin,UnitPrice,SalesPrice,LogOut,Tag,fk_ProductSubCategoryID)
VALUES
('F_CL_LG_0002','女款街舞短版長袖上衣','採用立體布料打造這款短版運動衫。抽繩設計讓你輕鬆調整。正在尋找舒適又有型的街舞運動衫？運動衫兩側搭配刺繡加強服裝立體感，讓你時尚熱舞！','主要布料 54% 聚酯纖維, 46% 棉 羅紋布料 96% 棉, 4% 彈性纖維','台灣',null,699,'false',null,5);

INSERT INTO ProductGroups(fk_ProductId,fk_ColorId,fk_SizeId,Qty)
VALUES
('F_CL_LG_0002',1,1,120),
('F_CL_LG_0002',2,1,150);

INSERT INTO ProductImgs(fk_ProductId,fk_ColorId,ImgPath)
VALUES 
('F_CL_LG_0002',2,'de3b4acd3fc74a55945a947f9e7a3f65.jpg'),
('F_CL_LG_0002',null,'6f7eec7ee1bd42b482a8cd1d5c2ca4db.jpg'),
('F_CL_LG_0002',1,'6889e0a89cff463288bbfa9970c46f14.jpg'),
('F_CL_LG_0002',null,'afbc7af143614b889f5dbf3693d27d2b.jpg');


INSERT INTO Products(ProductId,ProductName,ProductDescription,ProductMaterial,ProductOrigin,UnitPrice,SalesPrice,LogOut,Tag,fk_ProductSubCategoryID)
VALUES
('C_CL_LG_0001','兒童款登山健行保暖刷毛長袖上衣','我們由小小健行者的父母所組成的團隊設計了這款刷毛上衣，保護孩子進行各種戶外活動時免受寒冷。保暖刷毛、半開式拉鍊及再生紗線！保暖、輕量又舒適的刷毛外套，方便孩子隨身攜帶。採用回收瓶罐製成，符合我們環保設計的宗旨。','主要布料 100% 聚酯纖維','台灣',null,399,'false',null,6);

INSERT INTO ProductGroups(fk_ProductId,fk_ColorId,fk_SizeId,Qty)
VALUES
('C_CL_LG_0001',6,1,220),
('C_CL_LG_0001',6,2,100),
('C_CL_LG_0001',6,5,30);

INSERT INTO ProductImgs(fk_ProductId,fk_ColorId,ImgPath)
VALUES 
('C_CL_LG_0001',6,'872ff985c72e4eadaa65b9ea3a0fdd16.jpg'),
('C_CL_LG_0001',null,'61c28b8e1cbc4f96b5d1100c1be300c3.jpg'),
('C_CL_LG_0001',null,'29a8dbd4b6d04d32ac85a36748e09216.jpg');

INSERT INTO Products(ProductId,ProductName,ProductDescription,ProductMaterial,ProductOrigin,UnitPrice,SalesPrice,LogOut,Tag,fk_ProductSubCategoryID)
VALUES
('C_CL_LG_0002','兒童款高爾夫長袖上衣 (拉鍊針織衫)','適合兒童在寒冷多風的天候中打高爾夫時穿著。內建防風薄膜的彈性立領針織衫。孩子因為覺得寒冷而不想打高爾夫嗎？這款立領針織衫採用的材質具有絕佳的舒適性及保暖性，適合孩子下場打球時穿著。','主要布料 100% 棉 內襯 100% 聚酯纖維','台灣',null,500,'false',null,6);

INSERT INTO ProductGroups(fk_ProductId,fk_ColorId,fk_SizeId,Qty)
VALUES
('C_CL_LG_0002',1,1,220),
('C_CL_LG_0002',1,2,100),
('C_CL_LG_0002',7,2,100),
('C_CL_LG_0002',7,3,80);

INSERT INTO ProductImgs(fk_ProductId,fk_ColorId,ImgPath)
VALUES 
('C_CL_LG_0002',7,'e9e88d1e793f417ea54ecb55f6587fef.jpg'),
('C_CL_LG_0002',null,'f313c0da729645a496b81157ef5a12d1.jpg'),
('C_CL_LG_0002',null,'a1ef172e35d747fe9bc73359fbd8d2c9.jpg'),
('C_CL_LG_0002',1,'63277657ebb94c648bfcda28f78a8e4f.jpg');


-------------------------------------------------

INSERT INTO Products(ProductId,ProductName,ProductDescription,ProductMaterial,ProductOrigin,UnitPrice,SalesPrice,LogOut,Tag,fk_ProductSubCategoryID)
VALUES
('M_PA_ST_0001','素色鬆緊綁帶短褲','素色鬆緊綁帶短褲','50%棉、50%聚酯纖維','柬埔寨',399,299,'false',null,7);

INSERT INTO ProductGroups(fk_ProductId,fk_ColorId,fk_SizeId,Qty)
VALUES
('M_PA_ST_0001',8,1,100),
('M_PA_ST_0001',8,2,200),
('M_PA_ST_0001',3,3,80),
('M_PA_ST_0001',3,4,110);

INSERT INTO ProductImgs(fk_ProductId,fk_ColorId,ImgPath)
VALUES 
('M_PA_ST_0001',3,'6534c5a24b5845d9857a6de57ca10cb3.jpg'),
('M_PA_ST_0001',8,'550af4ee0a2047d69bf578c0bbe63fa7.jpg');



INSERT INTO Products(ProductId,ProductName,ProductDescription,ProductMaterial,ProductOrigin,UnitPrice,SalesPrice,LogOut,Tag,fk_ProductSubCategoryID)
VALUES
('M_PA_ST_0002','無襯裡多功能短褲','短褲專為跑步、訓練和瑜伽運動而設計，讓你輕鬆應對、自在暢動。','75% 的再生聚酯纖維','台灣',499,399,'false','限量',7);

INSERT INTO ProductGroups(fk_ProductId,fk_ColorId,fk_SizeId,Qty)
VALUES
('M_PA_ST_0002',1,1,220),
('M_PA_ST_0002',1,2,100),
('M_PA_ST_0002',1,3,80);

INSERT INTO ProductImgs(fk_ProductId,fk_ColorId,ImgPath)
VALUES 
('M_PA_ST_0002',1,'4475b05bc8bc4dcfb0c84e1abeb6bf1f.jpg'),
('M_PA_ST_0002',null,'308f86d35819435ab4e545e36f80b284.jpg');

INSERT INTO Products(ProductId,ProductName,ProductDescription,ProductMaterial,ProductOrigin,UnitPrice,SalesPrice,Status,LogOut,Tag,fk_ProductSubCategoryID)
VALUES
('F_PA_ST_0001','女款及膝自行車短褲','這款及膝自行車短褲結合外在的俐落褲頭設計與內藏式鬆緊帶，讓摯愛內搭褲彈性十足又穩固不移位。','63% 人造纖維/32% 尼龍/5% 彈性纖維','斯里蘭卡',null,1580,'true','false',null,8);

INSERT INTO ProductGroups(fk_ProductId,fk_ColorId,fk_SizeId,Qty)
VALUES
('F_PA_ST_0001',1,1,220),
('F_PA_ST_0001',1,2,100),
('F_PA_ST_0001',1,4,50);

INSERT INTO ProductImgs(fk_ProductId,fk_ColorId,ImgPath)
VALUES 
('F_PA_ST_0001',1,'5f4c620b20db48f3bd3e9a7b256a7aaa.jpg'),
('F_PA_ST_0001',null,'526cae16a55948c8a158551870a6996a.jpg');

INSERT INTO Products(ProductId,ProductName,ProductDescription,ProductMaterial,ProductOrigin,UnitPrice,SalesPrice,LogOut,Tag,fk_ProductSubCategoryID)
VALUES
('F_PA_ST_0002','女款高爾夫短褲','短褲滑順有彈性，是衣櫥百搭單品。採用腰部魔鬼氈扣合設計等量身訂製細節，打造經典造型，並搭配多個網布內裡口袋，提供多元實用性。','89% 聚酯纖維/11% 彈性纖維','印尼',null,1500,'false',null,8);

INSERT INTO ProductGroups(fk_ProductId,fk_ColorId,fk_SizeId,Qty)
VALUES
('F_PA_ST_0002',1,1,220),
('F_PA_ST_0002',1,2,100),
('F_PA_ST_0002',2,3,80),
('F_PA_ST_0002',2,5,30);

INSERT INTO ProductImgs(fk_ProductId,fk_ColorId,ImgPath)
VALUES 
('F_PA_ST_0002',2,'48f61c9653804b2fbee6c083f7b4011d.jpg'),
('F_PA_ST_0002',null,'eec893cdd40e41cfa4e075e0f6bd2ec3.jpg'),
('F_PA_ST_0002',1,'73ce9584969445f6bf4c4f00a7f03f4a.jpg'),
('F_PA_ST_0002',null,'2f897bed2e6647628562163f97130075.jpg');


INSERT INTO Products(ProductId,ProductName,ProductDescription,ProductMaterial,ProductOrigin,UnitPrice,SalesPrice,LogOut,Tag,fk_ProductSubCategoryID)
VALUES
('C_PA_ST_0001','快適動能運動短褲','快適動能運動短褲','100%聚酯纖維','越南製',null,390,'false',null,9);

INSERT INTO ProductGroups(fk_ProductId,fk_ColorId,fk_SizeId,Qty)
VALUES
('C_PA_ST_0001',1,1,220),
('C_PA_ST_0001',1,2,100),
('C_PA_ST_0001',1,3,80),
('C_PA_ST_0001',5,4,50),
('C_PA_ST_0001',5,5,30);

INSERT INTO ProductImgs(fk_ProductId,fk_ColorId,ImgPath)
VALUES 
('C_PA_ST_0001',1,'44673e00a099451ba228c9489b36973e.jpg'),
('C_PA_ST_0001',5,'6e1bec66a1da45c195f67fd3bf452239.jpg');


INSERT INTO Products(ProductId,ProductName,ProductDescription,ProductMaterial,ProductOrigin,UnitPrice,SalesPrice,LogOut,Tag,fk_ProductSubCategoryID)
VALUES
('C_PA_ST_0002','兒童款足球輕量短褲','這款運動短褲由我們的團隊特別設計，適合一週內進行一或兩次足球訓練或比賽的年幼足球選手。','100% 聚酯纖維','台灣',null,450,'false',null,9);

INSERT INTO ProductGroups(fk_ProductId,fk_ColorId,fk_SizeId,Qty)
VALUES
('C_PA_ST_0002',1,1,220),
('C_PA_ST_0002',4,2,100),
('C_PA_ST_0002',5,3,80);

INSERT INTO ProductImgs(fk_ProductId,fk_ColorId,ImgPath)
VALUES 
('C_PA_ST_0002',1,'9aee784fb1d645d7ace5629ad6375f76.jpg'),
('C_PA_ST_0002',5,'efd28ca87fb64a7da74ee3d05150c9d8.jpg'),
('C_PA_ST_0002',4,'950f8885022444498e834c576bcec158.jpg');

--------------------------------------------------------------

INSERT INTO Products(ProductId,ProductName,ProductDescription,ProductMaterial,ProductOrigin,UnitPrice,SalesPrice,LogOut,Tag,fk_ProductSubCategoryID)
VALUES
('M_PA_LG_0001','男 貼身保暖透氣長褲','高海拔美麗諾羊毛，擁有卓越的溫濕控功能、透氣排汗、親膚舒適，美麗諾羊毛特殊結構，能鎖住氣味，有效降低異味感','100% 美麗諾羊毛','台灣',3000,2800,'false',null,10);

INSERT INTO ProductGroups(fk_ProductId,fk_ColorId,fk_SizeId,Qty)
VALUES

('M_PA_LG_0001',1,1,120),
('M_PA_LG_0001',1,2,900),
('M_PA_LG_0001',1,3,220),
('M_PA_LG_0001',1,4,50);

INSERT INTO ProductImgs(fk_ProductId,fk_ColorId,ImgPath)
VALUES 
('M_PA_LG_0001',1,'8cfc8812ec7a4a10aa2974d338ad489f.jpg'),
('M_PA_LG_0001',null,'885a5fe3b427457c9188b0bde628a143.jpg');



INSERT INTO Products(ProductId,ProductName,ProductDescription,ProductMaterial,ProductOrigin,UnitPrice,SalesPrice,LogOut,Tag,fk_ProductSubCategoryID)
VALUES
('M_PA_LG_0002','快適動能標準型束口褲','快適動能標準型束口褲','100%聚酯纖維','越南製',null,499,'false','限量',10);

INSERT INTO ProductGroups(fk_ProductId,fk_ColorId,fk_SizeId,Qty)
VALUES
('M_PA_LG_0002',1,1,220),
('M_PA_LG_0002',1,2,100),
('M_PA_LG_0002',3,3,80),
('M_PA_LG_0002',3,4,130);

INSERT INTO ProductImgs(fk_ProductId,fk_ColorId,ImgPath)
VALUES 
('M_PA_LG_0002',null,'7cafa98d99394b2aa62b5ff53d363692.jpg'),
('M_PA_LG_0002',3,'4c3fddd2efda4b69862232797a324c0e.jpg'),
('M_PA_LG_0002',1,'8b106b671eda4354983f8b76aed43625.jpg');

INSERT INTO Products(ProductId,ProductName,ProductDescription,ProductMaterial,ProductOrigin,UnitPrice,SalesPrice,Status,LogOut,Tag,fk_ProductSubCategoryID)
VALUES
('F_PA_LG_0001','女款初階健身長褲','讓我們能輕鬆運動地時尚現代設計慢跑褲。你一定會愛上這款產品：上寬下窄的設計上寬下窄的剪裁，腰帶抽繩設計，口袋和彈性面料讓你愛不釋手！','主要布料 88% 聚酯纖維, 12%','台灣',null,599,'true','false',null,11);

INSERT INTO ProductGroups(fk_ProductId,fk_ColorId,fk_SizeId,Qty)
VALUES
('F_PA_LG_0001',1,1,220),
('F_PA_LG_0001',1,2,100),
('F_PA_LG_0001',6,4,50),
('F_PA_LG_0001',6,5,30);

INSERT INTO ProductImgs(fk_ProductId,fk_ColorId,ImgPath)
VALUES 
('F_PA_LG_0001',1,'090cdadbb0914a3a9ed0854703161844.jpg'),
('F_PA_LG_0001',null,'d0c5e4f10ede47afb0ab34e7f4ecdc27.jpg'),
('F_PA_LG_0001',6,'d6ff1198d8934705ad13a76c6b327ed4.jpg'),
('F_PA_LG_0001',null,'5148e1858d6740e8b00d26a85b7a9766.jpg');

INSERT INTO Products(ProductId,ProductName,ProductDescription,ProductMaterial,ProductOrigin,UnitPrice,SalesPrice,LogOut,Tag,fk_ProductSubCategoryID)
VALUES
('F_PA_LG_0002','女款假兩件式跑步緊身長褲','適合戶外活動。搭配短褲的緊身褲。搭配短褲的緊身褲結合緊身褲的支撐效果並可隱藏臀部，兼具輕盈與遮蔽性。強調身型的緊身褲。','87% 聚酯纖維, 13% 彈性纖維 ','台灣',null,599,'false',null,11);

INSERT INTO ProductGroups(fk_ProductId,fk_ColorId,fk_SizeId,Qty)
VALUES
('F_PA_LG_0002',1,1,220),
('F_PA_LG_0002',1,2,100),
('F_PA_LG_0002',1,3,80);

INSERT INTO ProductImgs(fk_ProductId,fk_ColorId,ImgPath)
VALUES 
('F_PA_LG_0002',1,'2778a60e7c334990a8cd11b2455fc2b0.jpg');


INSERT INTO Products(ProductId,ProductName,ProductDescription,ProductMaterial,ProductOrigin,UnitPrice,SalesPrice,LogOut,Tag,fk_ProductSubCategoryID)
VALUES
('C_PA_LG_0001','兒童款止滑馬術長褲','適合在各種氣候中穿著。舒適及愉悅的穿著感受。這款馬褲採用彈性布料製成，騎乘時更舒適，也能活動自如。加強部分及縫線可減少摩擦。',' 97% 棉, 3% 彈性纖維','台灣',700,600,'false',null,12);

INSERT INTO ProductGroups(fk_ProductId,fk_ColorId,fk_SizeId,Qty)
VALUES
('C_PA_LG_0001',1,1,220),
('C_PA_LG_0001',1,2,100);

INSERT INTO ProductImgs(fk_ProductId,fk_ColorId,ImgPath)
VALUES 
('C_PA_LG_0001',null,'755486e74614499d8c9d0428665fd28c.jpg'),
('C_PA_LG_0001',null,'c37bf27933e049a2ae97847761340615.jpg'),
('C_PA_LG_0001',1,'006ca4ce4f934b31a0159c95f2c2bb52.jpg');


INSERT INTO Products(ProductId,ProductName,ProductDescription,ProductMaterial,ProductOrigin,UnitPrice,SalesPrice,LogOut,Tag,fk_ProductSubCategoryID)
VALUES
('C_PA_LG_0002','兒童款登山健行快乾彈性長褲','適合在溫暖天候下進行整日健行或平時穿著這款長褲兼具技術性、透氣性及輕量性，可依照天候狀況及步道難易度穿著。孩子會對這種舒適感愛不釋手。','100% 聚酯纖維','越南',750,499,'false',null,12);

INSERT INTO ProductGroups(fk_ProductId,fk_ColorId,fk_SizeId,Qty)
VALUES
('C_PA_LG_0002',1,1,220),
('C_PA_LG_0002',1,2,100),
('C_PA_LG_0002',2,3,220),
('C_PA_LG_0002',2,4,50);

INSERT INTO ProductImgs(fk_ProductId,fk_ColorId,ImgPath)
VALUES 
('C_PA_LG_0002',2,'733eef49bebf46e39c589039abbc4d5c.jpg'),
('C_PA_LG_0002',1,'c9e1a0df1d9d4f14bee803a219143b84.jpg');


---------------------------------------------------------

INSERT INTO Products(ProductId,ProductName,ProductDescription,ProductMaterial,ProductOrigin,UnitPrice,SalesPrice,LogOut,Tag,fk_ProductSubCategoryID)
VALUES
('M_SH_CL_0001','男款經典休閒帆布鞋','穿起來非常舒服，穿脫方便！',null,'中國製',null,1600,'false',null,13);

INSERT INTO ProductGroups(fk_ProductId,fk_ColorId,fk_SizeId,Qty)
VALUES
('M_SH_CL_0001',2,28,100),
('M_SH_CL_0001',2,29,200),
('M_SH_CL_0001',3,28,80),
('M_SH_CL_0001',3,29,120);

INSERT INTO ProductImgs(fk_ProductId,fk_ColorId,ImgPath)
VALUES 
('M_SH_CL_0001',2,'11f93804a670412e8d995a7d878bb837.jpg'),
('M_SH_CL_0001',null,'f6ba4d2bd96546c480c4a66e946dec9e.jpg'),
('M_SH_CL_0001',3,'bd9bc306ab4a46d29340da5908e7287a.jpg');



INSERT INTO Products(ProductId,ProductName,ProductDescription,ProductMaterial,ProductOrigin,UnitPrice,SalesPrice,LogOut,Tag,fk_ProductSubCategoryID)
VALUES
('M_SH_CL_0002','前包式拖鞋','採用獨創的橡膠杯底，具有高抓地力、防滑功能和耐用性。',null,'台灣',null,399,'false','限量',13);

INSERT INTO ProductGroups(fk_ProductId,fk_ColorId,fk_SizeId,Qty)
VALUES
('M_SH_CL_0002',1,28,220),
('M_SH_CL_0002',1,29,100),
('M_SH_CL_0002',1,30,80),
('M_SH_CL_0002',6,31,50);

INSERT INTO ProductImgs(fk_ProductId,fk_ColorId,ImgPath)
VALUES 
('M_SH_CL_0002',6,'b6cc09b2ee204ace8e83cdc0f3342bc3.jpg'),
('M_SH_CL_0002',null,'fd8dd6e92e0841e5ae5fc3a5761496b8.jpg'),
('M_SH_CL_0002',1,'e18073014f984b5f87171efc02a5d140.jpg');

INSERT INTO Products(ProductId,ProductName,ProductDescription,ProductMaterial,ProductOrigin,UnitPrice,SalesPrice,LogOut,Tag,fk_ProductSubCategoryID)
VALUES
('F_SH_CL_0001','基本休閒帆布鞋','穿起來非常舒服，穿脫方便！',null,'中國製',null,1600,'false',null,14);

INSERT INTO ProductGroups(fk_ProductId,fk_ColorId,fk_SizeId,Qty)
VALUES
('F_SH_CL_0001',1,20,220),
('F_SH_CL_0001',1,21,100),
('F_SH_CL_0001',2,23,50),
('F_SH_CL_0001',2,24,30);

INSERT INTO ProductImgs(fk_ProductId,fk_ColorId,ImgPath)
VALUES 
('F_SH_CL_0001',1,'938271a113f244c996aec3ae939a143a.jpg'),
('F_SH_CL_0001',2,'9cf100bb0185468b937051136bd04142.jpg');

INSERT INTO Products(ProductId,ProductName,ProductDescription,ProductMaterial,ProductOrigin,UnitPrice,SalesPrice,LogOut,Tag,fk_ProductSubCategoryID)
VALUES
('F_SH_CL_0002','一體成型壓紋勃肯鞋','穿起來非常舒服，穿脫方便！',null,'中國製',null,399,'false',null,14);

INSERT INTO ProductGroups(fk_ProductId,fk_ColorId,fk_SizeId,Qty)
VALUES
('F_SH_CL_0002',2,20,220),
('F_SH_CL_0002',2,21,100),
('F_SH_CL_0002',4,23,50),
('F_SH_CL_0002',8,24,30);

INSERT INTO ProductImgs(fk_ProductId,fk_ColorId,ImgPath)
VALUES 
('F_SH_CL_0002',8,'19d5c3e6ebb948d784f351a9433cc1b2.jpg'),
('F_SH_CL_0002',2,'5e6ad0c29b5e4a54913a702c5d08b707.jpg'),
('F_SH_CL_0002',4,'5d6765844ed04a6b92d2413513a74c8c.jpg');


INSERT INTO Products(ProductId,ProductName,ProductDescription,ProductMaterial,ProductOrigin,UnitPrice,SalesPrice,LogOut,Tag,fk_ProductSubCategoryID)
VALUES
('C_SH_CL_0001','童素色休閒鞋','抗菌除臭效果高，透氣性好。',null,'台灣',null,1500,'false',null,15);

INSERT INTO ProductGroups(fk_ProductId,fk_ColorId,fk_SizeId,Qty)
VALUES
('C_SH_CL_0001',1,8,220),
('C_SH_CL_0001',1,9,100),
('C_SH_CL_0001',1,10,80),
('C_SH_CL_0001',6,8,190),
('C_SH_CL_0001',6,9,300);

INSERT INTO ProductImgs(fk_ProductId,fk_ColorId,ImgPath)
VALUES 
('C_SH_CL_0001',null,'Product_00281.jpg'),
('C_SH_CL_0001',null,'Product_00282.jpg');


INSERT INTO Products(ProductId,ProductName,ProductDescription,ProductMaterial,ProductOrigin,UnitPrice,SalesPrice,LogOut,Tag,fk_ProductSubCategoryID)
VALUES
('C_SH_CL_0002','休閒鞋006','這是休閒鞋006',null,'台灣',2000,1650,'true',null,15);

INSERT INTO ProductGroups(fk_ProductId,fk_ColorId,fk_SizeId,Qty)
VALUES
('C_SH_CL_0002',1,8,220),
('C_SH_CL_0002',6,8,190),
('C_SH_CL_0002',6,9,300),
('C_SH_CL_0002',6,10,220);

INSERT INTO ProductImgs(fk_ProductId,fk_ColorId,ImgPath)
VALUES 
('C_SH_CL_0002',null,'91b1fc97dda241bc809392b3a4b63af1.jpg'),
('C_SH_CL_0002',1,'9066088b9a904d0b85116807f30886a9.jpg'),
('C_SH_CL_0002',6,'07e650b59d3f433ba0771112e583f070.jpg');


----------------------------------------------------------------


INSERT INTO Products(ProductId,ProductName,ProductDescription,ProductMaterial,ProductOrigin,UnitPrice,SalesPrice,LogOut,Tag,fk_ProductSubCategoryID)
VALUES
('M_SH_SP_0001','運動鞋001','這是運動鞋001',null,'台灣',null,3600,'false',null,16);

INSERT INTO ProductGroups(fk_ProductId,fk_ColorId,fk_SizeId,Qty)
VALUES
('M_SH_SP_0001',1,28,100),
('M_SH_SP_0001',1,29,200),
('M_SH_SP_0001',2,31,100),
('M_SH_SP_0001',2,32,50);

INSERT INTO ProductImgs(fk_ProductId,fk_ColorId,ImgPath)
VALUES 
('M_SH_SP_0001',null,'Product_00301.jpg'),
('M_SH_SP_0001',null,'Product_00302.jpg'),
('M_SH_SP_0001',null,'Product_00303.jpg');



INSERT INTO Products(ProductId,ProductName,ProductDescription,ProductMaterial,ProductOrigin,UnitPrice,SalesPrice,LogOut,Tag,fk_ProductSubCategoryID)
VALUES
('M_SH_SP_0002','運動鞋002','這是運動鞋002',null,'台灣',2500,2000,'false','限量',16);

INSERT INTO ProductGroups(fk_ProductId,fk_ColorId,fk_SizeId,Qty)
VALUES
('M_SH_SP_0002',3,28,220),
('M_SH_SP_0002',3,29,100),
('M_SH_SP_0002',4,28,190),
('M_SH_SP_0002',4,29,300);

INSERT INTO ProductImgs(fk_ProductId,fk_ColorId,ImgPath)
VALUES 
('M_SH_SP_0002',null,'Product_00311.jpg'),
('M_SH_SP_0002',null,'Product_00312.jpg'),
('M_SH_SP_0002',null,'Product_00313.jpg'),
('M_SH_SP_0002',null,'Product_00314.jpg');

INSERT INTO Products(ProductId,ProductName,ProductDescription,ProductMaterial,ProductOrigin,UnitPrice,SalesPrice,LogOut,Tag,fk_ProductSubCategoryID)
VALUES
('F_SH_SP_0001','運動鞋003','這是運動鞋003',null,'台灣',2300,1890,'false','限量',17);

INSERT INTO ProductGroups(fk_ProductId,fk_ColorId,fk_SizeId,Qty)
VALUES
('F_SH_SP_0001',2,20,220),
('F_SH_SP_0001',2,21,100),
('F_SH_SP_0001',2,22,80);

INSERT INTO ProductImgs(fk_ProductId,fk_ColorId,ImgPath)
VALUES 
('F_SH_SP_0001',null,'Product_00321.jpg'),
('F_SH_SP_0001',null,'Product_00322.jpg'),
('F_SH_SP_0001',null,'Product_00323.jpg'),
('F_SH_SP_0001',null,'Product_00324.jpg');

INSERT INTO Products(ProductId,ProductName,ProductDescription,ProductMaterial,ProductOrigin,UnitPrice,SalesPrice,LogOut,Tag,fk_ProductSubCategoryID)
VALUES
('F_SH_SP_0002','運動鞋004','這是運動鞋004','純棉','台灣',null,2200,'false',null,17);

INSERT INTO ProductGroups(fk_ProductId,fk_ColorId,fk_SizeId,Qty)
VALUES
('F_SH_SP_0002',1,20,220),
('F_SH_SP_0002',1,21,100),
('F_SH_SP_0002',1,22,80);

INSERT INTO ProductImgs(fk_ProductId,fk_ColorId,ImgPath)
VALUES 
('F_SH_SP_0002',null,'Product_00331.jpg'),
('F_SH_SP_0002',null,'Product_00332.jpg'),
('F_SH_SP_0002',null,'Product_00333.jpg'),
('F_SH_SP_0002',null,'Product_00334.jpg');


INSERT INTO Products(ProductId,ProductName,ProductDescription,ProductMaterial,ProductOrigin,UnitPrice,SalesPrice,Status,LogOut,Tag,fk_ProductSubCategoryID)
VALUES
('C_SH_SP_0001','運動鞋005','這是運動鞋005',null,'台灣',null,1500,'true','false',null,18);

INSERT INTO ProductGroups(fk_ProductId,fk_ColorId,fk_SizeId,Qty)
VALUES
('C_SH_SP_0001',1,8,220),
('C_SH_SP_0001',2,11,50),
('C_SH_SP_0001',2,12,30);

INSERT INTO ProductImgs(fk_ProductId,fk_ColorId,ImgPath)
VALUES 
('C_SH_SP_0001',null,'Product_00341.jpg'),
('C_SH_SP_0001',null,'Product_00342.jpg'),
('C_SH_SP_0001',null,'Product_00343.jpg'),
('C_SH_SP_0001',null,'Product_00344.jpg');


INSERT INTO Products(ProductId,ProductName,ProductDescription,ProductMaterial,ProductOrigin,UnitPrice,SalesPrice,LogOut,Tag,fk_ProductSubCategoryID)
VALUES
('C_SH_SP_0002','運動鞋006','這是運動鞋006',null,'台灣',2000,1650,'true',null,18);

INSERT INTO ProductGroups(fk_ProductId,fk_ColorId,fk_SizeId,Qty)
VALUES
('C_SH_SP_0002',1,8,220),
('C_SH_SP_0002',1,9,100),
('C_SH_SP_0002',3,8,190),
('C_SH_SP_0002',3,9,300);

INSERT INTO ProductImgs(fk_ProductId,fk_ColorId,ImgPath)
VALUES 
('C_SH_SP_0002',null,'Product_00351.jpg'),
('C_SH_SP_0002',null,'Product_00352.jpg'),
('C_SH_SP_0002',null,'Product_00353.jpg');

--濱董********************************************************************************--

insert into Suppliers (SupplierCompanyName, HasCertificate, Supply_Material,
SupplierCompanyPhone,SupplierCompanyEmail,SupplierCompanyAddress,SupplierCompanyNumber,SupplierStartDate)
values
('政斌紡織有限公司',1,'帆布',033817499,'Valcloth@gmail.com','桃園市大園區中正路1段1號',77778888,GETDATE()),
('易暖織布有限公司',1,'皮革',045217898,'a_pants@gmail.com','新竹市東區中央路200號',87871234,GETDATE()),
('建綸紡織廠',1,'牛皮',034725656,'Rowscloses@gmail.com','桃園市中壢區金陵路100號',12345678,GETDATE()),
('祥豪製布',1,'緞紋皮革',065107777,'ShowHowCloth@gmail.com','台南市北安路300號',85857878,GETDATE());


insert into ShoesCategories (ShoesCategoryName)
values
('運動生活'),
('跑步'),
('籃球'),
('英式足球'),
('訓練與健身'),
('田徑');


insert into ShoesColorCategories (ColorName,ColorCode)
values
('黑色','#000000'),
('白色','#FFFFFF'),
('番茄紅','#FF6347'),
('淺灰色','#D3D3D3'),
('灰土色','#CCB38C'),
('淺綠','#90EE90'),
('綠松石綠','#4DE680'),
('天藍','#87CEEB'),
('韋奇伍德瓷藍','#5686BF'),
('李紫','#DDA0DD');


insert into Customized_materials (material_Name)
values
('帆布'),
('皮革'),
('緞紋皮革'),
('牛皮'),
('絲絨');

insert into ShoesChooses(OptinName)
values
('鞋面'),
('鞋尖'),
('護邊'),
('鞋領'),
('孔眼片'),
('內襯'),
('後踵加強片');

insert into CustomizedShoesPo (ShoesName,ShoesDescription,ShoesOrigin,ShoesUnitPrice,StartTime,EndTime,fk_ShoesCategoryId,fk_ShoesColorId,DataCreateTime,DataEditTime)
values
('BS00101','專為您訂製最舒適的籃球鞋，於籃球場上揮灑您的青春汗水','台灣',5000,GETDATE(),null,3,2,GETDATE(),GETDATE()),
('LF00101','適用於多種場合，為您訂製屬於自己的都市風格','台灣',4000,GETDATE(),null,1,5,GETDATE(),GETDATE()),
('RN00101','訂製專屬於您的跑步鞋，用力奔跑，繼續於前進的道路上發揚夢想','台灣',4500,GETDATE(),null,2,1,GETDATE(),GETDATE())

--品瑩**************************************************************************--


--1.黑名單
INSERT INTO BlackLists 
(Behavior) 
VALUES 
('詐欺行為'),('未經授權的行為'),('違反使用條款'),('頻繁退貨'),('不當行為'),('違反隱私權政策'),('其他');

--------------------------------------------------
--2.特權
INSERT INTO Privileges 
(PrivilegeName,[Description]) 
VALUES 
('生日優惠','根據會員的生日提供獨家優惠和禮物'),
('專屬活動','邀請特定等級的會員參加線上或線下的活動'),
('訪問新品','新品推出優先讓VVIP會員購買'),
('限量商品','限量商品僅限VVIP會員購買');

--------------------------------------------------
--3.等級
INSERT INTO MembershipLevels 
(LevelName,MinSpending,Discount,[Description]) 
VALUES 
('一般會員',0,0,'新註冊的會員自動成為基本級別會員'),
('VIP',8888,88,'消費門檻達8,888即可升級'),
('VVIP',12000,85,'消費門檻達12,000即可升級');

--------------------------------------------------
--4.會員等級與特權中介資料表
INSERT INTO MembershipLevelPrivileges (fk_LevelId, fk_PrivilegeId)
VALUES
  (1, 1), -- 一般會員的生日優惠
  (2, 1), -- VIP會員的生日優惠
  (2, 2), -- VIP會員的專屬活動優惠
  (3, 1), -- VVIP會員的生日優惠
  (3, 2), -- VVIP會員的專屬活動優惠
  (3, 3), -- VVIP會員的訪問新品優惠
  (3, 4); -- VVIP會員的限量商品優惠

--------------------------------------------------
--5.會員
INSERT INTO Members ([Name], Age, Gender, Mobile, Email, Birthday, CommonAddress, Account, EncryptedPassword, IsConfirmed, ConfirmCode, fk_LevelId, fk_BlackListId)
VALUES
('David Wu', 28, 0, '0912378555', 'amyjohnson@example.com', '1995-07-08', '台北市信義區忠孝東路五段55號', 'a123', '123', 1, 'Confirmed', 1, NULL),
('Tina Lin', 41, 1, '0923456719', 'kevinchen@example.com', '1982-04-28', '台中市南區建國北路123號', 'b123', '123', 1, 'Confirmed', 2, NULL),
('Tony Chen', 48, 0, '0911654321', 'lisawang@example.com', '1975-10-17', '台北市中山區中正路789號', 'c23', '123', 1, 'Confirmed', 3, NULL),
('Ryan Liu', 20, 1, '0911456222', 'ryanliu@example.com', '2003-05-20', '新竹市東區光復路456號', 'ryanliu123', '123', 1, 'Confirmed', 2, NULL),
('Sophia Huang', 33, 0, '0933777244', 'sophiahuang@example.com', '1990-08-12', '桃園市中壢區環中東路111號', 'sophiahuang123', '123', 1, 'Confirmed', 1, NULL),
('Chris Lee', 30, 1, '0955753666', 'chrislee@example.com', '1993-11-05', '台南市北區成功路222號', 'chrislee123', '123', 1, 'Pending', 1, 3),
('Olivia Lin', 35, 0, '0922245633', 'olivialin@example.com', '1988-12-29', '彰化縣員林市中山路333號', 'olivialin123', '123', 1, 'Confirmed', 2, NULL),
('Daniel Yang', 45, 1, '096685277', 'danielyang@example.com', '1978-07-17', '新北市三峽區民生路456號', 'danielyang123', '123', 1, 'Confirmed', 1, NULL),
('Ava Tsai', 22, 0, '0912345678', 'avatsai@example.com', '2001-03-02', '基隆市中山區中正路567號', 'avatsai123', '123', 1, 'Confirmed', 2, NULL),
('Jason Huang', 38, 1, '0923556789', 'jasonhuang@example.com', '1985-08-28', '桃園市桃園區中正路789號', 'jasonhuang123', '123', 1, 'Confirmed', 3, NULL),
('Ella Wang', 29, 0, '0987654321', 'ellawang@example.com', '1994-11-14', '高雄市鳳山區鳳松路123號', 'ellawang123', '123', 1, 'Confirmed', 1, NULL),
('Eric Chen', 25, 1, '0911896233', 'ericchen@example.com', '1998-04-18', '新竹市北區光復路456號', 'ericchen123', '123', 1, 'Confirmed', 3, 4),
('Mia Liu', 42, 0, '0933312444', 'mialiu@example.com', '1981-01-09', '台南市南區成功路222號', 'mialiu123', '123', 1, 'Confirmed', 2, NULL),
('William Chang', 32, 1, '0955578966', 'williamchang@example.com', '1991-09-24', '彰化縣彰化市中山路333號', 'williamchang123', '123', 1, 'Confirmed', 1, NULL),
('Grace Lin', 27, 0, '0922224563', 'gracelin@example.com', '1996-06-10', '新北市板橋區民生路456號', 'gracelin123', '123', 1, 'Confirmed', 1, NULL),
('Alex Wu', 37, 1, '0966825777', 'alexwu@example.com', '1986-09-02', '基隆市仁愛區中正路567號', 'alexwu123', '123', 1, 'Pending', 2, 1),
('Chloe Huang', 23, 0, '0912348888', 'chloehuang@example.com', '2000-02-15', '新竹市東區民生路456號', 'chloehuang123', '123', 1, 'Confirmed', 1, 6),
('Andrew Liu', 44, 1, '0923456789', 'andrewliu@example.com', '1979-05-27', '桃園市中壢區中正路789號', 'andrewliu123', '123', 1, 'Confirmed', 2, 4),
('Lily Chen', 30, 0, '0981114321', 'lilychen@example.com', '1993-08-21', '高雄市前鎮區忠孝東路123號', 'lilychen123', '123', 1, 'Confirmed', 1, NULL),
('Henry Wang', 26, 1, '0910562562', 'henrywang@example.com', '1997-07-12', '台南市北區成功路222號', 'henrywang123', '123', 1, 'Confirmed', 2, 5),
('John Doe', 25, 1, '0934567890', 'johndoe@example.com', '1997-05-10', '新北市土城區學府路一段6號', 'johndoe123', '123', 1, 'Confirmed', 1, NULL),
('Jane Smith', 30, 0, '0976543210', 'janesmith@example.com', '1992-08-15', '新北市新莊區南雅路354號', 'janesmith456', '456', 1, 'Confirmed', 2, 1),
('Michael Johnson', 35, 1, '0958889999', 'michaeljohnson@example.com', '1987-03-20', '台中市太平區中正路一段111號', 'mjohnson789', '789', 1, 'Pending', 2, NULL),
('Emily Davis', 28, 0, '0972221111', 'emilydavis@example.com', '1993-11-05', '新北市鶯歌區鶯桃路三段7號', 'emilyd321', '444', 1, 'Confirmed', 1, NULL),
('David Wilson', 32, 1, '0947778888', 'davidwilson@example.com', '1989-07-12', '台東縣東河鄉濱海路33號', 'dwilson567', '555', 1, 'Confirmed', 1,NULL);


--------------------------------------------------
--6.備用地址
INSERT INTO AlternateAddresses (AlternateAddress1, AlternateAddress2, fk_MemberId)
VALUES
  ('新北市新莊區南雅路354號',null ,1),
  (NULL, NULL,2),
  ('新北市板橋區府中路一段6號', null,3),
  ('桃園市中壢區聖德路三段7號', NULL,5),
  ('台南市白河鎮白河路354號', '新北市土城區學士路一段36號',4);

--9.類型
INSERT INTO [Type] (TypeName)
VALUES
('商品'),
('活動'),
('課程'),
('客製化商品');

--------------------------------------------------
--7.歷史積分,需要與訂單建立關聯
INSERT INTO PointHistories (GetOrDeduct, UsageAmount,fk_MemberId,fk_TypeId)
VALUES
  (1,100,1,1),
  (0,50,2,2),
  (0,200,3,3),
  (0,30,4,4),
  (1,0,5,1),
  (1,100,6,1),
  (0,50,7,2),
  (0,200,8,3),
  (0,30,8,4),
  (1,0,10,1),
  (1,100,12,1),
  (0,50,25,2),
  (0,200,13,3),
  (0,30,13,4),
  (1,0,5,1),
  (1,100,13,1),
  (0,50,2,2),
  (0,200,3,3),
  (0,30,11,4),
  (1,0,8,1),
  (1,100,1,1),
  (0,50,10,2),
  (0,200,3,3),
  (0,30,4,4),
  (1,0,5,1);

--------------------------------------------------
--8.會員積分
INSERT INTO MemberPoints (PointSubtotal, fk_MemberId)
VALUES 
 (110,1),(60,2),(420,3),(21,4),(70,5), 
 (110,6),(21,9),(70,10),(110,11),(60,12),    
 (420,13),(21,14),(70,15),(110,16),(0,17),
 (0,18),(0,19),(420,20),(21,21),(70,22), 
 (0,23),(0,24),(0,25),(420,7),(21,8);

--------------------------------------------------
--10.積分管理
INSERT INTO PointManage (GetOrDeduct,Amount,fk_TypeId,PointExpirationDate)
VALUES
(0, 100, 4, '2023-06-25'),(1, 200, 1, '2023-06-27'),(1, 200, 3, '2023-06-25'),(0, 100, 4, '2023-06-25'),(0, 100, 4, '2023-06-25'),
(1, 200, 4, '2023-06-27'),(0, 100, 2, '2023-06-25'),(0, 100, 3, '2023-06-27'),(1, 200, 4, '2023-06-25'),(1, 200, 4, '2023-06-27'),
(0, 100, 1, '2023-06-27'),(1, 200, 2, '2023-06-27'),(1, 200, 3, '2023-06-25'),(0, 100, 2, '2023-06-25'),(0, 100, 1, '2023-06-25'),
(0, 100, 3, '2023-06-27'),(1, 200, 2, '2023-06-25'),(1, 200, 1, '2023-06-25'),(0, 100, 2, '2023-06-27'),(0, 100, 1, '2023-06-27'),
(1, 200, 4, '2023-06-25'),(1, 200, 3, '2023-06-27'),(0, 100, 1, '2023-06-25'),(1, 200, 4, '2023-06-27'),(1, 200, 2, '2023-06-27');

--------------------------------------------------
--11.積分折抵
INSERT INTO PointTradeIn (GiftThreshold,GetPoints,MaxGetPoints,EffectiveDate,ExpirationDate,fk_MemberId)
VALUES
(100,1,1000,'2023-6-27','2024-6-27',1),
(200, 3, 900, '2023-06-05', '2024-06-05', 18),
(120, 1, 700, '2023-07-10', '2024-07-10', 5),
(180, 2, 600, '2023-08-15', '2024-08-15', 24),
(100, 1, 800, '2023-09-20', '2024-09-20', 7),
(250, 3, 900, '2023-10-25', '2024-10-25', 16),
(160, 2, 700, '2023-11-30', '2024-11-30', 23),
(140, 1, 1000, '2023-12-05', '2024-12-05', 9),
(200, 2, 800, '2024-01-10', '2025-01-10', 3),
(180, 2, 700, '2024-02-15', '2025-02-15', 21),
(130, 1, 600, '2024-03-20', '2025-03-20', 14),
(150, 2, 800, '2024-04-25', '2025-04-25', 10),
(170, 2, 900, '2024-05-30', '2025-05-30', 19),
(120, 1, 700, '2024-06-05', '2025-06-05', 6),
(190, 3, 1000, '2024-07-10', '2025-07-10', 25),
(160, 2, 800, '2024-08-15', '2025-08-15', 2),
(140, 1, 700, '2024-09-20', '2025-09-20', 17),
(210, 2, 800, '2024-10-25', '2025-10-25', 8),
(130, 1, 600, '2024-11-30', '2025-11-30', 22),
(150, 2, 800, '2024-12-05', '2025-12-05', 11),
(190, 3, 900, '2025-01-10', '2026-01-10', 15),
(170, 2, 700, '2025-02-15', '2026-02-15', 20),
(140, 1, 1000, '2025-03-20', '2026-03-20', 13),
(160, 2, 800, '2025-04-25', '2026-04-25', 4),
(180, 2, 900, '2025-05-30', '2026-05-30', 1);

--------------------------------------------------
--------------------------------------------------
--員工權限
INSERT INTO StaffPermissions (LevelName)
VALUES
  ('一般權限'),
  ('中級權限'),
  ('高級權限');

--------------------------------------------------
--員工職稱
INSERT INTO JobTitles (TitleName,fk_StaffPermissions)
VALUES ('助理',1),
       ('專員',2),
       ('主管',3),
       ('經理',3);

--------------------------------------------------
--部門
INSERT INTO Departments (DepartmentName)
VALUES ('行銷部門'),
       ('技術部門'),
       ('銷售部門'),
       ('商品部門'),
       ('客服部門');

--------------------------------------------------
--員工名單
INSERT INTO Staffs ([Name], Age, Gender, Mobile, Email, Birthday, Account, [Password], fk_PermissionsId,fk_TitleId,fk_DepartmentId,[DueDate])
VALUES
('吳依頒', 29, 0, '0912345601', 'amy.johnson@example.com', '1994-10-01', '123', '123', 1, 1, 5,'2021-01-01'),
('王盅集', 37, 1, '0987654302', 'kevin.chen@example.com', '1986-05-20', '456', '123', 2, 2, 4,'2000-01-03'),
('陳高吉', 42, 0, '0922334035', 'lisa.wang@example.com', '1981-03-15', '789', '123', 3, 4, 1,'2011-11-01'),
('Ryan Liu', 24, 1, '0933445046', 'ryan.liu@example.com', '1999-08-10', 'ryanliu', '123', 1, 1, 2,'2021-01-01'),
('Nana Su', 24, 1, '0933445777', 'nana@example.com', '1999-08-10', 'nana', '123', 1, 1, 2,'2023-06-08'),
('Sophia Huang', 26, 0, '0977880459', 'sophia.huang@example.com', '1997-07-22', 'sophiahuang', '123', 2, 4, 5,'2022-01-01'),
('Chris Lee', 38, 1, '0911223084', 'chris.lee@example.com', '1985-01-18', 'chrislee', '123', 1, 1, 3,'2000-01-11'),
('Olivia Lin', 33, 0, '0922112053', 'olivia.lin@example.com', '1990-06-05', 'olivialin', '123', 1, 2, 3,'2022-01-21'),
('Daniel Yang', 45, 1, '0933223094', 'daniel.yang@example.com', '1978-02-20', 'danielyang', '123', 3, 1, 1,'2022-01-01'),
('Ava Tsai', 22, 0, '0911122134', 'ava.tsai@example.com', '2001-11-05', 'avatsai', '123', 1, 1, 4,'2021-01-01'),
('Jason Huang', 32, 1, '0977882299', 'jason.huang@example.com', '1989-04-15', 'jasonhuang', '123', 1, 2, 1,'2021-01-01'),
('Ella Wang', 29, 0, '0922112563', 'ella.wang@example.com', '1994-07-30', 'ellawang', '123', 1, 4, 3,'2008-07-01'),
('Eric Chen', 25, 1, '0911227544', 'eric.chen@example.com', '1998-10-24', 'ericchen', '123', 1, 2, 5,'2010-01-15'),
('Mia Liu', 42, 0, '0933223584', 'mia.liu@example.com', '1981-01-10', 'mialiu', '123', 1, 1, 4,'2023-01-01'),
('William Chang', 30, 1, '0911562334', 'william.chang@example.com', '1993-06-25', 'williamchang', '123', 2, 1, 1,'2020-05-01'),
('Grace Lin', 27, 0, '0977689555', 'grace.lin@example.com', '1996-02-08', 'gracelin', '123', 3, 4, 2,'2021-01-01'),
('Alex Wu', 37, 1, '0913311556', 'alex.wu@example.com', '1986-09-30', 'alexwu', '123', 1, 2, 3,'2021-01-01'),
('Chloe Huang', 23, 0, '0933256344', 'chloe.huang@example.com', '2000-07-17', 'chloehuang', '123', 1, 1, 5,'2021-01-01'),
('Andrew Liu', 44, 1, '0911223854', 'andrew.liu@example.com', '1979-12-20', 'andrewliu', '123', 2, 1, 4,'2021-01-01'),
('Lily Chen', 30, 0, '0922112543', 'lily.chen@example.com', '1993-09-05', 'lilychen', '123', 1, 1, 1,'2021-01-01'),
('Henry Wang', 26, 1, '0911127734', 'henry.wang@example.com', '1997-04-22', 'henrywang', '123', 3, 2, 2,'2021-01-01'),
('Zoe Lin', 47, 0, '0977666605', 'zoe.lin@example.com', '1976-11-25', 'zoelin', '123', 1, 1, 3,'2021-01-01'),
('Sophia Chen', 29, 0, '0913347896', 'sophia.chen@example.com', '1994-03-11', 'sophiachen', '123', 1, 3, 4,'2021-01-01'),
('Chris Wang', 31, 1, '0933221114', 'chris.wang@example.com', '1992-12-28', 'chriswang', '123', 1, 2, 5,'2021-01-01'),
('Emily Liu', 36, 0, '0911223224', 'emily.liu@example.com', '1987-09-15', 'emilyliu', '123', 1, 1, 1,'2021-01-01'),
('Jason Chen', 24, 1, '0922112783', 'jason.chen@example.com', '1999-05-30', 'jasonchen', '123', 1, 1, 3,'2021-01-01'),
('Olivia Wu', 27, 0, '0977889639', 'olivia.wu@example.com', '1996-08-20', 'oliviawu', '123', 3, 1, 4,'2009-01-21'),
('Henry Lee', 34, 1, '0913341156', 'henry.lee@example.com', '1989-11-03', 'henrylee', '123', 1, 3, 5,'2021-01-01'),
('Sophie Wang', 41, 0, '0933275344', 'sophie.wang@example.com', '1982-10-18', 'sophiewang', '123', 3, 3, 1,'2021-01-01'),
('Benjamin Liu', 25, 1, '0911223621', 'benjamin.liu@example.com', '1998-05-12', 'benjaminliu', '123', 1, 1, 2,'2021-01-01'),
('John Doe', 25, 1, '0912345678', 'john.doe@example.com', '1998-05-15', 'johndoe', '123', 1,1,1,'2021-01-01'),
('Jane Smith', 30, 0, '0987654321', 'jane.smith@example.com', '1991-09-20', 'janesmith', '456', 1,4,2,'2021-01-01'),
('David Lee', 35, 1, '0922334455', 'david.lee@example.com', '1988-12-10', 'davidlee', '789', 2,1,2,'2021-01-01'),
('Sarah Wang', 28, 0, '0933445566', 'sarah.wang@example.com', '1993-06-25', 'sarahwang', 'abc', 3,4,4,'2000-12-31'),
('Michael Chen', 32, 1, '0977888999', 'michael.chen@example.com', '1989-04-05', 'michaelchen', 'xyz', 1,4,3,'2021-01-01');


--婉馨******************************************************************************--


SET IDENTITY_INSERT [dbo].[Branches] ON 
GO
INSERT [dbo].[Branches] ([BranchId], [BranchName], [BranchAddress]) VALUES (1, N'新北永和店', N'234新北市永和區文化路7號')
GO
INSERT [dbo].[Branches] ([BranchId], [BranchName], [BranchAddress]) VALUES (2, N'新北板橋店', N'220新北市板橋區文化路一段135號')
GO
INSERT [dbo].[Branches] ([BranchId], [BranchName], [BranchAddress]) VALUES (3, N'桃園中壢店', N'桃園縣中壢市中正路89號1樓')
GO
INSERT [dbo].[Branches] ([BranchId], [BranchName], [BranchAddress]) VALUES (4, N'新竹站前店', N'300新竹市東區中華路二段458號')
GO
INSERT [dbo].[Branches] ([BranchId], [BranchName], [BranchAddress]) VALUES (5, N'新竹竹北店', N'302新竹縣竹北市莊敬北路130號')
GO
INSERT [dbo].[Branches] ([BranchId], [BranchName], [BranchAddress]) VALUES (6, N'台中逢甲店', N'407台中市西屯區西屯路二段272-3號1樓')
GO
INSERT [dbo].[Branches] ([BranchId], [BranchName], [BranchAddress]) VALUES (7, N'台北市府店', N'110台北市信義區松高路11號B2樓')
GO
SET IDENTITY_INSERT [dbo].[Branches] OFF
GO
SET IDENTITY_INSERT [dbo].[SpeakerFields] ON 
GO
INSERT [dbo].[SpeakerFields] ([FieldId], [FieldName]) VALUES (1, N'跑步')
GO
INSERT [dbo].[SpeakerFields] ([FieldId], [FieldName]) VALUES (2, N'健行')
GO
INSERT [dbo].[SpeakerFields] ([FieldId], [FieldName]) VALUES (3, N'登山')
GO
INSERT [dbo].[SpeakerFields] ([FieldId], [FieldName]) VALUES (4, N'自行車')
GO
INSERT [dbo].[SpeakerFields] ([FieldId], [FieldName]) VALUES (5, N'健身訓練')
GO
SET IDENTITY_INSERT [dbo].[SpeakerFields] OFF
GO
SET IDENTITY_INSERT [dbo].[Speakers] ON 
GO
INSERT [dbo].[Speakers] ([SpeakerId], [SpeakerName], [SpeakerPhone], [fk_SpeakerFieldId], [SpeakerImg], [fk_SpeakerBranchId], [SpeakerDescription], [SpeakerVisible]) VALUES (1, N'Allen', N'0935264777', 1, N'624c8b7fed954efe90faf112d6dd9d7e.jpg', 1, N'跑步專家Allen，擅長帶領跑者進行訓練和技巧分享。', 1)
GO
INSERT [dbo].[Speakers] ([SpeakerId], [SpeakerName], [SpeakerPhone], [fk_SpeakerFieldId], [SpeakerImg], [fk_SpeakerBranchId], [SpeakerDescription], [SpeakerVisible]) VALUES (2, N'Gary', N'0975641223', 2, N'79f37b044ece43bab417a52f79fa77e9.jpg', 2, N'健行導師Gary，喜歡帶領大家探索自然，並分享健行的益處和技巧。', 1)
GO
INSERT [dbo].[Speakers] ([SpeakerId], [SpeakerName], [SpeakerPhone], [fk_SpeakerFieldId], [SpeakerImg], [fk_SpeakerBranchId], [SpeakerDescription], [SpeakerVisible]) VALUES (3, N'Betty', N'0986523512', 3, N'2b966759625a4a258e9e71787d00d4b7.jpg', 3, N'登山教練Betty，對於登山路線和技巧有豐富的經驗，喜歡與登山愛好者分享知識。', 1)
GO
INSERT [dbo].[Speakers] ([SpeakerId], [SpeakerName], [SpeakerPhone], [fk_SpeakerFieldId], [SpeakerImg], [fk_SpeakerBranchId], [SpeakerDescription], [SpeakerVisible]) VALUES (4, N'Vivi', N'0953214147', 4, N'bbf4b1d2db7f467e8a237728416d6801.jpg', 4, N'自行車專家Vivi，熱衷於自行車運動，擅長技術指導和騎行安全注意事項的講解。', 1)
GO
INSERT [dbo].[Speakers] ([SpeakerId], [SpeakerName], [SpeakerPhone], [fk_SpeakerFieldId], [SpeakerImg], [fk_SpeakerBranchId], [SpeakerDescription], [SpeakerVisible]) VALUES (5, N'Katty', N'0933685421', 5, N'094e2cb2770f484e8d1c7fd204a651d0.jpg', 5, N'健身訓練教練Katty，擁有多年的健身訓練經驗，善於制定個人化的訓練計劃和建議飲食指導。', 1)
GO
INSERT [dbo].[Speakers] ([SpeakerId], [SpeakerName], [SpeakerPhone], [fk_SpeakerFieldId], [SpeakerImg], [fk_SpeakerBranchId], [SpeakerDescription], [SpeakerVisible]) VALUES (6, N'Steve', N'0937996501', 1, N'a2e52e0f998f41059d28931c7d45ee5f.jpg', 1, N'跑步專家Steve，對於長跑和競賽技巧有豐富的知識，喜歡鼓勵跑者挑戰自己的極限。', 1)
GO
INSERT [dbo].[Speakers] ([SpeakerId], [SpeakerName], [SpeakerPhone], [fk_SpeakerFieldId], [SpeakerImg], [fk_SpeakerBranchId], [SpeakerDescription], [SpeakerVisible]) VALUES (7, N'Jack', N'0985226553', 2, N'd4e44b59ced346d9940ea82d49b9c6ca.jpg', 2, N'健行導師Jack，經常帶領團隊進行山岳健行和探險活動，並分享山地生態知識。', 1)
GO
INSERT [dbo].[Speakers] ([SpeakerId], [SpeakerName], [SpeakerPhone], [fk_SpeakerFieldId], [SpeakerImg], [fk_SpeakerBranchId], [SpeakerDescription], [SpeakerVisible]) VALUES (8, N'Sam', N'0988166355', 3, N'bdc7aae41a454fa2aef759e7ca3cd629.jpeg', 3, N'登山教練Sam，擅長攀登技巧和高海拔環境適應，經驗豐富的山岳遠征者。', 1)
GO
INSERT [dbo].[Speakers] ([SpeakerId], [SpeakerName], [SpeakerPhone], [fk_SpeakerFieldId], [SpeakerImg], [fk_SpeakerBranchId], [SpeakerDescription], [SpeakerVisible]) VALUES (9, N'Teddy', N'0957446325', 4, N'f32d64bb07cc447fb3c99229170ca9b8.jpg', 4, N'自行車專家Teddy，喜歡挑戰極限，對自行車的相關裝備和規則都有豐富的知識。', 1)
GO
SET IDENTITY_INSERT [dbo].[Speakers] OFF
GO
SET IDENTITY_INSERT [dbo].[ActivityCategories] ON 
GO
INSERT [dbo].[ActivityCategories] ([ActivityCategoryId], [ActivityCategoryName]) VALUES (1, N'路跑')
GO
INSERT [dbo].[ActivityCategories] ([ActivityCategoryId], [ActivityCategoryName]) VALUES (2, N'鐵人三項')
GO
INSERT [dbo].[ActivityCategories] ([ActivityCategoryId], [ActivityCategoryName]) VALUES (3, N'自行車')
GO
INSERT [dbo].[ActivityCategories] ([ActivityCategoryId], [ActivityCategoryName]) VALUES (4, N'健行')
GO
INSERT [dbo].[ActivityCategories] ([ActivityCategoryId], [ActivityCategoryName]) VALUES (5, N'登山')
GO
INSERT [dbo].[ActivityCategories] ([ActivityCategoryId], [ActivityCategoryName]) VALUES (6, N'瑜珈')
GO
SET IDENTITY_INSERT [dbo].[ActivityCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[ActivityStatuses] ON 
GO
INSERT [dbo].[ActivityStatuses] ([ActivityStatusId], [ActivityStatusDescription]) VALUES (3, N'已下架')
GO
INSERT [dbo].[ActivityStatuses] ([ActivityStatusId], [ActivityStatusDescription]) VALUES (2, N'已上架')
GO
INSERT [dbo].[ActivityStatuses] ([ActivityStatusId], [ActivityStatusDescription]) VALUES (1, N'待上架')
GO
SET IDENTITY_INSERT [dbo].[ActivityStatuses] OFF
GO
SET IDENTITY_INSERT [dbo].[Activities] ON 
GO
INSERT [dbo].[Activities] ([ActivityId], [ActivityName], [fk_ActivityCategoryId], [ActivityDate], [fk_SpeakerId], [ActivityPlace], [ActivityImage], [ActivityBookStartTime], [ActivityBookEndTime], [ActivityAge], [ActivitySalePrice], [ActivityOriginalPrice], [ActivityDescription], [fk_ActivityStatusId]) VALUES (1, N'2023台北歡慶雙十節路跑', 1, CAST(N'2023-10-10T07:00:00.000' AS DateTime), 1, N'臺北市政府市民廣場', N'D:\期中專題 Flex\FLEX活動照片\活動照片\2023台北歡慶雙十節路跑.jpg', CAST(N'2023-08-10T00:00:00.000' AS DateTime), CAST(N'2023-10-10T23:59:59.000' AS DateTime), 7, 600, 700, N'一起在清晨享受健康的路跑活動慶祝台灣的生日吧！', 1)
GO
INSERT [dbo].[Activities] ([ActivityId], [ActivityName], [fk_ActivityCategoryId], [ActivityDate], [fk_SpeakerId], [ActivityPlace], [ActivityImage], [ActivityBookStartTime], [ActivityBookEndTime], [ActivityAge], [ActivitySalePrice], [ActivityOriginalPrice], [ActivityDescription], [fk_ActivityStatusId]) VALUES (2, N'2023新竹馬拉松', 1, CAST(N'2023-06-25T09:30:00.000' AS DateTime), 3, N'竹南寮十七公里海岸線', N'D:\期中專題 Flex\FLEX活動照片\活動照片\2023新竹馬拉松.png', CAST(N'2023-03-25T00:00:00.000' AS DateTime), CAST(N'2023-05-25T23:59:59.000' AS DateTime), 7, 600, 700, N'邀請您，一起來感受新竹南寮十七公里海岸線的無敵海景。', 3)
GO
INSERT [dbo].[Activities] ([ActivityId], [ActivityName], [fk_ActivityCategoryId], [ActivityDate], [fk_SpeakerId], [ActivityPlace], [ActivityImage], [ActivityBookStartTime], [ActivityBookEndTime], [ActivityAge], [ActivitySalePrice], [ActivityOriginalPrice], [ActivityDescription], [fk_ActivityStatusId]) VALUES (3, N'2023太平山自行車挑戰賽', 3, CAST(N'2023-07-30T08:00:00.000' AS DateTime), 4, N'宜蘭太平山國家森林遊樂區', N'D:\期中專題 Flex\FLEX活動照片\活動照片\2023太平山自行車挑戰賽.jpg', CAST(N'2023-04-30T10:00:00.000' AS DateTime), CAST(N'2023-06-30T23:59:59.000' AS DateTime), 16, 850, 1000, N'一起騎著自行車遊覽台灣的美景吧！', 3)
GO
INSERT [dbo].[Activities] ([ActivityId], [ActivityName], [fk_ActivityCategoryId], [ActivityDate], [fk_SpeakerId], [ActivityPlace], [ActivityImage], [ActivityBookStartTime], [ActivityBookEndTime], [ActivityAge], [ActivitySalePrice], [ActivityOriginalPrice], [ActivityDescription], [fk_ActivityStatusId]) VALUES (4, N'2023登峰造極之嘉明湖登山體驗', 5, CAST(N'2023-08-19T06:30:00.000' AS DateTime), 7, N'台東向陽森林遊樂區登山口', N'D:\期中專題 Flex\FLEX活動照片\活動照片\2023登峰造極之嘉明湖登山體驗.jpg', CAST(N'2023-05-19T00:00:00.000' AS DateTime), CAST(N'2023-07-19T23:59:59.000' AS DateTime), 18, 3300, 3500, N'一睹「?高山藍寶石」、「天使的眼淚」嘉明湖', 2)
GO
INSERT [dbo].[Activities] ([ActivityId], [ActivityName], [fk_ActivityCategoryId], [ActivityDate], [fk_SpeakerId], [ActivityPlace], [ActivityImage], [ActivityBookStartTime], [ActivityBookEndTime], [ActivityAge], [ActivitySalePrice], [ActivityOriginalPrice], [ActivityDescription], [fk_ActivityStatusId]) VALUES (5, N'2023第6屆桃園健行嘉年華', 4, CAST(N'2023-12-10T10:00:00.000' AS DateTime), 9, N'聖德基督教學院', N'D:\期中專題 Flex\FLEX活動照片\活動照片\2023第6屆桃園健行嘉年華.png', CAST(N'2023-08-10T00:00:00.000' AS DateTime), CAST(N'2023-10-10T00:00:00.000' AS DateTime), 7, 699, 799, N'加入我們，一同參加2023第6屆桃園健行嘉年華！這是一個充滿活力和健康的盛會，旨在鼓勵人們關注身心健康，享受戶外運動的樂趣。在這次活動中，您將有機會體驗桃園美麗的自然風光和豐富的運動活動。', 1)
GO
INSERT [dbo].[Activities] ([ActivityId], [ActivityName], [fk_ActivityCategoryId], [ActivityDate], [fk_SpeakerId], [ActivityPlace], [ActivityImage], [ActivityBookStartTime], [ActivityBookEndTime], [ActivityAge], [ActivitySalePrice], [ActivityOriginalPrice], [ActivityDescription], [fk_ActivityStatusId]) VALUES (6, N'2023Flex第3屆公益路跑活動', 1, CAST(N'2023-09-28T07:00:00.000' AS DateTime), 6, N'台北大稻埕碼頭', N'51b361a98e2e427eafbf8b055d16c6ab.png', CAST(N'2023-07-28T00:00:00.000' AS DateTime), CAST(N'2023-09-01T00:00:00.000' AS DateTime), 10, 500, 600, N'秋天的季節，一起來路跑感受一下碼頭邊的美景，還可以一起參與公益活動喔!!!', 1)
GO
INSERT [dbo].[Activities] ([ActivityId], [ActivityName], [fk_ActivityCategoryId], [ActivityDate], [fk_SpeakerId], [ActivityPlace], [ActivityImage], [ActivityBookStartTime], [ActivityBookEndTime], [ActivityAge], [ActivitySalePrice], [ActivityOriginalPrice], [ActivityDescription], [fk_ActivityStatusId]) VALUES (7, N'2023Flex第2屆公益路跑活動', 1, CAST(N'2023-07-07T08:00:00.000' AS DateTime), 4, N'新竹南寮漁港', N'de2bb592a3554e10a43a3282e962a2c8.jpg', CAST(N'2023-05-07T00:00:00.000' AS DateTime), CAST(N'2023-06-30T00:00:00.000' AS DateTime), 10, 600, 700, N'一起來參加我們的夏季路跑吧!!', 3)
GO
INSERT [dbo].[Activities] ([ActivityId], [ActivityName], [fk_ActivityCategoryId], [ActivityDate], [fk_SpeakerId], [ActivityPlace], [ActivityImage], [ActivityBookStartTime], [ActivityBookEndTime], [ActivityAge], [ActivitySalePrice], [ActivityOriginalPrice], [ActivityDescription], [fk_ActivityStatusId]) VALUES (8, N'2023Flex第1屆公益路跑活動', 1, CAST(N'2023-03-17T08:00:00.000' AS DateTime), 7, N'聖德基督學院', N'702da3f2703e4f88995d3898069b7dc9.jpg', CAST(N'2023-01-01T00:00:00.000' AS DateTime), CAST(N'2023-03-01T00:00:00.000' AS DateTime), 10, 500, 600, N'在冷冷的冬天，一起來路跑熱身，並寒冬送暖給公益團體吧!!', 3)
GO
INSERT [dbo].[Activities] ([ActivityId], [ActivityName], [fk_ActivityCategoryId], [ActivityDate], [fk_SpeakerId], [ActivityPlace], [ActivityImage], [ActivityBookStartTime], [ActivityBookEndTime], [ActivityAge], [ActivitySalePrice], [ActivityOriginalPrice], [ActivityDescription], [fk_ActivityStatusId]) VALUES (9, N'2023太平山秋季自行車挑戰賽', 3, CAST(N'2023-10-01T08:00:00.000' AS DateTime), 8, N'太平山', N'8d3af39a91854ec190537ffa32ae4629.jpg', CAST(N'2023-07-15T00:00:00.000' AS DateTime), CAST(N'2023-09-15T00:00:00.000' AS DateTime), 15, 999, 1100, N'一起來參加我們秋季的太平山自行車挑戰吧!!!', 1)
GO
INSERT [dbo].[Activities] ([ActivityId], [ActivityName], [fk_ActivityCategoryId], [ActivityDate], [fk_SpeakerId], [ActivityPlace], [ActivityImage], [ActivityBookStartTime], [ActivityBookEndTime], [ActivityAge], [ActivitySalePrice], [ActivityOriginalPrice], [ActivityDescription], [fk_ActivityStatusId]) VALUES (10, N'2023太平山冬季自行車挑戰賽', 3, CAST(N'2023-11-27T08:00:00.000' AS DateTime), 9, N'太平山', N'1e6b49bc26e24e95a334b613a93e2e57.jpg', CAST(N'2023-09-27T00:00:00.000' AS DateTime), CAST(N'2023-11-07T00:00:00.000' AS DateTime), 15, 700, 800, N'冬天就是要和大家一起騎車，熱身熱起來~~', 1)
GO
INSERT [dbo].[Activities] ([ActivityId], [ActivityName], [fk_ActivityCategoryId], [ActivityDate], [fk_SpeakerId], [ActivityPlace], [ActivityImage], [ActivityBookStartTime], [ActivityBookEndTime], [ActivityAge], [ActivitySalePrice], [ActivityOriginalPrice], [ActivityDescription], [fk_ActivityStatusId]) VALUES (11, N'2023太平山夏季自行車挑戰賽', 3, CAST(N'2023-06-20T08:00:00.000' AS DateTime), 3, N'太平山', N'07387b7355f844f8a94218c15f8aab28.jpg', CAST(N'2023-04-20T00:00:00.000' AS DateTime), CAST(N'2023-06-10T00:00:00.000' AS DateTime), 15, 700, 800, N'一起來趟太平山的自行車挑戰之旅吧!', 3)
GO
INSERT [dbo].[Activities] ([ActivityId], [ActivityName], [fk_ActivityCategoryId], [ActivityDate], [fk_SpeakerId], [ActivityPlace], [ActivityImage], [ActivityBookStartTime], [ActivityBookEndTime], [ActivityAge], [ActivitySalePrice], [ActivityOriginalPrice], [ActivityDescription], [fk_ActivityStatusId]) VALUES (12, N'2023第3屆桃園健行嘉年華', 4, CAST(N'2023-03-19T10:00:00.000' AS DateTime), 5, N'聖德基督學院', N'1616b89584f9465f8e085e653f3cf2c9.png', CAST(N'2023-01-19T00:00:00.000' AS DateTime), CAST(N'2023-03-10T00:00:00.000' AS DateTime), 7, 500, 600, N'2023年第3屆桃園健行嘉年華隆重登場！旨在促進健康生活和運動文化。我們誠摯邀請您加入我們，一同享受運動的樂趣和社交互動的機會。這個活動將在桃園市舉行，屆時將有各種令人興奮的活動和娛樂節目等待著您。', 3)
GO
INSERT [dbo].[Activities] ([ActivityId], [ActivityName], [fk_ActivityCategoryId], [ActivityDate], [fk_SpeakerId], [ActivityPlace], [ActivityImage], [ActivityBookStartTime], [ActivityBookEndTime], [ActivityAge], [ActivitySalePrice], [ActivityOriginalPrice], [ActivityDescription], [fk_ActivityStatusId]) VALUES (13, N'2023第4屆桃園健行嘉年華', 4, CAST(N'2023-04-23T07:00:00.000' AS DateTime), 7, N'聖德基督學院', N'34bd7c8fcfbb4249bb297310762bfe6f.png', CAST(N'2023-02-23T00:00:00.000' AS DateTime), CAST(N'2023-04-13T00:00:00.000' AS DateTime), 7, 399, 500, N'2023年第3屆桃園健行嘉年華即將震撼登場！這是一個非常特別的活動!無論您是運動愛好者、家庭或朋友團體，我們都歡迎您加入我們，一同享受健康運動的樂趣。這個嘉年華將提供各種精彩的活動和表演，讓您度過難忘的時光。', 3)
GO
INSERT [dbo].[Activities] ([ActivityId], [ActivityName], [fk_ActivityCategoryId], [ActivityDate], [fk_SpeakerId], [ActivityPlace], [ActivityImage], [ActivityBookStartTime], [ActivityBookEndTime], [ActivityAge], [ActivitySalePrice], [ActivityOriginalPrice], [ActivityDescription], [fk_ActivityStatusId]) VALUES (14, N'2023第7屆桃園健行嘉年華', 4, CAST(N'2023-12-30T11:00:00.000' AS DateTime), 2, N'聖德基督學院', N'ac51784414c6488fbcac01003caaac81.png', CAST(N'2023-10-30T00:00:00.000' AS DateTime), CAST(N'2023-12-10T00:00:00.000' AS DateTime), 10, 500, 600, N'第7屆桃園健行嘉年華即將開幕，為您帶來一場前所未有的健康饗宴！這是一個集合了各種健身運動、休閒娛樂和文化表演的盛大活動。我們邀請您和您的親朋好友一同參與，一起享受動感十足的氛圍和豐富多彩的活動內容。這將是一個讓您身心愉悅的五天，不容錯過！', 1)
GO
INSERT [dbo].[Activities] ([ActivityId], [ActivityName], [fk_ActivityCategoryId], [ActivityDate], [fk_SpeakerId], [ActivityPlace], [ActivityImage], [ActivityBookStartTime], [ActivityBookEndTime], [ActivityAge], [ActivitySalePrice], [ActivityOriginalPrice], [ActivityDescription], [fk_ActivityStatusId]) VALUES (15, N'2023第5屆桃園健行嘉年華', 4, CAST(N'2023-05-27T10:00:00.000' AS DateTime), 1, N'聖德基督學院', N'85549ba52279478b81e71e66aa2e0ce3.png', CAST(N'2023-03-27T00:00:00.000' AS DateTime), CAST(N'2023-05-20T00:00:00.000' AS DateTime), 10, 399, 500, N'2023年第5屆桃園健行嘉年華即將開幕！這是一個讓您盡情揮灑汗水的活動，旨在鼓勵大眾遵循健康生活方式並享受運動的樂趣。我們誠摯邀請您和您的家人一同參與，感受健康生活的魅力。活動期間將有許多有趣的活動和遊戲等待著您，無論您是健身愛好者還是新手，都能找到適合自己的活動。', 3)
GO
INSERT [dbo].[Activities] ([ActivityId], [ActivityName], [fk_ActivityCategoryId], [ActivityDate], [fk_SpeakerId], [ActivityPlace], [ActivityImage], [ActivityBookStartTime], [ActivityBookEndTime], [ActivityAge], [ActivitySalePrice], [ActivityOriginalPrice], [ActivityDescription], [fk_ActivityStatusId]) VALUES (16, N'2023一日單攻玉山挑戰', 5, CAST(N'2023-10-15T03:00:00.000' AS DateTime), 6, N'玉山登山口', N'b44059ab21584d1e88ca49261687aebe.jpg', CAST(N'2023-08-15T00:00:00.000' AS DateTime), CAST(N'2023-10-01T00:00:00.000' AS DateTime), 18, 1300, 1500, N'在2023年，我們誠摯邀請您參加一個令人振奮的活動 - 一日單攻玉山挑戰活動！這將是一個難得的機會，讓您有機會攀登台灣最高峰 - 玉山。這個活動將提供您一個刺激和令人難忘的登山經驗，讓您挑戰自我，突破極限。', 1)
GO
SET IDENTITY_INSERT [dbo].[Activities] OFF
GO
INSERT [dbo].[ReservationStatuses] ([ReservationId], [ReservationStatusDescription]) VALUES (1, N'已完成')
GO
INSERT [dbo].[ReservationStatuses] ([ReservationId], [ReservationStatusDescription]) VALUES (0, N'未完成')
GO
SET IDENTITY_INSERT [dbo].[OneToOneReservations] ON 
GO
INSERT [dbo].[OneToOneReservations] ([ReservationId], [fk_BookerId], [ReservationStartTime], [ReservationEndTime], [fk_BranchId], [fk_ReservationSpeakerId], [fk_ReservationStatusId], [ReservationCreatedDate]) VALUES (1, 1, CAST(N'2023-06-21T09:00:00.000' AS DateTime), CAST(N'2023-06-21T11:00:00.000' AS DateTime), 1, 1, 0, CAST(N'2023-07-08T14:22:22.490' AS DateTime))
GO
INSERT [dbo].[OneToOneReservations] ([ReservationId], [fk_BookerId], [ReservationStartTime], [ReservationEndTime], [fk_BranchId], [fk_ReservationSpeakerId], [fk_ReservationStatusId], [ReservationCreatedDate]) VALUES (2, 2, CAST(N'2023-06-22T14:00:00.000' AS DateTime), CAST(N'2023-06-22T16:00:00.000' AS DateTime), 3, 3, 1, CAST(N'2023-07-08T14:22:22.490' AS DateTime))
GO
INSERT [dbo].[OneToOneReservations] ([ReservationId], [fk_BookerId], [ReservationStartTime], [ReservationEndTime], [fk_BranchId], [fk_ReservationSpeakerId], [fk_ReservationStatusId], [ReservationCreatedDate]) VALUES (3, 3, CAST(N'2023-06-23T11:00:00.000' AS DateTime), CAST(N'2023-06-23T13:00:00.000' AS DateTime), 2, 2, 1, CAST(N'2023-07-08T14:22:22.490' AS DateTime))
GO
INSERT [dbo].[OneToOneReservations] ([ReservationId], [fk_BookerId], [ReservationStartTime], [ReservationEndTime], [fk_BranchId], [fk_ReservationSpeakerId], [fk_ReservationStatusId], [ReservationCreatedDate]) VALUES (4, 4, CAST(N'2023-06-24T16:00:00.000' AS DateTime), CAST(N'2023-06-24T18:00:00.000' AS DateTime), 5, 5, 0, CAST(N'2023-07-08T14:22:22.490' AS DateTime))
GO
INSERT [dbo].[OneToOneReservations] ([ReservationId], [fk_BookerId], [ReservationStartTime], [ReservationEndTime], [fk_BranchId], [fk_ReservationSpeakerId], [fk_ReservationStatusId], [ReservationCreatedDate]) VALUES (5, 5, CAST(N'2023-06-25T13:00:00.000' AS DateTime), CAST(N'2023-06-25T14:00:00.000' AS DateTime), 4, 4, 0, CAST(N'2023-07-08T14:22:22.490' AS DateTime))
GO
INSERT [dbo].[OneToOneReservations] ([ReservationId], [fk_BookerId], [ReservationStartTime], [ReservationEndTime], [fk_BranchId], [fk_ReservationSpeakerId], [fk_ReservationStatusId], [ReservationCreatedDate]) VALUES (6, 3, CAST(N'2023-06-26T10:00:00.000' AS DateTime), CAST(N'2023-06-26T12:00:00.000' AS DateTime), 1, 6, 1, CAST(N'2023-07-08T14:22:22.490' AS DateTime))
GO
INSERT [dbo].[OneToOneReservations] ([ReservationId], [fk_BookerId], [ReservationStartTime], [ReservationEndTime], [fk_BranchId], [fk_ReservationSpeakerId], [fk_ReservationStatusId], [ReservationCreatedDate]) VALUES (7, 2, CAST(N'2023-06-27T15:00:00.000' AS DateTime), CAST(N'2023-06-27T17:00:00.000' AS DateTime), 1, 1, 0, CAST(N'2023-07-08T14:22:22.490' AS DateTime))
GO
INSERT [dbo].[OneToOneReservations] ([ReservationId], [fk_BookerId], [ReservationStartTime], [ReservationEndTime], [fk_BranchId], [fk_ReservationSpeakerId], [fk_ReservationStatusId], [ReservationCreatedDate]) VALUES (8, 1, CAST(N'2023-06-28T13:00:00.000' AS DateTime), CAST(N'2023-06-28T15:00:00.000' AS DateTime), 3, 3, 1, CAST(N'2023-07-08T14:22:22.490' AS DateTime))
GO
INSERT [dbo].[OneToOneReservations] ([ReservationId], [fk_BookerId], [ReservationStartTime], [ReservationEndTime], [fk_BranchId], [fk_ReservationSpeakerId], [fk_ReservationStatusId], [ReservationCreatedDate]) VALUES (9, 5, CAST(N'2023-06-29T12:00:00.000' AS DateTime), CAST(N'2023-06-29T14:00:00.000' AS DateTime), 2, 2, 1, CAST(N'2023-07-08T14:22:22.490' AS DateTime))
GO
INSERT [dbo].[OneToOneReservations] ([ReservationId], [fk_BookerId], [ReservationStartTime], [ReservationEndTime], [fk_BranchId], [fk_ReservationSpeakerId], [fk_ReservationStatusId], [ReservationCreatedDate]) VALUES (10, 4, CAST(N'2023-06-30T17:00:00.000' AS DateTime), CAST(N'2023-06-30T19:00:00.000' AS DateTime), 2, 7, 0, CAST(N'2023-07-08T14:22:22.490' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[OneToOneReservations] OFF
GO








--組長****************************************************************************--


INSERT [dbo].[CouponCategories] ([CouponCategoryId], [CouponCategoryName]) VALUES (1, N'優惠券')
INSERT [dbo].[CouponCategories] ([CouponCategoryId], [CouponCategoryName]) VALUES (2, N'註冊券')
INSERT [dbo].[CouponCategories] ([CouponCategoryId], [CouponCategoryName]) VALUES (3, N'生日券')
INSERT [dbo].[CouponCategories] ([CouponCategoryId], [CouponCategoryName]) VALUES (4, N'購物獎勵券')
INSERT [dbo].[CouponCategories] ([CouponCategoryId], [CouponCategoryName]) VALUES (5, N'會員等級券')
GO
SET IDENTITY_INSERT [dbo].[ProjectTags] ON 

INSERT [dbo].[ProjectTags] ([ProjectTagId], [ProjectTagName], [CreateAt], [ModifiedAt], [Status]) VALUES (1, N'2022夏季特賣', CAST(N'2023-07-07T19:28:10.370' AS DateTime), CAST(N'2023-07-07T19:41:45.750' AS DateTime), 0)
INSERT [dbo].[ProjectTags] ([ProjectTagId], [ProjectTagName], [CreateAt], [ModifiedAt], [Status]) VALUES (2, N'2022冬季特賣', CAST(N'2023-07-07T19:28:22.450' AS DateTime), CAST(N'2023-07-07T19:40:45.103' AS DateTime), 0)
INSERT [dbo].[ProjectTags] ([ProjectTagId], [ProjectTagName], [CreateAt], [ModifiedAt], [Status]) VALUES (3, N'2022母親節特惠', CAST(N'2023-07-07T19:28:30.323' AS DateTime), CAST(N'2023-07-07T19:40:45.103' AS DateTime), 0)
INSERT [dbo].[ProjectTags] ([ProjectTagId], [ProjectTagName], [CreateAt], [ModifiedAt], [Status]) VALUES (4, N'2022 618月中特賣', CAST(N'2023-07-07T19:28:44.657' AS DateTime), CAST(N'2023-07-07T19:40:45.103' AS DateTime), 0)
INSERT [dbo].[ProjectTags] ([ProjectTagId], [ProjectTagName], [CreateAt], [ModifiedAt], [Status]) VALUES (5, N'2022開學特前特賣', CAST(N'2023-07-07T19:29:07.153' AS DateTime), CAST(N'2023-07-07T19:40:45.103' AS DateTime), 0)
INSERT [dbo].[ProjectTags] ([ProjectTagId], [ProjectTagName], [CreateAt], [ModifiedAt], [Status]) VALUES (6, N'2022春換季特賣', CAST(N'2023-07-07T19:29:47.880' AS DateTime), CAST(N'2023-07-07T19:40:33.250' AS DateTime), 0)
INSERT [dbo].[ProjectTags] ([ProjectTagId], [ProjectTagName], [CreateAt], [ModifiedAt], [Status]) VALUES (7, N'2022年終特賣', CAST(N'2023-07-07T19:29:54.377' AS DateTime), CAST(N'2023-07-07T19:40:33.250' AS DateTime), 0)
INSERT [dbo].[ProjectTags] ([ProjectTagId], [ProjectTagName], [CreateAt], [ModifiedAt], [Status]) VALUES (8, N'2022會員積分兩倍專案', CAST(N'2023-07-07T19:30:40.290' AS DateTime), CAST(N'2023-07-07T19:40:33.250' AS DateTime), 0)
INSERT [dbo].[ProjectTags] ([ProjectTagId], [ProjectTagName], [CreateAt], [ModifiedAt], [Status]) VALUES (9, N'2022聖誕特賣', CAST(N'2023-07-07T19:30:51.043' AS DateTime), CAST(N'2023-07-07T19:40:33.247' AS DateTime), 0)
INSERT [dbo].[ProjectTags] ([ProjectTagId], [ProjectTagName], [CreateAt], [ModifiedAt], [Status]) VALUES (10, N'2023新年特賣', CAST(N'2023-07-07T19:31:25.553' AS DateTime), CAST(N'2023-07-07T19:37:32.710' AS DateTime), 1)
INSERT [dbo].[ProjectTags] ([ProjectTagId], [ProjectTagName], [CreateAt], [ModifiedAt], [Status]) VALUES (11, N'2023母親節特賣', CAST(N'2023-07-07T19:32:00.740' AS DateTime), CAST(N'2023-07-07T19:37:32.710' AS DateTime), 1)
INSERT [dbo].[ProjectTags] ([ProjectTagId], [ProjectTagName], [CreateAt], [ModifiedAt], [Status]) VALUES (12, N'2023暑期特賣', CAST(N'2023-07-07T19:32:13.583' AS DateTime), CAST(N'2023-07-07T19:37:32.710' AS DateTime), 1)
INSERT [dbo].[ProjectTags] ([ProjectTagId], [ProjectTagName], [CreateAt], [ModifiedAt], [Status]) VALUES (13, N'2023 7月月中特賣', CAST(N'2023-07-07T19:32:30.153' AS DateTime), CAST(N'2023-07-07T19:37:32.710' AS DateTime), 1)
INSERT [dbo].[ProjectTags] ([ProjectTagId], [ProjectTagName], [CreateAt], [ModifiedAt], [Status]) VALUES (14, N'2023夏日涼涼特賣', CAST(N'2023-07-07T19:32:56.827' AS DateTime), CAST(N'2023-07-07T19:37:32.710' AS DateTime), 1)
INSERT [dbo].[ProjectTags] ([ProjectTagId], [ProjectTagName], [CreateAt], [ModifiedAt], [Status]) VALUES (15, N'2023夏秋短褲特賣', CAST(N'2023-07-07T19:33:22.217' AS DateTime), CAST(N'2023-07-07T19:37:32.710' AS DateTime), 1)
INSERT [dbo].[ProjectTags] ([ProjectTagId], [ProjectTagName], [CreateAt], [ModifiedAt], [Status]) VALUES (16, N'9折專區', CAST(N'2023-07-07T21:02:04.070' AS DateTime), CAST(N'2023-07-07T21:02:04.070' AS DateTime), 1)
INSERT [dbo].[ProjectTags] ([ProjectTagId], [ProjectTagName], [CreateAt], [ModifiedAt], [Status]) VALUES (17, N'2件專區', CAST(N'2023-07-07T21:02:31.470' AS DateTime), CAST(N'2023-07-07T21:02:31.470' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[ProjectTags] OFF
GO
SET IDENTITY_INSERT [dbo].[Coupons] ON 

INSERT [dbo].[Coupons] ([CouponId], [fk_CouponCategoryId], [CouponName], [CouponCode], [MinimumPurchaseAmount], [DiscountType], [DiscountValue], [StartDate], [EndType], [EndDays], [EndDate], [PersonMaxUsage], [RequirementType], [Requirement], [fk_RequiredProjectTagID]) VALUES (1, 2, N'註冊禮券', NULL, 500, 0, 50, CAST(N'2022-01-01T00:00:00.000' AS DateTime), 1, 30, NULL, 1, 0, NULL, NULL)
INSERT [dbo].[Coupons] ([CouponId], [fk_CouponCategoryId], [CouponName], [CouponCode], [MinimumPurchaseAmount], [DiscountType], [DiscountValue], [StartDate], [EndType], [EndDays], [EndDate], [PersonMaxUsage], [RequirementType], [Requirement], [fk_RequiredProjectTagID]) VALUES (2, 3, N'生日禮券', NULL, 200, 1, 15, CAST(N'2022-02-01T00:00:00.000' AS DateTime), 1, 30, NULL, 2, 0, NULL, NULL)
INSERT [dbo].[Coupons] ([CouponId], [fk_CouponCategoryId], [CouponName], [CouponCode], [MinimumPurchaseAmount], [DiscountType], [DiscountValue], [StartDate], [EndType], [EndDays], [EndDate], [PersonMaxUsage], [RequirementType], [Requirement], [fk_RequiredProjectTagID]) VALUES (3, 1, N'618活動券', NULL, 150, 1, 10, CAST(N'2023-06-18T00:00:00.000' AS DateTime), 0, NULL, CAST(N'2023-06-30T00:00:00.000' AS DateTime), 1, 0, NULL, NULL)
INSERT [dbo].[Coupons] ([CouponId], [fk_CouponCategoryId], [CouponName], [CouponCode], [MinimumPurchaseAmount], [DiscountType], [DiscountValue], [StartDate], [EndType], [EndDays], [EndDate], [PersonMaxUsage], [RequirementType], [Requirement], [fk_RequiredProjectTagID]) VALUES (4, 1, N'周年慶', NULL, 250, 0, 20, CAST(N'2022-04-01T00:00:00.000' AS DateTime), 0, 15, CAST(N'2023-04-30T00:00:00.000' AS DateTime), 1, 0, NULL, NULL)
INSERT [dbo].[Coupons] ([CouponId], [fk_CouponCategoryId], [CouponName], [CouponCode], [MinimumPurchaseAmount], [DiscountType], [DiscountValue], [StartDate], [EndType], [EndDays], [EndDate], [PersonMaxUsage], [RequirementType], [Requirement], [fk_RequiredProjectTagID]) VALUES (5, 1, N'情人節禮券', NULL, 300, 0, 20, CAST(N'2022-02-07T00:00:00.000' AS DateTime), 0, NULL, CAST(N'2023-02-17T00:00:00.000' AS DateTime), 2, 0, NULL, NULL)
INSERT [dbo].[Coupons] ([CouponId], [fk_CouponCategoryId], [CouponName], [CouponCode], [MinimumPurchaseAmount], [DiscountType], [DiscountValue], [StartDate], [EndType], [EndDays], [EndDate], [PersonMaxUsage], [RequirementType], [Requirement], [fk_RequiredProjectTagID]) VALUES (6, 1, N'月中免運券', NULL, 180, 2, 0, CAST(N'2023-06-15T00:00:00.000' AS DateTime), 0, NULL, CAST(N'2023-06-15T00:00:00.000' AS DateTime), 5, 1, 5, NULL)
INSERT [dbo].[Coupons] ([CouponId], [fk_CouponCategoryId], [CouponName], [CouponCode], [MinimumPurchaseAmount], [DiscountType], [DiscountValue], [StartDate], [EndType], [EndDays], [EndDate], [PersonMaxUsage], [RequirementType], [Requirement], [fk_RequiredProjectTagID]) VALUES (7, 4, N'好禮贈', NULL, 500, 1, 20, CAST(N'2023-07-01T00:00:00.000' AS DateTime), 0, NULL, NULL, 3, 0, 1000, 13)
INSERT [dbo].[Coupons] ([CouponId], [fk_CouponCategoryId], [CouponName], [CouponCode], [MinimumPurchaseAmount], [DiscountType], [DiscountValue], [StartDate], [EndType], [EndDays], [EndDate], [PersonMaxUsage], [RequirementType], [Requirement], [fk_RequiredProjectTagID]) VALUES (8, 1, N'暑假大FUN送', NULL, 280, 0, 90, CAST(N'2023-08-01T00:00:00.000' AS DateTime), 0, NULL, CAST(N'2023-08-15T00:00:00.000' AS DateTime), 2, 0, NULL, NULL)
INSERT [dbo].[Coupons] ([CouponId], [fk_CouponCategoryId], [CouponName], [CouponCode], [MinimumPurchaseAmount], [DiscountType], [DiscountValue], [StartDate], [EndType], [EndDays], [EndDate], [PersonMaxUsage], [RequirementType], [Requirement], [fk_RequiredProjectTagID]) VALUES (9, 1, N'Criteria聯名券', NULL, 190, 0, 80, CAST(N'2023-09-01T00:00:00.000' AS DateTime), 0, NULL, CAST(N'2023-09-30T00:00:00.000' AS DateTime), 1, 0, NULL, NULL)
INSERT [dbo].[Coupons] ([CouponId], [fk_CouponCategoryId], [CouponName], [CouponCode], [MinimumPurchaseAmount], [DiscountType], [DiscountValue], [StartDate], [EndType], [EndDays], [EndDate], [PersonMaxUsage], [RequirementType], [Requirement], [fk_RequiredProjectTagID]) VALUES (10, 1, N'月中免運券', NULL, 350, 1, 20, CAST(N'2023-10-15T00:00:00.000' AS DateTime), 0, NULL, CAST(N'2023-10-15T00:00:00.000' AS DateTime), 2, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Coupons] OFF
GO
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (1, N'C_PA_LG_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (1, N'C_PA_LG_0002')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (2, N'C_CL_LG_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (2, N'C_CL_LG_0002')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (2, N'C_PA_LG_0002')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (3, N'F_CL_LG_0002')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (4, N'C_PA_ST_0002')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (5, N'C_PA_LG_0002')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (5, N'C_PA_ST_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (6, N'C_PA_LG_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (7, N'C_SH_SP_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (8, N'C_PA_LG_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (8, N'C_SH_CL_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (8, N'C_SH_SP_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (9, N'C_CL_LG_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (10, N'C_CL_LG_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (10, N'C_CL_LG_0002')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (10, N'C_CL_ST_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (10, N'C_CL_ST_0002')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (10, N'C_PA_LG_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (10, N'C_PA_LG_0002')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (10, N'C_PA_ST_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (10, N'C_PA_ST_0002')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (10, N'C_SH_CL_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (10, N'C_SH_SP_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (11, N'F_CL_LG_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (11, N'F_CL_LG_0002')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (11, N'F_CL_ST_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (11, N'F_CL_ST_0002')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (11, N'F_PA_LG_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (11, N'F_PA_LG_0002')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (11, N'F_PA_ST_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (11, N'F_PA_ST_0002')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (11, N'F_SH_CL_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (11, N'F_SH_CL_0002')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (11, N'F_SH_SP_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (11, N'F_SH_SP_0002')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (12, N'C_CL_LG_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (12, N'C_CL_LG_0002')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (12, N'C_CL_ST_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (12, N'C_CL_ST_0002')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (12, N'F_CL_LG_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (12, N'F_CL_LG_0002')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (12, N'F_CL_ST_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (12, N'F_CL_ST_0002')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (12, N'M_CL_LG_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (12, N'M_CL_ST_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (12, N'M_CL_ST_0002')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (13, N'C_SH_CL_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (13, N'C_SH_SP_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (13, N'F_SH_CL_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (13, N'F_SH_CL_0002')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (13, N'F_SH_SP_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (13, N'F_SH_SP_0002')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (13, N'M_SH_CL_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (13, N'M_SH_CL_0002')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (13, N'M_SH_SP_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (13, N'M_SH_SP_0002')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (14, N'C_CL_ST_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (14, N'C_CL_ST_0002')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (14, N'F_CL_ST_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (14, N'F_CL_ST_0002')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (14, N'M_CL_ST_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (14, N'M_CL_ST_0002')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (15, N'C_PA_ST_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (15, N'C_PA_ST_0002')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (15, N'F_PA_ST_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (15, N'F_PA_ST_0002')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (15, N'M_PA_ST_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (15, N'M_PA_ST_0002')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (16, N'C_CL_LG_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (16, N'C_CL_LG_0002')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (16, N'C_CL_ST_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (16, N'C_CL_ST_0002')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (16, N'M_SH_SP_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (17, N'F_CL_LG_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (17, N'F_PA_LG_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (17, N'F_PA_LG_0002')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (17, N'F_PA_ST_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (17, N'F_PA_ST_0002')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (17, N'F_SH_CL_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (17, N'F_SH_CL_0002')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (17, N'F_SH_SP_0001')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (17, N'F_SH_SP_0002')
INSERT [dbo].[ProjectTagItems] ([fk_ProjectTagId], [fk_ProductId]) VALUES (17, N'M_CL_ST_0002')
GO
SET IDENTITY_INSERT [dbo].[Discounts] ON 

INSERT [dbo].[Discounts] ([DiscountId], [DiscountName], [DiscountDescription], [fk_ProjectTagId], [DiscountType], [DiscountValue], [ConditionType], [ConditionValue], [StartDate], [EndDate], [OrderBy]) VALUES (1, N'2022新年優惠', N'新年優惠', NULL, 0, 5, 0, 100, CAST(N'2022-01-01T00:00:00.000' AS DateTime), CAST(N'2022-01-10T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Discounts] ([DiscountId], [DiscountName], [DiscountDescription], [fk_ProjectTagId], [DiscountType], [DiscountValue], [ConditionType], [ConditionValue], [StartDate], [EndDate], [OrderBy]) VALUES (2, N'2022農曆春節特惠', N'春節特惠', NULL, 1, 15, 1, 3, CAST(N'2022-02-15T00:00:00.000' AS DateTime), CAST(N'2022-03-15T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Discounts] ([DiscountId], [DiscountName], [DiscountDescription], [fk_ProjectTagId], [DiscountType], [DiscountValue], [ConditionType], [ConditionValue], [StartDate], [EndDate], [OrderBy]) VALUES (3, N'2022春季換季', N'春節換季', NULL, 0, 2, 1, 1, CAST(N'2022-04-01T00:00:00.000' AS DateTime), CAST(N'2022-05-31T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Discounts] ([DiscountId], [DiscountName], [DiscountDescription], [fk_ProjectTagId], [DiscountType], [DiscountValue], [ConditionType], [ConditionValue], [StartDate], [EndDate], [OrderBy]) VALUES (4, N'2022暑假特惠', N'暑期特惠', NULL, 1, 30, 0, 100, CAST(N'2022-06-01T00:00:00.000' AS DateTime), CAST(N'2022-07-31T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Discounts] ([DiscountId], [DiscountName], [DiscountDescription], [fk_ProjectTagId], [DiscountType], [DiscountValue], [ConditionType], [ConditionValue], [StartDate], [EndDate], [OrderBy]) VALUES (5, N'2022開學特惠', N'開學特會', NULL, 1, 18, 0, 70, CAST(N'2022-08-01T00:00:00.000' AS DateTime), CAST(N'2022-09-30T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Discounts] ([DiscountId], [DiscountName], [DiscountDescription], [fk_ProjectTagId], [DiscountType], [DiscountValue], [ConditionType], [ConditionValue], [StartDate], [EndDate], [OrderBy]) VALUES (6, N'2022秋冬大特賣', N'秋冬大特賣', NULL, 1, 25, 1, 4, CAST(N'2022-10-01T00:00:00.000' AS DateTime), CAST(N'2022-12-31T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Discounts] ([DiscountId], [DiscountName], [DiscountDescription], [fk_ProjectTagId], [DiscountType], [DiscountValue], [ConditionType], [ConditionValue], [StartDate], [EndDate], [OrderBy]) VALUES (7, N'2023新年優惠', N'新年優惠', NULL, 1, 20, 0, 50, CAST(N'2023-01-01T00:00:00.000' AS DateTime), CAST(N'2023-01-30T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Discounts] ([DiscountId], [DiscountName], [DiscountDescription], [fk_ProjectTagId], [DiscountType], [DiscountValue], [ConditionType], [ConditionValue], [StartDate], [EndDate], [OrderBy]) VALUES (8, N'2023春節特惠', N'農曆春節拍賣', NULL, 0, 10, 0, 30, CAST(N'2023-02-01T00:00:00.000' AS DateTime), CAST(N'2023-02-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Discounts] ([DiscountId], [DiscountName], [DiscountDescription], [fk_ProjectTagId], [DiscountType], [DiscountValue], [ConditionType], [ConditionValue], [StartDate], [EndDate], [OrderBy]) VALUES (9, N'9折專區', N'9折專區', 16, 1, 90, 1, 1, CAST(N'2023-03-01T00:00:00.000' AS DateTime), NULL, 500)
INSERT [dbo].[Discounts] ([DiscountId], [DiscountName], [DiscountDescription], [fk_ProjectTagId], [DiscountType], [DiscountValue], [ConditionType], [ConditionValue], [StartDate], [EndDate], [OrderBy]) VALUES (10, N'2件8折', N'2件8折', 17, 0, 8, 1, 2, CAST(N'2023-04-10T00:00:00.000' AS DateTime), NULL, 400)
INSERT [dbo].[Discounts] ([DiscountId], [DiscountName], [DiscountDescription], [fk_ProjectTagId], [DiscountType], [DiscountValue], [ConditionType], [ConditionValue], [StartDate], [EndDate], [OrderBy]) VALUES (11, N'2023春夏換季特惠', N'換季特惠', NULL, 0, 4, 0, 40, CAST(N'2023-05-01T00:00:00.000' AS DateTime), CAST(N'2023-05-30T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Discounts] ([DiscountId], [DiscountName], [DiscountDescription], [fk_ProjectTagId], [DiscountType], [DiscountValue], [ConditionType], [ConditionValue], [StartDate], [EndDate], [OrderBy]) VALUES (12, N'2023暑期特惠', N'暑期特惠', 12, 1, 10, 1, 5, CAST(N'2023-07-01T00:00:00.000' AS DateTime), CAST(N'2023-07-30T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discounts] ([DiscountId], [DiscountName], [DiscountDescription], [fk_ProjectTagId], [DiscountType], [DiscountValue], [ConditionType], [ConditionValue], [StartDate], [EndDate], [OrderBy]) VALUES (13, N'2023返校特惠', N'返校特惠', NULL, 0, 3, 1, 10, CAST(N'2023-08-01T00:00:00.000' AS DateTime), CAST(N'2023-08-15T00:00:00.000' AS DateTime), 7)
INSERT [dbo].[Discounts] ([DiscountId], [DiscountName], [DiscountDescription], [fk_ProjectTagId], [DiscountType], [DiscountValue], [ConditionType], [ConditionValue], [StartDate], [EndDate], [OrderBy]) VALUES (14, N'2023入秋特惠', N'入秋特惠', 13, 1, 5, 0, 20, CAST(N'2023-09-01T00:00:00.000' AS DateTime), CAST(N'2023-09-20T00:00:00.000' AS DateTime), 10)
INSERT [dbo].[Discounts] ([DiscountId], [DiscountName], [DiscountDescription], [fk_ProjectTagId], [DiscountType], [DiscountValue], [ConditionType], [ConditionValue], [StartDate], [EndDate], [OrderBy]) VALUES (15, N'2023冬季特賣', N'冬季特賣', NULL, 0, 7, 1, 3, CAST(N'2023-10-01T00:00:00.000' AS DateTime), CAST(N'2023-12-31T00:00:00.000' AS DateTime), 100)
SET IDENTITY_INSERT [dbo].[Discounts] OFF

--祥豪************************************************************************************************************--

---1付款狀態
insert into pay_statuses(pay_status)
values('等待中'),('失敗'),('成功')
---2付款方法
insert into pay_methods(pay_method)
values('現金'),('信用卡'),('Paypal')
---3訂單狀態
insert into order_statuses(order_status)
values('已成立'),('備貨中'),('已出貨'),('運送中'),('待領貨'),('已完成'),('已取消'),('已退貨')
---4物流公司
insert into logistics_companies(name,tel,logistics_description)
values
('無','無','課程或活動'),
('黑貓宅急便','(02)412-8689','服務時間：週一 ~ 週五 08:00~16:00'),
('新竹物流','(02)412-8866','服務時間：週一 ~ 週六 08:00~16:00')
---5訂單
insert into orders([ordertime],fk_member_Id,logistics_company_Id,order_status_Id,
pay_method_Id,pay_status_Id,coupon_name,coupon_discount,freight,cellphone
,receipt,receiver,recipient_address,order_description,[close],total_quantity,total_price)
values
('2023-06-28 17:24:36.123',1,2,6,1,3,'暑假大FUN送',90,60,'0912378555','98421673','David Wu','台北市信義區忠孝東路五段55號','商品',0,1,3600),
('2023-07-03 08:57:21.456',3,3,1,1,1,'無',0,60,'0911654321','50287415','Tony Chen','台北市中山區中正路789號','商品',0,1,1300),
('2023-06-29 12:34:45.789',5,2,6,2,3,'Criteria聯名券',80,60,'0933777244','70695328','Sophia Huang','桃園市中壢區環中東路111號','商品',0,1,1300),
('2023-07-01 21:42:53.321',7,2,1,1,1,'好禮贈',20,60,'0922245633','15923748','Olivia Lin','彰化縣員林市中山路333號','商品',0,1,1300),
('2023-06-30 18:23:12.654',8,2,5,3,3,'暑假大FUN送',90,60,'096685277','82763591','Daniel Yang','新北市三峽區民生路456號','商品',0,1,1000),
('2023-06-28 20:16:28.987',6,2,7,2,2,'無',0,60,'0955753666','43019567','Chris Lee','台南市北區成功路222號','商品',0,1,1000),
('2023-07-06 09:45:32.123',5,1,1,1,1,'無',0,0,'0933777244','67148203','Sophia Huang','桃園市中壢區環中東路111號','活動',0,1,500),
('2023-06-29 07:36:59.456',4,1,6,1,3,'無',0,0,'0911456222','31578942','Ryan Liu','新竹市東區光復路','課程',0,1,0),
('2023-07-02 15:28:41.789',9,2,2,1,3,'好禮贈',0,60,'0912345678','76820413','Ava Tsai','基隆市中山區中正路567號','客製化',0,1,2000),
('2023-07-04 13:19:54.321',8,1,6,2,3,'無',0,0,'096685277','59137628','Daniel Yang','新北市三峽區民生路456號','活動',0,1,500),
('2023-07-07 22:37:18.654',7,2,4,1,3,'暑假大FUN送',90,60,'0922245633','82401957','Olivia Lin','彰化縣員林市中山路333號','商品',0,1,800),
('2023-06-28 19:58:23.987',6,2,6,2,3,'無',0,60,'0955753666','13769582','rChris Lee','台南市北區成功路222號','商品',0,1,800),
('2023-07-01 11:14:29.123',5,1,1,1,3,'無',0,0,'0933777244','49681237','Sophia Huang','桃園市中壢區環中東路111號','課程',0,1,0),
('2023-07-05 10:05:14.456',9,2,1,2,2,'暑假大FUN送',90,60,'0912345678','35289761','Ava Tsai','基隆市中山區中正路567號','客製化',0,1,2000),
('2023-06-30 23:09:48.789',10,1,7,1,3,'無',0,0,'0923556789','91826734','Jason Huang','桃園市桃園區中正路789號','課程',0,1,0),
('2023-07-08 04:31:36.321',16,2,1,3,1,'無',0,60,'0966825777','91836734','Alex Wu','基隆市仁愛區中正路567號','商品',0,1,1300)
---6訂單明細
insert into orderItems(order_Id,product_name,[fk_typeId],per_price,quantity,discount_name
,subtotal,discount_subtotal,Items_description)
values
(1,'運動鞋',1,3600,1,'無',3600,3600,'男裝/鞋子/運動鞋'),
(2,'包包',1,1300,1,'無',1300,1300,'女裝/配件/包包'),
(3,'帽子',1,1300,1,'無',1300,1300,'男裝/配件/帽子'),
(4,'長褲',1,1300,1,'無',1300,1300,'女裝/上衣/短袖'),
(5,'短褲',1,1000,1,'無',1000,1000,'男裝/褲子/短褲'),
(6,'短袖',1,1000,1,'無',1000,1000,'男裝/上衣/短袖'),
(7,'2023Flex第3屆公益路跑活動',2,500,1,'無',500,500,'台北大稻埕碼頭'),
(8,'跑步',3,0,1,'無',0,0,'跑步專家Allen'),
(9,'運動鞋',4,2000,1,'無',2000,2000,'跑步 番茄紅 帆布'),
(10,'2023第3屆桃園健行嘉年華',2,500,1,'無',500,500,'聖德基督學院'),
(11,'短褲',1,800,1,'無',800,800,'童裝/褲子/短褲'),
(12,'短褲',1,800,1,'無',800,800,'童裝/褲子/短褲'),
(13,'自行車',3,0,1,'無',0,0,'自行車專家Teddy'),
(14,'運動鞋',4,2000,1,'無',2000,2000,'運動生活 綠松石綠 絲絨'),
(15,'健行',3,0,1,'無',0,0,'健行導師Jack'),
(16,'長袖',1,1300,1,'無',1300,1300,'男裝/上衣/短袖')



-----留言----------------------------------------------------------------

insert ProductComment(fk_MemberId,fk_ProductGroupId,Description,Score)
values
(1,1,'舒適好穿',5),(1,2,'舒適好穿',5),(1,3,'舒適好穿',5),(1,4,'舒適好穿',5),(1,5,'舒適好穿',5),
(1,6,'舒適好穿',5),(1,7,'舒適好穿',5),(1,8,'舒適好穿',5),(1,9,'舒適好穿',5),(1,10,'舒適好穿',5),
(1,11,'舒適好穿',5),(1,12,'舒適好穿',5),(1,13,'舒適好穿',5),(1,14,'舒適好穿',5),(1,15,'舒適好穿',5),
(1,16,'舒適好穿',5),(1,17,'舒適好穿',5),(1,18,'舒適好穿',5),(1,19,'舒適好穿',5),(1,20,'舒適好穿',5),
(1,21,'舒適好穿',5),(1,22,'舒適好穿',5),(1,23,'舒適好穿',5),(1,24,'舒適好穿',5),(1,25,'舒適好穿',5),
(1,26,'舒適好穿',5),(1,27,'舒適好穿',5),(1,28,'舒適好穿',5),(1,29,'舒適好穿',5),(1,30,'舒適好穿',5),
(1,31,'舒適好穿',5),(1,32,'舒適好穿',5),(1,33,'舒適好穿',5),(1,34,'舒適好穿',5),(1,35,'舒適好穿',5),
(1,36,'舒適好穿',5),(1,37,'舒適好穿',5),(1,38,'舒適好穿',5),(1,39,'舒適好穿',5),(1,40,'舒適好穿',5),
(1,41,'舒適好穿',5),(1,42,'舒適好穿',5),(1,43,'舒適好穿',5),(1,44,'舒適好穿',5),(1,45,'舒適好穿',5),
(1,46,'舒適好穿',5),(1,47,'舒適好穿',5),(1,48,'舒適好穿',5),(1,49,'舒適好穿',5),(1,50,'舒適好穿',5),
(1,51,'舒適好穿',5),(1,52,'舒適好穿',5),(1,53,'舒適好穿',5),(1,54,'舒適好穿',5),(1,55,'舒適好穿',5),
(1,56,'舒適好穿',5),(1,57,'舒適好穿',5),(1,58,'舒適好穿',5),(1,59,'舒適好穿',5),(1,60,'舒適好穿',5),
(1,61,'舒適好穿',5),(1,62,'舒適好穿',5),(1,63,'舒適好穿',5),(1,64,'舒適好穿',5),(1,65,'舒適好穿',5),
(1,66,'舒適好穿',5),(1,67,'舒適好穿',5),(1,68,'舒適好穿',5),(1,69,'舒適好穿',5),(1,70,'舒適好穿',5),
(1,71,'舒適好穿',5),(1,72,'舒適好穿',5),(1,73,'舒適好穿',5),(1,74,'舒適好穿',5),(1,75,'舒適好穿',5),
(1,76,'舒適好穿',5),(1,77,'舒適好穿',5),(1,78,'舒適好穿',5),(1,79,'舒適好穿',5),(1,80,'舒適好穿',5),
(1,81,'舒適好穿',5),(1,82,'舒適好穿',5),(1,83,'舒適好穿',5),(1,84,'舒適好穿',5),(1,85,'舒適好穿',5),
(1,86,'舒適好穿',5),(1,87,'舒適好穿',5),(1,88,'舒適好穿',5),(1,89,'舒適好穿',5),(1,90,'舒適好穿',5),
(1,91,'舒適好穿',5),(1,92,'舒適好穿',5),(1,93,'舒適好穿',5),(1,94,'舒適好穿',5),(1,95,'舒適好穿',5),
(1,96,'舒適好穿',5),(1,97,'舒適好穿',5),(1,98,'舒適好穿',5),(1,99,'舒適好穿',5),(2,1,'CP值很高',5),
(2,2,'CP值很高',5),(2,3,'CP值很高',5),(2,4,'CP值很高',5),(2,5,'CP值很高',5),(2,6,'CP值很高',5),
(2,7,'CP值很高',5),(2,8,'CP值很高',5),(2,9,'CP值很高',5),(2,10,'CP值很高',5),(2,11,'CP值很高',5),
(2,12,'CP值很高',5),(2,13,'CP值很高',5),(2,14,'CP值很高',5),(2,15,'CP值很高',5),(2,16,'CP值很高',5),
(2,17,'CP值很高',5),(2,18,'CP值很高',5),(2,19,'CP值很高',5),(2,20,'CP值很高',5),(2,21,'CP值很高',5),
(2,22,'CP值很高',5),(2,23,'CP值很高',5),(2,24,'CP值很高',5),(2,25,'CP值很高',5),(2,26,'CP值很高',5),
(2,27,'CP值很高',5),(2,28,'CP值很高',5),(2,29,'CP值很高',5),(2,30,'CP值很高',5),(2,31,'CP值很高',5),
(2,32,'CP值很高',5),(2,33,'CP值很高',5),(2,34,'CP值很高',5),(2,35,'CP值很高',5),(2,36,'CP值很高',5),
(2,37,'CP值很高',5),(2,38,'CP值很高',5),(2,39,'CP值很高',5),(2,40,'CP值很高',5),(2,41,'CP值很高',5),
(2,42,'CP值很高',5),(2,43,'CP值很高',5),(2,44,'CP值很高',5),(2,45,'CP值很高',5),(2,46,'CP值很高',5),
(2,47,'CP值很高',5),(2,48,'CP值很高',5),(2,49,'CP值很高',5),(2,50,'CP值很高',5),(2,51,'CP值很高',5),
(2,52,'CP值很高',5),(2,53,'CP值很高',5),(2,54,'CP值很高',5),(2,55,'CP值很高',5),(2,56,'CP值很高',5),
(2,57,'CP值很高',5),(2,58,'CP值很高',5),(2,59,'CP值很高',5),(2,60,'CP值很高',5),(2,61,'CP值很高',5),
(2,62,'CP值很高',5),(2,63,'CP值很高',5),(2,64,'CP值很高',5),(2,65,'CP值很高',5),(2,66,'CP值很高',5),
(2,67,'CP值很高',5),(2,68,'CP值很高',5),(2,69,'CP值很高',5),(2,70,'CP值很高',5),(2,71,'CP值很高',5),
(2,72,'CP值很高',5),(2,73,'CP值很高',5),(2,74,'CP值很高',5),(2,75,'CP值很高',5),(2,76,'CP值很高',5),
(2,77,'CP值很高',5),(2,78,'CP值很高',5),(2,79,'CP值很高',5),(2,80,'CP值很高',5),(2,81,'CP值很高',5),
(2,82,'CP值很高',5),(3,83,'CP值很高',5),(3,84,'CP值很高',5),(3,85,'CP值很高',5),(3,86,'CP值很高',5),
(3,87,'CP值很高',5),(3,88,'CP值很高',5),(3,89,'CP值很高',5),(3,90,'CP值很高',5),(3,91,'CP值很高',5),
(3,92,'CP值很高',5),(3,93,'CP值很高',5),(3,94,'CP值很高',5),(3,95,'CP值很高',5),(3,96,'CP值很高',5),
(3,97,'CP值很高',5),(3,98,'CP值很高',5),(3,99,'CP值很高',5),(4,1,'CP值很高',5),(4,2,'CP值很高',5),
(4,3,'CP值很高',5),(4,4,'CP值很高',5),(4,5,'CP值很高',5),(4,6,'CP值很高',5),(4,7,'CP值很高',5),
(4,8,'CP值很高',5),(4,9,'CP值很高',5),(4,10,'CP值很高',5),(4,11,'CP值很高',5),(4,12,'CP值很高',5),
(4,13,'CP值很高',5),(4,14,'CP值很高',5),(4,15,'CP值很高',5),(4,16,'CP值很高',5),(4,17,'CP值很高',5),
(4,18,'CP值很高',5),(4,19,'CP值很高',5),(4,20,'CP值很高',5),(4,21,'CP值很高',5),(4,22,'CP值很高',5),
(4,23,'CP值很高',5),(4,24,'CP值很高',5),(4,25,'CP值很高',5),(4,26,'CP值很高',5),(4,27,'CP值很高',5),
(4,28,'CP值很高',5),(4,29,'CP值很高',5),(4,30,'CP值很高',5),(4,31,'CP值很高',5),(4,32,'CP值很高',5),
(4,33,'CP值很高',5),(4,34,'CP值很高',5),(4,35,'CP值很高',5),(4,36,'CP值很高',5),(4,37,'CP值很高',5),
(4,38,'CP值很高',5),(4,39,'CP值很高',5),(4,40,'CP值很高',5),(4,41,'CP值很高',5),(4,42,'CP值很高',5),
(4,43,'CP值很高',5),(4,44,'CP值很高',5),(4,45,'CP值很高',5),(4,46,'CP值很高',5),(4,47,'CP值很高',5),
(4,48,'CP值很高',5),(4,49,'CP值很高',5),(4,50,'CP值很高',5),(4,51,'CP值很高',5),(4,52,'CP值很高',5),
(4,53,'CP值很高',5),(5,54,'服務品質一流',5),(5,55,'服務品質一流',5),(5,56,'服務品質一流',5),(5,57,'服務品質一流',5),
(5,58,'服務品質一流',5),(5,59,'服務品質一流',5),(5,60,'服務品質一流',5),(5,61,'服務品質一流',5),(5,62,'服務品質一流',5),
(5,63,'服務品質一流',5),(5,64,'服務品質一流',5),(5,65,'服務品質一流',5),(5,66,'服務品質一流',5),(5,67,'服務品質一流',5),
(5,68,'服務品質一流',5),(5,69,'服務品質一流',5),(5,70,'服務品質一流',5),(5,71,'服務品質一流',5),(5,72,'服務品質一流',5),
(5,73,'服務品質一流',5),(5,74,'服務品質一流',5),(5,75,'服務品質一流',5),(5,76,'服務品質一流',5),(5,77,'服務品質一流',5),
(5,78,'服務品質一流',5),(5,79,'服務品質一流',5),(5,80,'服務品質一流',5),(5,81,'服務品質一流',5),(5,82,'服務品質一流',5),
(5,83,'服務品質一流',5),(5,84,'服務品質一流',5),(5,85,'服務品質一流',5),(5,86,'服務品質一流',5),(5,87,'服務品質一流',5),
(5,88,'服務品質一流',5),(5,89,'服務品質一流',5),(5,90,'服務品質一流',5),(5,91,'服務品質一流',5),(5,92,'服務品質一流',5),
(5,93,'服務品質一流',5),(5,94,'服務品質一流',5),(5,95,'服務品質一流',5),(5,96,'服務品質一流',5),(5,97,'服務品質一流',5),
(5,98,'服務品質一流',5),(5,99,'服務品質一流',5)