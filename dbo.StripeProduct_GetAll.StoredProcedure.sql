USE [Immersed]
GO
/****** Object:  StoredProcedure [dbo].[StripeProduct_GetAll]    Script Date: 11/8/2022 4:06:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Justin Nugyen>
-- Create date: <11/04/22>
-- Description:	<StripeProduct_GetAll>
-- Code Reviewer: Noe Gallegos


-- MODIFIED BY: author
-- MODIFIED DATE:12/1/2020
-- Code Reviewer: 
-- Note: 
-- =============================================

CREATE proc [dbo].[StripeProduct_GetAll]

/*
	Execute dbo.StripeProduct_GetAll
*/
as
BEGIN


SELECT [Id]
      ,[Name]
      ,[ProductId]
      ,[PriceId]
  FROM [dbo].[StripeProduct]



END
GO
