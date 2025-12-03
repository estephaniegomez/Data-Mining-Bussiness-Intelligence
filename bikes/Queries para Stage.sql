--Crear Tablas de BikeStoreStage

-- drop table if exists DimCustomers
-- drop table if exists DimStores
-- drop table if exists DimStaffs
-- drop table if exists DimProducts
-- drop table if exists DimOrders
-- drop table if exists DimOrdersItems


CREATE TABLE DimCustomers(
	[customer_id] [int] NOT NULL,
	[first_name] [varchar](255) NOT NULL,
	[last_name] [varchar](255) NULL,
	[state] [varchar](25) NULL
)

CREATE TABLE DimStores(
	[store_id] [INT] NOT NULL,
	[store_name] [varchar](255) NOT NULL,
	[state] [varchar](10) NULL,
)

CREATE TABLE DimStaffs(
	[staff_id] [int] NOT NULL,
	[first_name] [varchar](255) NOT NULL,
	[last_name] [varchar](255) NOT NULL,
	[store_id] [int] NOT NULL

)

CREATE TABLE [DimProducts](
	[product_id] [int] NOT NULL,
	[product_name] [varchar](255) NOT NULL,
	[brand_id] [int] NOT NULL,
	[category_id] [int] NOT NULL,
	[list_price] [int] NOT NULL
)


CREATE TABLE [DimOrders](
	[order_id] [INT] NOT NULL,
	[customer_id] [INT] NOT NULL,
	[order_date] [DATE] NULL,
	[shipped_date] [DATE] NULL,
	[staff_id] [int] NOT NULL,
	[store_id][int] NOT NULL
)


CREATE TABLE [DimOrdersItems](
	[order_id][INT] NOT NULL,
	[product_id] [INT] NOT NULL,
	[quantity] [INT] NOT NULL,
	[list_price] [decimal] NOT NULL,
	[discount] [decimal] NOT NULL
)
