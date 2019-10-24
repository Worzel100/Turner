--Natively-Compiled Stored-Procedures
	CREATE PROCEDURE [dbo].[usp_ProductUpdate]
	    WITH NATIVE_COMPILATION,
	         SCHEMABINDING,
	         EXECUTE AS OWNER
	AS
	   BEGIN ATOMIC WITH ( TRANSACTION ISOLATION LEVEL = SNAPSHOT,
	   LANGUAGE = N'us_english' )
	        UPDATE dbo.Product_Durable
	        SET Price = Price - ( Price * 0.10 );
	END;