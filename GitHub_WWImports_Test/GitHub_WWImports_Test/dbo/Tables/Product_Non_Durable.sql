CREATE TABLE [dbo].[Product_Non_Durable] (
    [ID]          INT           NOT NULL,
    [Code]        VARCHAR (10)  COLLATE Latin1_General_100_BIN2 NOT NULL,
    [Description] VARCHAR (200) NOT NULL,
    [Price]       FLOAT (53)    NOT NULL,
    PRIMARY KEY NONCLUSTERED HASH ([ID]) WITH (BUCKET_COUNT = 1024)
)
WITH (DURABILITY = SCHEMA_ONLY, MEMORY_OPTIMIZED = ON);

