USE [Immersed]
GO
/****** Object:  Table [dbo].[StripeProduct]    Script Date: 11/9/2022 3:07:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StripeProduct](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[ProductId] [nvarchar](255) NOT NULL,
	[PriceId] [nvarchar](255) NOT NULL,
	[Price] [int] NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_StripeProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
