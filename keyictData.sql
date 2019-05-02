USE [master]
GO
/****** Object:  Database [LastTask]    Script Date: 02/05/2019 04:02:54 م ******/
CREATE DATABASE [LastTask]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LastTask', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\LastTask.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'LastTask_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\LastTask_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [LastTask] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LastTask].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LastTask] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LastTask] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LastTask] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LastTask] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LastTask] SET ARITHABORT OFF 
GO
ALTER DATABASE [LastTask] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LastTask] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LastTask] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LastTask] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LastTask] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LastTask] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LastTask] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LastTask] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LastTask] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LastTask] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LastTask] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LastTask] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LastTask] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LastTask] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LastTask] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LastTask] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LastTask] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LastTask] SET RECOVERY FULL 
GO
ALTER DATABASE [LastTask] SET  MULTI_USER 
GO
ALTER DATABASE [LastTask] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LastTask] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LastTask] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LastTask] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [LastTask] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'LastTask', N'ON'
GO
USE [LastTask]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 02/05/2019 04:03:02 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 02/05/2019 04:03:03 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 02/05/2019 04:03:03 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 02/05/2019 04:03:03 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 02/05/2019 04:03:03 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 02/05/2019 04:03:03 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Profiles]    Script Date: 02/05/2019 04:03:03 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profiles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Gender] [nvarchar](max) NULL,
	[AcademicLevel] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[UserId] [nvarchar](128) NULL,
 CONSTRAINT [PK_Profiles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201905020942528_InitialCreate', N'LastTask.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EE336107D2FD07F10F4D416A9954B77B10DEC1659276983E6867552F46D414BB423AC44A912954D50F4CBFAD04FEA2F742851375E74B115DB592CB088C8E199E170480E8743FFF7CFBFE39F9F7CCF78C451EC0664621E8CF64D03133B705CB29C98095D7CFFCEFCF9A7AFBF1A9F39FE93F17B4E77C4E8A0258927E603A5E1B165C5F603F6513CF25D3B0AE260414776E05BC809ACC3FDFD1FAD83030B038409588631FE9010EAFA38FD80CF69406C1CD20479578183BD989743CD2C4535AE918FE310D978625EA298DEA1F8D32823358D13CF4520C60C7B0BD3408404145110F2F83EC6331A0564390BA1007977CF2106BA05F262CC853F2EC9BBF663FF90F5C32A1BE6507612D3C0EF097870C4156389CD5752AF59280E5477062AA6CFACD7A9FA26E68583D3A20F81070A10191E4FBD88114FCCAB82C5491C5E633ACA1B8E32C8F308E03E07D1A7511571CFE8DC6EAF30A4C3D13EFBB7674C138F26119E109CD008797BC66D32F75CFB37FC7C177CC2647274305F1CBD7BF31639476F7FC0476FAA3D85BE025DAD008A6EA320C411C8861745FF4DC3AAB7B3C48645B34A9B4C2B604B30274CE30A3D5D62B2A40F305B0EDF99C6B9FB849DBC841BD73D71610A41231A25F0799D781E9A7BB8A8B71A79B2FF1BB81EBE793B08D76BF4E82ED3A117F8C3C489605E7DC05E5A1B3FB86136BD6AE3FD91939D4781CFBEEBF695D57E9C054964B3CE045A923B142D31AD4B37B64AE3ED64D20C6A78B3CE5177DFB499A4B2792B495987569909398B4DCF865CDE97E5DBD9E24EC210062F352DA69126831376AA91D074CFC8094AA339E86A34043AF325AF81673E72BD0116C10E5CC0F958B8918F8B5EBE0FC0E410E92DF32D8A6358039C5F51FCD0203AFC3980E8336C271198E68C223F7C716EB70F01C1D7893F6716BF395E830DCDDDE7E01CD93488CE086BB536DE65607F0A127A469C5344F13DB57340F679E7FADD010611E7C4B6711C9F833163671A806F9D035E107A74D81B8EAD4EDB7642A61E727DB51722ACA31F73D2D213515348DE88864CE59134897A192C5DD24DD49C542F6A46D12A2A27EB2B2A03EB2629A7D40B9A12B4CA99510DE6E3A52334BC9397C2EEBE97B7DEE6AD5B0B2A6A9CC10A897FC10447B08C39B788521C917204BAAC1BDB7016D2E1634C5F7C6F4A39FD8EBC6468562BCD867411187E36A4B0BB3F1B5231A1F8D1759857D2E1E89313037C277AF5A9AA7DCE09926D7A3AD4BAB969E69B590374D3E5248E03DB4D678122E8C5431675F9C18733DAE317596FC41808740C0CDD655B1E9440DF4CD1A86EC829F630C5C6899D0505A728B69123AB113AE4F4102CDF51158295B190BA70DF493CC1D271C41A2176088A61A6BA84CAD3C225B61B22AF554B42CB8E5B18EB7BC143AC39C521268C61AB26BA3057873E9800051F6150DA3434B62A16D76C881AAF5537E66D2E6C39EE5244622336D9E23B6BEC92FB6F2F6298CD1ADB807136ABA48B00DA30DE360C949F55BA1A807870D93503154E4C1A03E52ED5460CB4AEB12D18685D25AFCE40B3236AD7F117CEABBB669EF583F2E6B7F546756DC1366BFAD831D3CC7C4F6843A1058E64F33C9DB34AFC4415873390939FCF62EEEA8A26C2C06798D64336A5BFABF443AD6610D1889A004B436B01E51780129034A17A0897C7F21AA5E35E440FD83CEED608CBD77E01B662033276F522B442A8BF2E158DB3D3E9A3E859610D9291773A2C54701406212E5EF58E77508A2E2E2B2BA68B2FDCC71BAE748C0F4683825A3C578D92F2CE0CAEA5DC34DBB5A472C8FAB8646B6949709F345ACA3B33B896B88DB62B49E114F4700BD652517D0B1F68B2E5918E62B729EAC656961CC50BC696268B6A7C85C2D025CB4A56152F3166594AD5F4FB59FF74233FC3B0EC58917554485B70A241849658A805D620E9B91BC5F4145134472CCE33757C894CB9B76A96FF9C6575FB940731DF07726AF6378FDE09D7F6B58D56F64438C03974CF67EE4C1A43570CBEBAB9C152DC90872245D87E1A78894FF4DE95BE757679576D9F95C808634B905FF29E2455493E6E5DEF9D46459E11438C50E1B9AC3E4A7A089DAE73BFB3AA6D9D2FAA47C9435355145DB86A6BA3A67361BA8F94E81AF61FA856849799513C1FA50AC08B7A6254521A24B04A5D77D47AD64915B35ED31D51482DA9420A553DA4AC2690D484AC56AC84A7D1A89AA23B073965A48A2ED7764756248F54A115D52B602B6416EBBAA32AF24BAAC08AEAEED865B289B882EEF09EA53DB0ACB6696507DAF5762D0DC6CB2C87C36C7A957BFB2A50A5B82716BF9997C078F94E9A92F654B79A2965418CF54C4983A15F736AD7DDF525A7F18E5E8F59BBC3AE2DEB4D77F87ABC7E06FBA266219DE84492827B71B2134E70637E9A6A7F2C231DAF3212D3C8D5085BFA734CB13F6204A3D99FDED473315BC073822B44DC05067B4BF336CCC3FD8343E1C9CDEE3C7FB1E2D8F114A751DD1B98FA986D20058B3CA2C87E40919C10B1C6139112548A355F10073F4DCCBFD256C769D882FD9516EF1917F13D71FF4CA0E22E4AB0F1B79CE0394CCA7CF3D96A471F3874D7EAC51F1FB3A67BC64D0433E6D8D81774B9CA08D79F3DF492266BBA86342B3F8678BD13AAF6DE40892A4C88D59F17CC5D3AC8D3825CCA6F7CF4F46D5FD194CF07D642543C11180A6F1015EA9E00AC82A54DFF77E093A6E9FFFD3AAB7E0EB08A68DAA7002EE90F263E04E8BE0CE52DB7B8D5280E449B5892523DB72652AF9555B9EDBD49CAB75E6BA2CB39D53DE0D6C89B5EC1325E59CAF160BBA322A37830EC6D9AF68BA711EF4AE67099D3B1DD84E14DE60837DC067D51A9C13B90CCA648CED97E02F0A66D4D17C4DDF12CCA7E69BE3B666C3C656BFBC9BC9B36365D9877C78DAD57CAEE8ED9DAB6F6CF2D5B5AE72D74EB09B8722E91E63246150B6E4BB0CD02E770C29F076004994799BD8B5467743565A3B6302C49F44CF5A964226369E2487C258A66B6FDFACA37FCC6CE729A66B69A04CC26DE7CFD6FE4CD699A796BD21AB7911AAC4C2C54A56BB7AC634DB94FAF2915B8D69396CCF3369FB5F166FD3565FE0EA294DAECD1DC11BF9E44DF415432E4D4E991D82B5FF7C2DE59F90545D8BF63775942B0DF5324D8AEED9A05CD055904F9E62D48949308119A2B4C91035BEA4944DD05B22954B31873FAB03B8DDBB19B8E39762EC84D42C3844297B13FF76A012FE60434F14FB397EB328F6FC2F4374A86E80288E9B2D8FC0D799FB89E53C87DAE880969209877C123BA6C2C298BEC2E9F0BA4EB807404E2EA2B9CA23BEC871E80C53764861EF12AB281F95DE225B29FCB08A00EA47D20EA6A1F9FBA6819213FE618657BF8041B76FCA79FFE0799DCB36748540000, N'6.1.3-40302')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'1', N'AdminRole')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'2', N'UserRole')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'48c41192-313e-407d-86d2-995255491f41', N'1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'23edbb54-97be-4e2c-aea1-00172912e0e4', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f1153a15-d282-42fc-a405-81f54020b85b', N'2')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Status]) VALUES (N'23edbb54-97be-4e2c-aea1-00172912e0e4', N'Salahrashed@hotmail.com', 0, N'ADpmQFQPharBIH0r++kXdXFvSlrx8hSLDjlUDNo3zICkGbTg6i5d3/Fnp93DX/ReqA==', N'72ac243f-4fe1-4ece-ace0-a2cb4b709fa6', N'01256986542', 0, 0, NULL, 1, 0, N'Salahrashed@hotmail.com', 1)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Status]) VALUES (N'48c41192-313e-407d-86d2-995255491f41', N'Admin@gmail.com', 0, N'AH2nFerPJC1HheOubfF8qFS+eQKKFeGg+1cE48BOEdkRg55MOkznlM2bvQIjBus3/A==', N'4a016607-2b1c-40d7-8d52-57bd9c8fa40e', NULL, 0, 0, NULL, 1, 0, N'Admin@gmail.com', 5)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Status]) VALUES (N'f1153a15-d282-42fc-a405-81f54020b85b', N'test@test.com', 0, N'ACu+nsBJq0zgnNLU4OBpBPIXcCf6HIMThP0xsSKwBqorgFDiqhtHGBz67UEipjGXsA==', N'ede732ff-5305-42b2-a99e-c1da53e9c4f2', N'0110111414', 0, 0, NULL, 1, 0, N'test@test.com', 0)
SET IDENTITY_INSERT [dbo].[Profiles] ON 

INSERT [dbo].[Profiles] ([Id], [Name], [Gender], [AcademicLevel], [UserName], [UserId]) VALUES (1, N'Ahmed mubarak', N'Male', N'Bachelors', N'testing', N'f1153a15-d282-42fc-a405-81f54020b85b')
INSERT [dbo].[Profiles] ([Id], [Name], [Gender], [AcademicLevel], [UserName], [UserId]) VALUES (2, N'Salah Rashed', N'Male', N'Masters', N'salahrashed', N'23edbb54-97be-4e2c-aea1-00172912e0e4')
SET IDENTITY_INSERT [dbo].[Profiles] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 02/05/2019 04:03:04 م ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 02/05/2019 04:03:04 م ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 02/05/2019 04:03:04 م ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 02/05/2019 04:03:04 م ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 02/05/2019 04:03:04 م ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 02/05/2019 04:03:04 م ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Profiles]  WITH CHECK ADD  CONSTRAINT [FK_Profiles_AspNetUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Profiles] CHECK CONSTRAINT [FK_Profiles_AspNetUsers]
GO
USE [master]
GO
ALTER DATABASE [LastTask] SET  READ_WRITE 
GO
