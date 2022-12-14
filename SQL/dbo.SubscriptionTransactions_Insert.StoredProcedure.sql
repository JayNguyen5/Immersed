USE [Immersed]
GO
/****** Object:  StoredProcedure [dbo].[SubscriptionTransactions_Insert]    Script Date: 11/29/2022 5:45:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SubscriptionTransactions_Insert]
		 @SubscriptionId int
		,@StripeInvoiceId nvarchar(50)
		,@CreatedBy int
		,@Amount decimal(18,2)
		,@PurchaseDate datetime2(7)
		,@CancelDate datetime2(7)
		,@RefundedAmount decimal(18,2)
		,@Id int OUTPUT
/*
	Declare @Id int = 0

	Declare 
			@SubscriptionId int = 1
			,@StripeInvoiceId nvarchar(50) = 'string'
			,@CreatedBy int = 91
			,@Amount decimal(18,2) = 100.00
			,@PurchaseDate datetime2(7) = '2022-11-22 01:11:49.6533333'
			,@CancelDate datetime2(7) = null
			,@RefundedAmount decimal(18,2) = null

	Execute dbo.SubscriptionTransactions_Insert
			@SubscriptionId
			,@StripeInvoiceId
			,@CreatedBy
			,@Amount
			,@PurchaseDate
			,@CancelDate
			,@RefundedAmount
			,@Id OUTPUT

	Select *
	From dbo.SubscriptionTransactions
*/
as
BEGIN


INSERT INTO [dbo].[SubscriptionTransactions]
           (
            [SubscriptionId]
           ,[StripeInvoiceId]
           ,[CreatedBy]
           ,[Amount]
           ,[PurchaseDate]
           ,[CancelDate]
           ,[RefundedAmount])
     VALUES
           (
            @SubscriptionId
           ,@StripeInvoiceId
           ,@CreatedBy
           ,@Amount
           ,@PurchaseDate
           ,@CancelDate
           ,@RefundedAmount)

	SET @Id = SCOPE_IDENTITY()
END

GO
