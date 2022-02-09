USE [Shop]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 20.01.2022 15:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[Id] [int] NOT NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[LastName] [nvarchar](100) NOT NULL,
	[Patronymic] [nvarchar](100) NULL,
	[IIN] [bigint] NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[GenderId] [bit] NOT NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 20.01.2022 15:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] NOT NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[LastName] [nvarchar](100) NOT NULL,
	[Patronymic] [nvarchar](100) NULL,
	[DateOfBirth] [date] NOT NULL,
	[PositionId] [int] NULL,
	[Salary] [decimal](18, 2) NOT NULL,
	[IIN] [bigint] NOT NULL,
	[GenderId] [bit] NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 20.01.2022 15:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[Id] [bit] NOT NULL,
	[Description] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Goods]    Script Date: 20.01.2022 15:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Goods](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[ProducerId] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_Goods] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 20.01.2022 15:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
	[GoodId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 20.01.2022 15:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[ClientId] [int] NOT NULL,
	[DateOfPurchase] [datetime] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Positions]    Script Date: 20.01.2022 15:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Positions](
	[Id] [int] NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Positions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producer]    Script Date: 20.01.2022 15:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producer](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](800) NOT NULL,
 CONSTRAINT [PK_Producer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Clients] ([Id], [FirstName], [LastName], [Patronymic], [IIN], [DateOfBirth], [GenderId]) VALUES (1, N'Сайфулла', N'Ажибеков', N'Даулетович', 970720231145, CAST(N'1997-07-20' AS Date), 1)
INSERT [dbo].[Clients] ([Id], [FirstName], [LastName], [Patronymic], [IIN], [DateOfBirth], [GenderId]) VALUES (2, N'Владислав', N'Важнин', NULL, 960215485784, CAST(N'1996-02-15' AS Date), 1)
INSERT [dbo].[Clients] ([Id], [FirstName], [LastName], [Patronymic], [IIN], [DateOfBirth], [GenderId]) VALUES (3, N'Максим', N'Витченко', N'Игоревич', 200306125473, CAST(N'2000-03-06' AS Date), 1)
INSERT [dbo].[Clients] ([Id], [FirstName], [LastName], [Patronymic], [IIN], [DateOfBirth], [GenderId]) VALUES (4, N'Артур', N'Ганненко', N'Андреевич', 990509265123, CAST(N'1999-05-09' AS Date), 1)
INSERT [dbo].[Clients] ([Id], [FirstName], [LastName], [Patronymic], [IIN], [DateOfBirth], [GenderId]) VALUES (5, N'Дмитрий', N'Глухов', N'Сергеевич', 971212365874, CAST(N'1997-12-12' AS Date), 1)
INSERT [dbo].[Clients] ([Id], [FirstName], [LastName], [Patronymic], [IIN], [DateOfBirth], [GenderId]) VALUES (6, N'Павел', N'Ким', N'Александрович', 950609000147, CAST(N'1995-06-09' AS Date), 1)
INSERT [dbo].[Clients] ([Id], [FirstName], [LastName], [Patronymic], [IIN], [DateOfBirth], [GenderId]) VALUES (7, N'Александр', N'Любимов', NULL, 981110652001, CAST(N'1998-11-10' AS Date), 1)
INSERT [dbo].[Clients] ([Id], [FirstName], [LastName], [Patronymic], [IIN], [DateOfBirth], [GenderId]) VALUES (8, N'Олег', N'Мухин', N'Витальевич', 970618210360, CAST(N'1997-06-18' AS Date), 1)
INSERT [dbo].[Clients] ([Id], [FirstName], [LastName], [Patronymic], [IIN], [DateOfBirth], [GenderId]) VALUES (9, N'Карина', N'Разямова', N'Руслановна', 990326120965, CAST(N'1999-03-26' AS Date), 0)
INSERT [dbo].[Clients] ([Id], [FirstName], [LastName], [Patronymic], [IIN], [DateOfBirth], [GenderId]) VALUES (10, N'Родион', N'Свитанько', NULL, 960908251369, CAST(N'1996-09-08' AS Date), 1)
INSERT [dbo].[Clients] ([Id], [FirstName], [LastName], [Patronymic], [IIN], [DateOfBirth], [GenderId]) VALUES (11, N'Даниил', N'Худяков', N'Александрович', 970509654124, CAST(N'1997-05-09' AS Date), 1)
INSERT [dbo].[Clients] ([Id], [FirstName], [LastName], [Patronymic], [IIN], [DateOfBirth], [GenderId]) VALUES (12, N'Шерзай', N'Мирвайс', NULL, 980808001214, CAST(N'1998-08-08' AS Date), 1)
GO
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [Patronymic], [DateOfBirth], [PositionId], [Salary], [IIN], [GenderId]) VALUES (1, N'Архат', N'Абдуманап', N'Багдатгалиулы', CAST(N'1998-02-10' AS Date), 4, CAST(120000.00 AS Decimal(18, 2)), 980210652012, 1)
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [Patronymic], [DateOfBirth], [PositionId], [Salary], [IIN], [GenderId]) VALUES (2, N'Юлдаш', N'Баратов', NULL, CAST(N'1997-12-21' AS Date), 3, CAST(150000.00 AS Decimal(18, 2)), 971221021147, 1)
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [Patronymic], [DateOfBirth], [PositionId], [Salary], [IIN], [GenderId]) VALUES (3, N'Алихан', N'Бек', N'Алишерулы', CAST(N'1996-05-26' AS Date), 4, CAST(120000.00 AS Decimal(18, 2)), 960526698700, 1)
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [Patronymic], [DateOfBirth], [PositionId], [Salary], [IIN], [GenderId]) VALUES (4, N'Мария', N'Бендюк', NULL, CAST(N'1999-08-30' AS Date), 1, CAST(160000.00 AS Decimal(18, 2)), 990830125147, 0)
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [Patronymic], [DateOfBirth], [PositionId], [Salary], [IIN], [GenderId]) VALUES (5, N'Сергей', N'Гапонов', NULL, CAST(N'1997-08-25' AS Date), 3, CAST(150000.00 AS Decimal(18, 2)), 970825214000, 1)
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [Patronymic], [DateOfBirth], [PositionId], [Salary], [IIN], [GenderId]) VALUES (6, N'Станислав', N'Зелинский', N'Владимирович', CAST(N'1999-01-14' AS Date), 1, CAST(160000.00 AS Decimal(18, 2)), 990114547510, 1)
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [Patronymic], [DateOfBirth], [PositionId], [Salary], [IIN], [GenderId]) VALUES (7, N'Петр', N'Карлин', N'Петрович', CAST(N'1998-06-09' AS Date), 3, CAST(150000.00 AS Decimal(18, 2)), 980609541120, 1)
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [Patronymic], [DateOfBirth], [PositionId], [Salary], [IIN], [GenderId]) VALUES (8, N'Алуа', N'Машен', N'Аханкызы', CAST(N'1999-03-18' AS Date), 2, CAST(140000.00 AS Decimal(18, 2)), 990318521147, 0)
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [Patronymic], [DateOfBirth], [PositionId], [Salary], [IIN], [GenderId]) VALUES (9, N'Руслан', N'Павлов', NULL, CAST(N'1998-08-24' AS Date), 1, CAST(170000.00 AS Decimal(18, 2)), 980824510020, 1)
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [Patronymic], [DateOfBirth], [PositionId], [Salary], [IIN], [GenderId]) VALUES (10, N'Эмиль', N'Прозоров', N'Анатольевич', CAST(N'1996-03-20' AS Date), 3, CAST(155000.00 AS Decimal(18, 2)), 960320014123, 1)
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [Patronymic], [DateOfBirth], [PositionId], [Salary], [IIN], [GenderId]) VALUES (11, N'Артем', N'Сатырев', NULL, CAST(N'1998-09-03' AS Date), 2, CAST(145000.00 AS Decimal(18, 2)), 980903321100, 1)
GO
INSERT [dbo].[Gender] ([Id], [Description]) VALUES (0, N'Женщина')
INSERT [dbo].[Gender] ([Id], [Description]) VALUES (1, N'Мужчина')
GO
INSERT [dbo].[Goods] ([Id], [Name], [ProducerId], [Price], [Quantity]) VALUES (1, N'Игровой ноутбук Lenovo IdeaPad Gaming 3 i5 10300H / 8ГБ / 512SSD / GTX1650Ti 4ГБ / 15.6 / DOS / (81Y400S0RK)
', 2, CAST(369990.00 AS Decimal(18, 2)), 10)
INSERT [dbo].[Goods] ([Id], [Name], [ProducerId], [Price], [Quantity]) VALUES (2, N'Игровой ноутбук HP Pavilion Gaming 15-DK1018UR i5 10300H / 8ГБ / 256SSD / GTX1650 4ГБ / 15.6 / DOS / (15C52EA)', 6, CAST(359990.00 AS Decimal(18, 2)), 15)
INSERT [dbo].[Goods] ([Id], [Name], [ProducerId], [Price], [Quantity]) VALUES (3, N'Ноутбук HP Pavilion 15-EG0060UR i5 1135G7 / 8ГБ / 512SSD / 15.6 / Win10 / (2S2Y9EA)', 6, CAST(339990.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[Goods] ([Id], [Name], [ProducerId], [Price], [Quantity]) VALUES (4, N'Игровой ноутбук HP Omen i5 9300H / 8ГБ / 512SSD / GTX1660Ti 6ГБ / 15.6 / DOS / (9PU20EA)', 6, CAST(479990.00 AS Decimal(18, 2)), 9)
INSERT [dbo].[Goods] ([Id], [Name], [ProducerId], [Price], [Quantity]) VALUES (5, N'Ноутбук ACER Nitro 5 AN515-43 (NH.Q6ZER.00C) 15.6 FHD/AMD Ryzen 5 3550H 2.1 Ghz/8/SSD512/GTX1650/4/Linux', 4, CAST(289900.00 AS Decimal(18, 2)), 6)
INSERT [dbo].[Goods] ([Id], [Name], [ProducerId], [Price], [Quantity]) VALUES (6, N'Ноутбук Asus VivoBook X413JA i3 1005G1/ 4ГБ / 256SSD / 14" / Win10 / (X413JA-EK241T)', 1, CAST(219990.00 AS Decimal(18, 2)), 32)
INSERT [dbo].[Goods] ([Id], [Name], [ProducerId], [Price], [Quantity]) VALUES (7, N'Ноутбук Asus E410MA Pentium N5000 / 4ГБ / 256SSD / 14 / Win10 / (E410MA-EK206T)', 1, CAST(159990.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Goods] ([Id], [Name], [ProducerId], [Price], [Quantity]) VALUES (8, N'Samsung - Galaxy Book Flex 2-in-1 15.6" QLED Touch-Screen Laptop - Intel Core i7 - 12GB Memory - 512GB SSD - Royal Blue', 3, CAST(504000.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[Goods] ([Id], [Name], [ProducerId], [Price], [Quantity]) VALUES (9, N'Ноутбук Apple MacBook Air Retina M1 / 8ГБ / 256SSD / 13 / Mac OS Big Sur / (MGN63RU/A)', 7, CAST(550990.00 AS Decimal(18, 2)), 4)
INSERT [dbo].[Goods] ([Id], [Name], [ProducerId], [Price], [Quantity]) VALUES (10, N'Ноутбук Apple MacBook Pro Retina M1 / 8ГБ / 256SSD / 13.3 / Mac OS Big Sur / (MYD82RU/A)', 7, CAST(724990.00 AS Decimal(18, 2)), 6)
INSERT [dbo].[Goods] ([Id], [Name], [ProducerId], [Price], [Quantity]) VALUES (11, N'Ноутбук Apple MacBook Pro Retina M1 / 8ГБ / 512SSD / 13.3 / Mac OS Big Sur / (MYDC2RU/A)', 7, CAST(835990.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Goods] ([Id], [Name], [ProducerId], [Price], [Quantity]) VALUES (12, N'Xiaomi RedmiBook 14 Ryzen Edition JYU4248CN серебристый (JYU4248CN)', 5, CAST(360000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Goods] ([Id], [Name], [ProducerId], [Price], [Quantity]) VALUES (13, N'Xiaomi Mi Lite JYU4139CN Black (JYU4139CN)', 5, CAST(319990.00 AS Decimal(18, 2)), 21)
INSERT [dbo].[Goods] ([Id], [Name], [ProducerId], [Price], [Quantity]) VALUES (14, N'Ноутбук ASUS Zenbook UX433FAC-A5122/14 FHD/Core i5 10210U 1.6 Ghz/8/SSD512/Dos', 1, CAST(369900.00 AS Decimal(18, 2)), 7)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [GoodId], [Quantity]) VALUES (1, 12414, 2, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [GoodId], [Quantity]) VALUES (2, 12414, 3, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [GoodId], [Quantity]) VALUES (3, 12415, 11, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [GoodId], [Quantity]) VALUES (4, 12416, 1, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [GoodId], [Quantity]) VALUES (5, 12416, 4, 3)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [GoodId], [Quantity]) VALUES (6, 12416, 6, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [GoodId], [Quantity]) VALUES (7, 12417, 5, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [GoodId], [Quantity]) VALUES (8, 12418, 1, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [GoodId], [Quantity]) VALUES (9, 12418, 2, 2)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [GoodId], [Quantity]) VALUES (10, 12419, 7, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [GoodId], [Quantity]) VALUES (11, 12420, 8, 2)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [GoodId], [Quantity]) VALUES (12, 12421, 7, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [GoodId], [Quantity]) VALUES (13, 12421, 2, 3)
GO
INSERT [dbo].[Orders] ([Id], [EmployeeId], [ClientId], [DateOfPurchase]) VALUES (12414, 1, 2, CAST(N'2021-03-19T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([Id], [EmployeeId], [ClientId], [DateOfPurchase]) VALUES (12415, 5, 1, CAST(N'2021-03-18T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([Id], [EmployeeId], [ClientId], [DateOfPurchase]) VALUES (12416, 2, 10, CAST(N'2021-03-18T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([Id], [EmployeeId], [ClientId], [DateOfPurchase]) VALUES (12417, 11, 5, CAST(N'2021-03-17T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([Id], [EmployeeId], [ClientId], [DateOfPurchase]) VALUES (12418, 2, 3, CAST(N'2021-02-28T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([Id], [EmployeeId], [ClientId], [DateOfPurchase]) VALUES (12419, 6, 6, CAST(N'2021-02-27T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([Id], [EmployeeId], [ClientId], [DateOfPurchase]) VALUES (12420, 7, 9, CAST(N'2021-02-28T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([Id], [EmployeeId], [ClientId], [DateOfPurchase]) VALUES (12421, 9, 2, CAST(N'2021-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Positions] ([Id], [Description]) VALUES (1, N'Топ-менеджер')
INSERT [dbo].[Positions] ([Id], [Description]) VALUES (2, N'Менеджер')
INSERT [dbo].[Positions] ([Id], [Description]) VALUES (3, N'Региональный менеджер')
INSERT [dbo].[Positions] ([Id], [Description]) VALUES (4, N'Младший менеджер')
GO
INSERT [dbo].[Producer] ([Id], [Name]) VALUES (1, N'AsusTek Computer Inc.')
INSERT [dbo].[Producer] ([Id], [Name]) VALUES (2, N'Lenovo Group Limited')
INSERT [dbo].[Producer] ([Id], [Name]) VALUES (3, N'Samsung Group')
INSERT [dbo].[Producer] ([Id], [Name]) VALUES (4, N'Acer')
INSERT [dbo].[Producer] ([Id], [Name]) VALUES (5, N'Xiaomi Corporation')
INSERT [dbo].[Producer] ([Id], [Name]) VALUES (6, N'Hewlett-Packard')
INSERT [dbo].[Producer] ([Id], [Name]) VALUES (7, N'Apple')
GO
ALTER TABLE [dbo].[Clients]  WITH CHECK ADD  CONSTRAINT [FK_Clients_Gender] FOREIGN KEY([GenderId])
REFERENCES [dbo].[Gender] ([Id])
GO
ALTER TABLE [dbo].[Clients] CHECK CONSTRAINT [FK_Clients_Gender]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Gender] FOREIGN KEY([GenderId])
REFERENCES [dbo].[Gender] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Gender]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Position] FOREIGN KEY([PositionId])
REFERENCES [dbo].[Positions] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Position]
GO
ALTER TABLE [dbo].[Goods]  WITH CHECK ADD  CONSTRAINT [FK_Goods_Producer] FOREIGN KEY([ProducerId])
REFERENCES [dbo].[Producer] ([Id])
GO
ALTER TABLE [dbo].[Goods] CHECK CONSTRAINT [FK_Goods_Producer]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Goods] FOREIGN KEY([GoodId])
REFERENCES [dbo].[Goods] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Goods]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Order]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Client] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Client]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Employee] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Employee]
GO
