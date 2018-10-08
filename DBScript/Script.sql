
CREATE DATABASE NewsLetterDb

GO


USE [NewsLetterDb]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 10/8/2018 2:05:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CartId] [nvarchar](50) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customer]    Script Date: 10/8/2018 2:05:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](150) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 10/8/2018 2:05:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](500) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[ProductImage] [nchar](2000) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Cart] ON 

GO
INSERT [dbo].[Cart] ([ID], [CartId], [ProductId], [Quantity]) VALUES (1, N'1', 1, 1)
GO
INSERT [dbo].[Cart] ([ID], [CartId], [ProductId], [Quantity]) VALUES (2, N'1', 3, 1)
GO
INSERT [dbo].[Cart] ([ID], [CartId], [ProductId], [Quantity]) VALUES (3, N'1', 4, 1)
GO
INSERT [dbo].[Cart] ([ID], [CartId], [ProductId], [Quantity]) VALUES (5, N'2', 2, 1)
GO
INSERT [dbo].[Cart] ([ID], [CartId], [ProductId], [Quantity]) VALUES (6, N'2', 3, 1)
GO
INSERT [dbo].[Cart] ([ID], [CartId], [ProductId], [Quantity]) VALUES (7, N'2', 5, 1)
GO
INSERT [dbo].[Cart] ([ID], [CartId], [ProductId], [Quantity]) VALUES (8, N'3', 1, 1)
GO
INSERT [dbo].[Cart] ([ID], [CartId], [ProductId], [Quantity]) VALUES (9, N'3', 5, 1)
GO
INSERT [dbo].[Cart] ([ID], [CartId], [ProductId], [Quantity]) VALUES (10, N'3', 4, 1)
GO
SET IDENTITY_INSERT [dbo].[Cart] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

GO
INSERT [dbo].[Customer] ([CustomerId], [CustomerName], [Email]) VALUES (1, N'Mark Adesina', N'mark2kk@gmail.com')
GO
INSERT [dbo].[Customer] ([CustomerId], [CustomerName], [Email]) VALUES (2, N'John Doe', N'john@doe.com')
GO
INSERT [dbo].[Customer] ([CustomerId], [CustomerName], [Email]) VALUES (3, N'Jane Doe', N'jane@doe.com')
GO
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [Price], [ProductImage]) VALUES (1, N'Canon Camera', CAST(5000.00 AS Decimal(18, 2)), N'https://images.freeimages.com/images/thumbs/c60/canon-ae-1-1481680.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          ')
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [Price], [ProductImage]) VALUES (2, N'Industrial Boot', CAST(3000.00 AS Decimal(18, 2)), N'https://images.freeimages.com/images/thumbs/aa3/boots-3-1517212.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             ')
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [Price], [ProductImage]) VALUES (3, N'Ladies High Heels', CAST(2500.00 AS Decimal(18, 2)), N'https://images.freeimages.com/images/thumbs/5c1/ladies-high-heels-1617124.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   ')
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [Price], [ProductImage]) VALUES (4, N'High Back Show', CAST(4000.00 AS Decimal(18, 2)), N'https://images.freeimages.com/images/thumbs/ade/high-black-1415400.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          ')
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [Price], [ProductImage]) VALUES (5, N'Hemp Baseball Hat', CAST(2000.00 AS Decimal(18, 2)), N'https://images.freeimages.com/images/small-previews/14d/hemp-baseball-hat-1141640.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ')
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Product]
GO
