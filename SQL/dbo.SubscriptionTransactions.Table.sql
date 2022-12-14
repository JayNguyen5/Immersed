USE [Immersed]
GO
/****** Object:  Table [dbo].[SubscriptionTransactions]    Script Date: 11/29/2022 5:45:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubscriptionTransactions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SubscriptionId] [int] NOT NULL,
	[StripeInvoiceId] [nvarchar](50) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[PurchaseDate] [datetime2](7) NOT NULL,
	[CancelDate] [datetime2](7) NULL,
	[RefundedAmount] [decimal](18, 2) NULL,
 CONSTRAINT [PK_SubscriptionTransactions_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SubscriptionTransactions] ADD  CONSTRAINT [DF_SubscriptionTransactions_PurchaseDate]  DEFAULT (getutcdate()) FOR [PurchaseDate]
GO
ALTER TABLE [dbo].[SubscriptionTransactions] ADD  CONSTRAINT [DF_SubscriptionTransactions_CancelDate]  DEFAULT (getutcdate()) FOR [CancelDate]
GO
ALTER TABLE [dbo].[SubscriptionTransactions]  WITH CHECK ADD  CONSTRAINT [FK_SubscriptionTransactions_Subscriptions] FOREIGN KEY([SubscriptionId])
REFERENCES [dbo].[Subscriptions] ([Id])
GO
ALTER TABLE [dbo].[SubscriptionTransactions] CHECK CONSTRAINT [FK_SubscriptionTransactions_Subscriptions]
GO
