USE [master]
GO
/****** Jorge Lorenzo Corporan Matricula: 19-SIIN-1-009 Seccion: 0541 ******/
CREATE DATABASE [REPUESTOS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'REPUESTOS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\REPUESTOS.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'REPUESTOS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\REPUESTOS_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [REPUESTOS] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [REPUESTOS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [REPUESTOS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [REPUESTOS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [REPUESTOS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [REPUESTOS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [REPUESTOS] SET ARITHABORT OFF 
GO
ALTER DATABASE [REPUESTOS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [REPUESTOS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [REPUESTOS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [REPUESTOS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [REPUESTOS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [REPUESTOS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [REPUESTOS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [REPUESTOS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [REPUESTOS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [REPUESTOS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [REPUESTOS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [REPUESTOS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [REPUESTOS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [REPUESTOS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [REPUESTOS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [REPUESTOS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [REPUESTOS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [REPUESTOS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [REPUESTOS] SET  MULTI_USER 
GO
ALTER DATABASE [REPUESTOS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [REPUESTOS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [REPUESTOS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [REPUESTOS] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [REPUESTOS] SET DELAYED_DURABILITY = DISABLED 
GO
USE [REPUESTOS]
GO
/****** Object:  Table [dbo].[articulos]    Script Date: 10/4/2022 5:41:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[articulos](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nchar](100) NULL,
	[precio] [int] NULL,
	[fabricante] [int] NULL,
 CONSTRAINT [PK_articulos] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[fabricantes]    Script Date: 10/4/2022 5:41:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fabricantes](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nchar](100) NULL,
 CONSTRAINT [PK_fabricantes] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[articulos] ON 

INSERT [dbo].[articulos] ([codigo], [nombre], [precio], [fabricante]) VALUES (1, N'Tuercas                                                                                             ', 10, 1)
INSERT [dbo].[articulos] ([codigo], [nombre], [precio], [fabricante]) VALUES (2, N'Tornillos                                                                                           ', 15, 1)
INSERT [dbo].[articulos] ([codigo], [nombre], [precio], [fabricante]) VALUES (3, N'Arandelas Planas                                                                                    ', 7, 1)
INSERT [dbo].[articulos] ([codigo], [nombre], [precio], [fabricante]) VALUES (4, N'Arandelas De Presion                                                                                ', 5, 1)
INSERT [dbo].[articulos] ([codigo], [nombre], [precio], [fabricante]) VALUES (5, N'Cadenas 10B                                                                                         ', 1000, 2)
INSERT [dbo].[articulos] ([codigo], [nombre], [precio], [fabricante]) VALUES (6, N'Acoples                                                                                             ', 3000, 2)
INSERT [dbo].[articulos] ([codigo], [nombre], [precio], [fabricante]) VALUES (7, N'Chumaceras                                                                                          ', 3200, 2)
INSERT [dbo].[articulos] ([codigo], [nombre], [precio], [fabricante]) VALUES (8, N'Cadenas 12B                                                                                         ', 2000, 2)
INSERT [dbo].[articulos] ([codigo], [nombre], [precio], [fabricante]) VALUES (9, N'Solenoide                                                                                           ', 5000, 2)
INSERT [dbo].[articulos] ([codigo], [nombre], [precio], [fabricante]) VALUES (10, N'Orring                                                                                              ', 70, 2)
SET IDENTITY_INSERT [dbo].[articulos] OFF
SET IDENTITY_INSERT [dbo].[fabricantes] ON 

INSERT [dbo].[fabricantes] ([codigo], [nombre]) VALUES (1, N'Talleres Saul                                                                                       ')
INSERT [dbo].[fabricantes] ([codigo], [nombre]) VALUES (2, N'Cadenas & Mas                                                                                       ')

SET IDENTITY_INSERT [dbo].[fabricantes] OFF
ALTER TABLE [dbo].[articulos]  WITH CHECK ADD  CONSTRAINT [FK_articulos_fabricantes] FOREIGN KEY([fabricante])
REFERENCES [dbo].[fabricantes] ([codigo])
GO
ALTER TABLE [dbo].[articulos] CHECK CONSTRAINT [FK_articulos_fabricantes]
GO
USE [master]
GO
ALTER DATABASE [REPUESTOS] SET  READ_WRITE 
GO
