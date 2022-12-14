USE [Immersed]
GO
/****** Object:  StoredProcedure [dbo].[Subscriptions_Insert]    Script Date: 11/29/2022 5:45:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Justin Nguyen>
-- Create date: <11/10/2022>
-- Description:	<Subscription_Insert>
-- Code Reviewer: David Ramirez


-- MODIFIED BY: author
-- MODIFIED DATE:12/1/2020
-- Code Reviewer: 
-- Note: 
-- =============================================

CREATE proc [dbo].[Subscriptions_Insert]
			@ExternalId nvarchar(50)
			,@CustomerId nvarchar(50)
			,@DateEnded datetime2(7)
			,@isActive nvarchar(20)
			,@CreatedBy int
			,@OrganizationId int
			,@Id int OUTPUT
/*
	Declare @Id int = 0

	Declare
			@ExternalId nvarchar(50) = 'string'
			,@CustomerId nvarchar(50) = 'string'
			,@DateEnded datetime2(7) = null
			,@isActive nvarchar(20) = 'is active'
			,@CreatedBy int = 8
			,@OrganizationId int = 13

	Execute dbo.Subscriptions_Insert
			@ExternalId
			,@CustomerId
			,@DateEnded
			,@isActive
			,@CreatedBy
			,@OrganizationId
			,@Id OUTPUT

	Select *
	From dbo.Subscriptions
*/
as
BEGIN

INSERT INTO [dbo].[Subscriptions]
           ([ExternalId]
           ,[CustomerId]
           ,[DateEnded]
           ,[isActive]
           ,[CreatedBy]
           ,[OrganizationId])
     VALUES
           (@ExternalId
           ,@CustomerId
           ,@DateEnded
           ,@isActive
           ,@CreatedBy
           ,@OrganizationId)

	SET @Id = SCOPE_IDENTITY()

END
GO
