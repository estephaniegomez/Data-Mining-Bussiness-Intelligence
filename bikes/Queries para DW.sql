--queries para BikeStoreDW

CREATE TABLE DimCustomers(
	[CustomerKey] [int] IDENTITY (1,1) NOT NULL,
	[customer_id] [int] NOT NULL,
	[first_name] [varchar](255) NOT NULL,
	[last_name] [varchar](255) NULL,
	[state] [varchar](25) NULL,
	CONSTRAINT PK_Person PRIMARY KEY (CustomerKey)
)

CREATE TABLE DimStores(
	[StoresKey] [int] IDENTITY (1,1) NOT NULL,
	[store_id] [INT] NOT NULL,
	[store_name] [varchar](255) NOT NULL,
	[state] [varchar](10) NULL,
	CONSTRAINT PK_Stores PRIMARY KEY (StoresKey)
)

CREATE TABLE DimStaffs(
	[StaffKey] [int] IDENTITY (1,1) NOT NULL,
	[staff_id] [int] NOT NULL,
	[first_name] [varchar](255) NOT NULL,
	[last_name] [varchar](255) NOT NULL,
	[store_id] [int] NOT NULL,
	CONSTRAINT PK_Staff PRIMARY KEY (StaffKey)

)

CREATE TABLE [DimProducts](
	[ProductKey] [int] IDENTITY (1,1) NOT NULL,
	[product_id] [int] NOT NULL,
	[product_name] [varchar](255) NOT NULL,
	[brand_id] [int] NOT NULL,
	[category_id] [int] NOT NULL,
	[list_price] [int] NOT NULL,
	CONSTRAINT PK_Products PRIMARY KEY (ProductKey)
)

CREATE TABLE [DimOrders](
	[OrdersKey] [int] IDENTITY (1,1) NOT NULL,
	[order_id] [INT] NOT NULL,
	[customer_id] [INT] NOT NULL,
	[order_date] [DATE] NULL,
	[shipped_date] [DATE] NULL,
	[staff_id] [int] NOT NULL,
	[store_id][int] NOT NULL,
	CONSTRAINT PK_Orders PRIMARY KEY (OrdersKey)
)

CREATE TABLE [DimOrdersItems](
	[OrdersItemKey] [int] IDENTITY (1,1) NOT NULL,
	[order_id][INT] NOT NULL,
	[product_id] [INT] NOT NULL,
	[quantity] [INT] NOT NULL,
	[list_price] [decimal] NOT NULL,
	[discount] [decimal] NOT NULL,
	CONSTRAINT PK_OrdersItem PRIMARY KEY ([OrdersItemKey])
)
CREATE TABLE [dbo].[FactTable](
	[FactKey] [int] IDENTITY (1,1) NOT NULL,
	[CustomerKey] [int] NOT NULL,
	[StoresKey] [int] NOT NULL,
	[StaffKey] [int] NOT NULL,
	[ProductKey] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[OrdersKey] [int] NOT NULL,
	[OrdersItemKey] [int] NOT NULL,
	------------------------
	[customer_id] [int] NOT NULL,
    [customer_first_name] [varchar](255) NOT NULL,
    [customer_last_name] [varchar](255) NULL,
    [customer_state] [varchar](25) NULL,
	[store_id] [INT] NOT NULL,
	[store_name] [varchar](255) NOT NULL,
	[store_state] [varchar](10) NULL,
	[staff_id] [int] NOT NULL,
	[employee_first_name] [varchar](255) NOT NULL,
	[employee_last_name] [varchar](255) NOT NULL,
	[product_name] [varchar](255) NOT NULL,
	[brand_id] [int] NOT NULL,
	[category_id] [int] NOT NULL,
	[list_price] [decimal] (10,4) NOT NULL,
	[order_id] [INT] NOT NULL,
	[order_date] [DATE] NULL,
	[shipped_date] [DATE] NULL,
	[quantity] [INT] NOT NULL,
	[discount] [decimal](10,3) NOT NULL
)


