CREATE DATABASE OnlineJewelleryShopping;
GO
USE OnlineJewelleryShopping;
GO
CREATE TABLE [dbo].[AdminLoginMst](
	[userName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_AdminLoginMst] PRIMARY KEY CLUSTERED 
(
	[userName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BrandMst]    Script Date: 03/08/2021 1:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BrandMst](
	[Brand_ID] [nchar](10) NOT NULL,
	[Brand_Type] [varchar](50) NOT NULL,
 CONSTRAINT [PK_BrandMst] PRIMARY KEY CLUSTERED 
(
	[Brand_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatMst](
	[Cat_ID] [nchar](10) NOT NULL,
	[Cat_Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_CatMst] PRIMARY KEY CLUSTERED 
(
	[Cat_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CertifyMst]    Script Date: 03/08/2021 1:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CertifyMst](
	[Certify_ID] [nchar](10) NOT NULL,
	[Certify_Type] [varchar](50) NOT NULL,
 CONSTRAINT [PK_CertifyMst] PRIMARY KEY CLUSTERED 
(
	[Certify_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimMst](
	[Style_Code] [varchar](50) NOT NULL,
	[DimQlty_ID] [nchar](10) NOT NULL,
	[DimSubType_ID] [nchar](10) NOT NULL,
	[Dim_Crt] [numeric](10, 2) NOT NULL,
	[Dim_Pcs] [numeric](10, 2) NOT NULL,
	[Dim_Gm] [numeric](10, 2) NOT NULL,
	[Dim_Size] [numeric](10, 2) NOT NULL,
	[Dim_Rate] [numeric](10, 2) NOT NULL,
	[Dim_Amt] [numeric](10, 2) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimQltyMst]    Script Date: 03/08/2021 1:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimQltyMst](
	[DimQlty_ID] [nchar](10) NOT NULL,
	[DimQlty] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DimQltyMst] PRIMARY KEY CLUSTERED 
(
	[DimQlty_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimQltySubMst]    Script Date: 03/08/2021 1:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimQltySubMst](
	[DimSubType_ID] [nchar](10) NOT NULL,
	[DimQlty] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DimQltySubMst] PRIMARY KEY CLUSTERED 
(
	[DimSubType_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GoldKrtMst]    Script Date: 03/08/2021 1:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoldKrtMst](
	[GoldType_ID] [nchar](10) NOT NULL,
	[Gold_Crt] [varchar](50) NOT NULL,
 CONSTRAINT [PK_GoldKrtMst] PRIMARY KEY CLUSTERED 
(
	[GoldType_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inquiry]    Script Date: 03/08/2021 1:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inquiry](
	[ID] [nchar](10) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[City] [varchar](50) NOT NULL,
	[Contact] [nchar](10) NOT NULL,
	[EmailID] [varchar](50) NOT NULL,
	[Comment] [varchar](max) NOT NULL,
	[Cdate] [date] NOT NULL,
 CONSTRAINT [PK_Inquiry] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemMst]    Script Date: 03/08/2021 1:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemMst](
	[Style_Code] [varchar](50) NOT NULL,
	[Pairs] [numeric](3, 0) NOT NULL,
	[Brand_ID] [nchar](10) NOT NULL,
	[Quantity] [numeric](18, 0) NOT NULL,
	[Cat_ID] [nchar](10) NOT NULL,
	[Prod_Quality] [varchar](50) NOT NULL,
	[Certify_ID] [nchar](10) NOT NULL,
	[Prod_ID] [nchar](10) NOT NULL,
	[GoldType_ID] [nchar](10) NOT NULL,
	[Gold_Wt] [numeric](10, 3) NOT NULL,
	[Stone_Wt] [numeric](10, 3) NOT NULL,
	[Net_Gold] [numeric](10, 3) NOT NULL,
	[Wstg_Per] [numeric](10, 3) NOT NULL,
	[Wstg] [numeric](10, 3) NOT NULL,
	[Tot_Gross_Wt] [numeric](10, 3) NOT NULL,
	[Gold_Rate] [numeric](10, 2) NOT NULL,
	[Gold_Amt] [numeric](10, 2) NOT NULL,
	[Gold_Making] [numeric](10, 2) NOT NULL,
	[Stone_Making] [numeric](10, 2) NOT NULL,
	[Other_Making] [numeric](10, 2) NOT NULL,
	[Tot_Making] [numeric](10, 2) NOT NULL,
	[MRP] [numeric](10, 2) NOT NULL,
 CONSTRAINT [PK_ItemMst] PRIMARY KEY CLUSTERED 
(
	[Style_Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProdMst](
	[Prod_ID] [nchar](10) NOT NULL,
	[Prod_Type] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ProdMst] PRIMARY KEY CLUSTERED 
(
	[Prod_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StoneMst]    Script Date: 03/08/2021 1:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StoneMst](
	[Style_Code] [varchar](50) NOT NULL,
	[StoneQlty_ID] [nchar](10) NOT NULL,
	[Stone_Gm] [numeric](10, 2) NOT NULL,
	[Stone_Pcs] [numeric](10, 2) NOT NULL,
	[Stone_Crt] [numeric](10, 2) NOT NULL,
	[Stone_Rate] [numeric](10, 2) NOT NULL,
	[Stone_Amt] [numeric](10, 2) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StoneQltyMst]    Script Date: 03/08/2021 1:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StoneQltyMst](
	[StoneQlty_ID] [nchar](10) NOT NULL,
	[StoneQlty] [varchar](50) NOT NULL,
 CONSTRAINT [PK_StoneQltyMst] PRIMARY KEY CLUSTERED 
(
	[StoneQlty_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRegMst]    Script Date: 03/08/2021 1:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRegMst](
	[userID] [nchar](10) NOT NULL,
	[userFname] [text] NOT NULL,
	[userLname]]] [text] NOT NULL,
	[address] [varchar](max) NOT NULL,
	[city] [nvarchar](50) NOT NULL,
	[state] [nvarchar](50) NOT NULL,
	[mobNo] [text] NOT NULL,
	[emailID] [text] NOT NULL,
	[dob] [nvarchar](50) NOT NULL,
	[cdate] [nvarchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_UserRegMst] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[DimMst]  WITH CHECK ADD  CONSTRAINT [FK_DimMst_DimQltyMst] FOREIGN KEY([DimQlty_ID])
REFERENCES [dbo].[DimQltyMst] ([DimQlty_ID])
GO
ALTER TABLE [dbo].[DimMst] CHECK CONSTRAINT [FK_DimMst_DimQltyMst]
GO
ALTER TABLE [dbo].[DimMst]  WITH CHECK ADD  CONSTRAINT [FK_DimMst_DimQltySubMst] FOREIGN KEY([DimSubType_ID])
REFERENCES [dbo].[DimQltySubMst] ([DimSubType_ID])
GO
ALTER TABLE [dbo].[DimMst] CHECK CONSTRAINT [FK_DimMst_DimQltySubMst]
GO
ALTER TABLE [dbo].[DimMst]  WITH CHECK ADD  CONSTRAINT [FK_DimMst_ItemMst] FOREIGN KEY([Style_Code])
REFERENCES [dbo].[ItemMst] ([Style_Code])
GO
ALTER TABLE [dbo].[DimMst] CHECK CONSTRAINT [FK_DimMst_ItemMst]
GO
ALTER TABLE [dbo].[ItemMst]  WITH CHECK ADD  CONSTRAINT [FK_ItemMst_BrandMst] FOREIGN KEY([Brand_ID])
REFERENCES [dbo].[BrandMst] ([Brand_ID])
GO
ALTER TABLE [dbo].[ItemMst] CHECK CONSTRAINT [FK_ItemMst_BrandMst]
GO
ALTER TABLE [dbo].[ItemMst]  WITH CHECK ADD  CONSTRAINT [FK_ItemMst_CatMst] FOREIGN KEY([Cat_ID])
REFERENCES [dbo].[CatMst] ([Cat_ID])
GO
ALTER TABLE [dbo].[ItemMst] CHECK CONSTRAINT [FK_ItemMst_CatMst]
GO
ALTER TABLE [dbo].[ItemMst]  WITH CHECK ADD  CONSTRAINT [FK_ItemMst_CertifyMst] FOREIGN KEY([Certify_ID])
REFERENCES [dbo].[CertifyMst] ([Certify_ID])
GO
ALTER TABLE [dbo].[ItemMst] CHECK CONSTRAINT [FK_ItemMst_CertifyMst]
GO
ALTER TABLE [dbo].[ItemMst]  WITH CHECK ADD  CONSTRAINT [FK_ItemMst_GoldKrtMst] FOREIGN KEY([GoldType_ID])
REFERENCES [dbo].[GoldKrtMst] ([GoldType_ID])
GO
ALTER TABLE [dbo].[ItemMst] CHECK CONSTRAINT [FK_ItemMst_GoldKrtMst]
GO
ALTER TABLE [dbo].[ItemMst]  WITH CHECK ADD  CONSTRAINT [FK_ItemMst_ProdMst] FOREIGN KEY([Prod_ID])
REFERENCES [dbo].[ProdMst] ([Prod_ID])
GO
ALTER TABLE [dbo].[ItemMst] CHECK CONSTRAINT [FK_ItemMst_ProdMst]
GO
ALTER TABLE [dbo].[StoneMst]  WITH CHECK ADD  CONSTRAINT [FK_StoneMst_ItemMst] FOREIGN KEY([Style_Code])
REFERENCES [dbo].[ItemMst] ([Style_Code])
GO
ALTER TABLE [dbo].[StoneMst] CHECK CONSTRAINT [FK_StoneMst_ItemMst]
GO
ALTER TABLE [dbo].[StoneMst]  WITH CHECK ADD  CONSTRAINT [FK_StoneMst_StoneQltyMst] FOREIGN KEY([StoneQlty_ID])
REFERENCES [dbo].[StoneQltyMst] ([StoneQlty_ID])
GO
ALTER TABLE [dbo].[StoneMst] CHECK CONSTRAINT [FK_StoneMst_StoneQltyMst]
GO
