USE [master]
GO
/****** Object:  Database [EcoAmigos]    Script Date: 25/09/2022 5:00:32 p. m. ******/
CREATE DATABASE [EcoAmigos]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EcoAmigos', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\EcoAmigos.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EcoAmigos_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\EcoAmigos_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [EcoAmigos] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EcoAmigos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EcoAmigos] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EcoAmigos] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EcoAmigos] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EcoAmigos] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EcoAmigos] SET ARITHABORT OFF 
GO
ALTER DATABASE [EcoAmigos] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EcoAmigos] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EcoAmigos] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EcoAmigos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EcoAmigos] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EcoAmigos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EcoAmigos] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EcoAmigos] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EcoAmigos] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EcoAmigos] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EcoAmigos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EcoAmigos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EcoAmigos] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EcoAmigos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EcoAmigos] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EcoAmigos] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EcoAmigos] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EcoAmigos] SET RECOVERY FULL 
GO
ALTER DATABASE [EcoAmigos] SET  MULTI_USER 
GO
ALTER DATABASE [EcoAmigos] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EcoAmigos] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EcoAmigos] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EcoAmigos] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EcoAmigos] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [EcoAmigos] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'EcoAmigos', N'ON'
GO
ALTER DATABASE [EcoAmigos] SET QUERY_STORE = OFF
GO
USE [EcoAmigos]
GO
/****** Object:  Table [dbo].[Eventos]    Script Date: 25/09/2022 5:00:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Eventos](
	[Nombre_Pag] [varchar](max) NOT NULL,
	[Fecha] [varchar](max) NOT NULL,
	[Titulo] [varchar](max) NOT NULL,
	[Realizar] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GruAmbiental]    Script Date: 25/09/2022 5:00:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GruAmbiental](
	[Identificacion] [int] NOT NULL,
	[Nombre_Gru] [varchar](max) NOT NULL,
	[Tipo_Grupo] [varchar](max) NOT NULL,
	[Telefono] [int] NOT NULL,
	[Correo] [varchar](max) NOT NULL,
	[Contraseña] [varchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pagina]    Script Date: 25/09/2022 5:00:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pagina](
	[Identificacion] [int] NOT NULL,
	[Tipo_Pagina] [varchar](max) NOT NULL,
	[Nombre_Pagina] [varchar](max) NOT NULL,
	[Descripcion_Pagina] [varchar](max) NOT NULL,
	[Img_pag] [varchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Publicaciones]    Script Date: 25/09/2022 5:00:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publicaciones](
	[Nombre_Pag] [varchar](max) NOT NULL,
	[Titulo] [varchar](max) NOT NULL,
	[Contenido] [varchar](max) NOT NULL,
	[Img_Publi] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 25/09/2022 5:00:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[Tipo_Documento] [varchar](max) NOT NULL,
	[Documento] [int] NOT NULL,
	[Nombres] [varchar](max) NOT NULL,
	[Apellidos] [varchar](max) NOT NULL,
	[Correo] [varchar](max) NOT NULL,
	[Telefono] [int] NOT NULL,
	[Usuario] [varchar](max) NOT NULL,
	[Contraseña] [varchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Eventos] ([Nombre_Pag], [Fecha], [Titulo], [Realizar]) VALUES (N'cuidado del planeta', N'2022-09-23T21:39', N'primer', N'dfgdfg')
GO
INSERT [dbo].[GruAmbiental] ([Identificacion], [Nombre_Gru], [Tipo_Grupo], [Telefono], [Correo], [Contraseña]) VALUES (1, N'k', N'1', 1, N'kevinalnunez.kn@gmail.com', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
GO
INSERT [dbo].[Pagina] ([Identificacion], [Tipo_Pagina], [Nombre_Pagina], [Descripcion_Pagina], [Img_pag]) VALUES (1, N'Informativa', N'cuidado del planeta', N'cuidamos el planeta de todo, eso debemos hacer', N'EcoAmigos 5.jpg')
GO
INSERT [dbo].[Publicaciones] ([Nombre_Pag], [Titulo], [Contenido], [Img_Publi]) VALUES (N'cuidado del planeta', N'primer ', N'sadadasdasd', N'EcoAmigos 6.jpg')
GO
INSERT [dbo].[Usuario] ([Tipo_Documento], [Documento], [Nombres], [Apellidos], [Correo], [Telefono], [Usuario], [Contraseña]) VALUES (N'Cedula de Ciudadania', 123121, N'kevin', N'nuñez', N'ktrabajo03@gmail.com', 1321, N'ka', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
GO
USE [master]
GO
ALTER DATABASE [EcoAmigos] SET  READ_WRITE 
GO
