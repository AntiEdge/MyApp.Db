USE [master]
GO
/****** Object:  Database [MyAppDb]    Script Date: 02/01/2024 16:45:20 ******/
CREATE DATABASE [MyAppDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MyAppDb', FILENAME = N'C:\Users\antoineb\MyAppDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MyAppDb_log', FILENAME = N'C:\Users\antoineb\MyAppDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MyAppDb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MyAppDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MyAppDb] SET ANSI_NULL_DEFAULT ON 
GO
ALTER DATABASE [MyAppDb] SET ANSI_NULLS ON 
GO
ALTER DATABASE [MyAppDb] SET ANSI_PADDING ON 
GO
ALTER DATABASE [MyAppDb] SET ANSI_WARNINGS ON 
GO
ALTER DATABASE [MyAppDb] SET ARITHABORT ON 
GO
ALTER DATABASE [MyAppDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MyAppDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MyAppDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MyAppDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MyAppDb] SET CURSOR_DEFAULT  LOCAL 
GO
ALTER DATABASE [MyAppDb] SET CONCAT_NULL_YIELDS_NULL ON 
GO
ALTER DATABASE [MyAppDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MyAppDb] SET QUOTED_IDENTIFIER ON 
GO
ALTER DATABASE [MyAppDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MyAppDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MyAppDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MyAppDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MyAppDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MyAppDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MyAppDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MyAppDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MyAppDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MyAppDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MyAppDb] SET  MULTI_USER 
GO
ALTER DATABASE [MyAppDb] SET PAGE_VERIFY NONE  
GO
ALTER DATABASE [MyAppDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MyAppDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MyAppDb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [MyAppDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MyAppDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [MyAppDb] SET QUERY_STORE = OFF
GO
USE [MyAppDb]
GO
/****** Object:  Table [dbo].[AROME]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AROME](
	[AROME_ID] [uniqueidentifier] NOT NULL,
	[AROME_NAME] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AROME_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CEPAGE]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CEPAGE](
	[CEPAGE_ID] [uniqueidentifier] NOT NULL,
	[CEPAGE_NAME] [varchar](50) NOT NULL,
	[CEPAGE_COLOR] [varchar](50) NOT NULL,
	[CEPAGE_PERCENT] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CEPAGE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DOMAIN]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOMAIN](
	[DOMAIN_ID] [uniqueidentifier] NOT NULL,
	[DOMAIN_NAME] [varchar](50) NOT NULL,
	[DOMAIN_DESCRIPTION] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[DOMAIN_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INGREDIENT]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INGREDIENT](
	[INGREDIENT_ID] [uniqueidentifier] NOT NULL,
	[NAME] [varchar](50) NOT NULL,
	[ID_QUANTITY] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_INGREDIENT] PRIMARY KEY CLUSTERED 
(
	[INGREDIENT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUANTITY]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUANTITY](
	[QUANTITY_ID] [uniqueidentifier] NOT NULL,
	[QUANTITY_VALUE] [decimal](6, 2) NOT NULL,
	[QUANTITY_UNIT] [smallint] NOT NULL,
 CONSTRAINT [PK_QUANTITY] PRIMARY KEY CLUSTERED 
(
	[QUANTITY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RECIPE]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RECIPE](
	[RECIPE_ID] [uniqueidentifier] NOT NULL,
	[NAME] [varchar](50) NOT NULL,
	[NB_PERSON] [smallint] NOT NULL,
 CONSTRAINT [PK_RECIPE] PRIMARY KEY CLUSTERED 
(
	[RECIPE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RECIPE_INGREDIENT]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RECIPE_INGREDIENT](
	[RECIPE_INGREDIENT_ID] [uniqueidentifier] NOT NULL,
	[RECIPE_ID] [uniqueidentifier] NOT NULL,
	[INGREDIENT_ID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_RECIPE_INGREDIENT] PRIMARY KEY CLUSTERED 
(
	[RECIPE_INGREDIENT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[REGION]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[REGION](
	[REGION_ID] [uniqueidentifier] NOT NULL,
	[REGION_NAME] [varchar](50) NOT NULL,
	[REGION_CITY] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[REGION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[STEP]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STEP](
	[STEP_ID] [uniqueidentifier] NOT NULL,
	[DESCRIPTION] [varchar](250) NULL,
	[STEP_ORDER] [smallint] NOT NULL,
	[RECIPE_ID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_STEP] PRIMARY KEY CLUSTERED 
(
	[STEP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WINE]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WINE](
	[WINE_ID] [uniqueidentifier] NOT NULL,
	[WINE_NAME] [varchar](50) NOT NULL,
	[WINE_DESCRIPTION] [varchar](250) NULL,
	[WINE_MILLESIME] [int] NOT NULL,
	[WINE_COLOR] [smallint] NOT NULL,
	[WINE_APPELATION] [varchar](50) NOT NULL,
	[WINE_RANKING] [varchar](50) NOT NULL,
	[QUANTITY_ID] [uniqueidentifier] NOT NULL,
	[DOMAIN_ID] [uniqueidentifier] NOT NULL,
	[REGION_ID] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[WINE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WINE_AROME]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WINE_AROME](
	[WINE_AROME_ID] [uniqueidentifier] NOT NULL,
	[WINE_ID] [uniqueidentifier] NOT NULL,
	[AROME_ID] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[WINE_AROME_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WINE_BOTTLE]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WINE_BOTTLE](
	[WINE_BOTTLE_ID] [uniqueidentifier] NOT NULL,
	[WINE_BOTTLE_REFERENCE] [varchar](12) NULL,
	[WINE_BOTTLE_ENTRY_DATE] [datetime] NULL,
	[WINE_BOTTLE_PREDICTED_DATE] [datetime] NULL,
	[WINE_BOTTLE_EXIT_DATE] [datetime] NULL,
	[WINE_BOTTLE_REVIEW] [varchar](500) NULL,
	[WINE_BOTTLE_STATUS] [smallint] NOT NULL,
	[WINE_CELLAR_ID] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[WINE_BOTTLE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WINE_BOTTLE_WINE]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WINE_BOTTLE_WINE](
	[WINE_BOTTLE_WINE_ID] [uniqueidentifier] NOT NULL,
	[WINE_BOTTLE_ID] [uniqueidentifier] NOT NULL,
	[WINE_ID] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[WINE_BOTTLE_WINE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WINE_CELLAR]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WINE_CELLAR](
	[WINE_CELLAR_ID] [uniqueidentifier] NOT NULL,
	[WINE_CELLAR_NAME] [varchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[WINE_CELLAR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WINE_CEPAGE]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WINE_CEPAGE](
	[WINE_CEPAGE_ID] [uniqueidentifier] NOT NULL,
	[WINE_ID] [uniqueidentifier] NOT NULL,
	[CEPAGE_ID] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[WINE_CEPAGE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_arome_delete]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_arome_delete]

	@arome_id UNIQUEIDENTIFIER = NULL

AS
BEGIN

	SET NOCOUNT ON;

	DELETE FROM AROME
	WHERE AROME_ID = @arome_id

END
GO
/****** Object:  StoredProcedure [dbo].[sp_arome_insert]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_arome_insert]

	@arome_id UNIQUEIDENTIFIER = NULL,
	@name VARCHAR(50) = NULL

AS
BEGIN

	SET NOCOUNT ON;

	INSERT INTO AROME 
	(
		AROME_ID,
		AROME_NAME
	)
	VALUES 
	(
		@arome_id, 
		@name
	)

END
GO
/****** Object:  StoredProcedure [dbo].[sp_arome_select]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_arome_select]
	@arome_id UNIQUEIDENTIFIER = NULL,
	@name VARCHAR(50) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF(@arome_id IS NOT NULL)
		
		SELECT * FROM AROME a (NOLOCK)
		WHERE a.AROME_ID = @arome_id

	ELSE IF(@name IS NOT NULL)
		
		SELECT * FROM AROME a (NOLOCK)
		WHERE a.AROME_NAME = @name

	ELSE

		SELECT * FROM AROME a (NOLOCK)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_arome_update]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_arome_update]

	@arome_id UNIQUEIDENTIFIER = NULL,
	@name VARCHAR(50) = NULL

AS
BEGIN

	SET NOCOUNT ON;

	UPDATE AROME
	SET AROME_ID = @arome_id,
		AROME_NAME = @name
	WHERE AROME_ID = @arome_id

END
GO
/****** Object:  StoredProcedure [dbo].[sp_cepage_delete]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_cepage_delete]

	@cepage_id UNIQUEIDENTIFIER = NULL

AS
BEGIN

	SET NOCOUNT ON;

	DELETE FROM CEPAGE
	WHERE CEPAGE_ID = @cepage_id

END
GO
/****** Object:  StoredProcedure [dbo].[sp_cepage_insert]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_cepage_insert]

	@cepage_id UNIQUEIDENTIFIER = NULL,
	@name VARCHAR(50) = NULL,
	@color VARCHAR(50) = NULL,
	@percent SMALLINT = NULL

AS
BEGIN

	SET NOCOUNT ON;

	INSERT INTO CEPAGE 
	(
		CEPAGE_ID,
		CEPAGE_NAME,
		CEPAGE_COLOR,
		CEPAGE_PERCENT
	)
	VALUES 
	(
		@cepage_id, 
		@name, 
		@color,
		@percent
	)

END
GO
/****** Object:  StoredProcedure [dbo].[sp_cepage_select]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_cepage_select]
	@cepage_id UNIQUEIDENTIFIER = NULL,
	@name VARCHAR(50) = NULL,
	@color VARCHAR(50) = NULL,
	@percent SMALLINT = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF(@cepage_id IS NOT NULL)
		
		SELECT * FROM CEPAGE c (NOLOCK)
		WHERE c.CEPAGE_ID = @cepage_id

	ELSE IF(@name IS NOT NULL AND @color IS NOT NULL AND @percent IS NOT NULL)
		
		SELECT * FROM CEPAGE c (NOLOCK)
		WHERE c.CEPAGE_NAME = @name
			AND c.CEPAGE_COLOR = @color
			AND c.CEPAGE_PERCENT = @percent

	ELSE

		SELECT * FROM CEPAGE c (NOLOCK)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_cepage_update]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_cepage_update]

	@cepage_id UNIQUEIDENTIFIER = NULL,
	@name VARCHAR(50) = NULL,
	@color VARCHAR(50) = NULL,
	@percent SMALLINT = NULL

AS
BEGIN

	SET NOCOUNT ON;

	UPDATE CEPAGE
	SET CEPAGE_ID = @cepage_id,
		CEPAGE_NAME = @name,
		CEPAGE_COLOR = @color,
		CEPAGE_PERCENT = @percent
	WHERE CEPAGE_ID = @cepage_id

END
GO
/****** Object:  StoredProcedure [dbo].[sp_domain_delete]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_domain_delete]

	@domain_id UNIQUEIDENTIFIER = NULL

AS
BEGIN

	SET NOCOUNT ON;

	DELETE FROM DOMAIN
	WHERE DOMAIN_ID = @domain_id

END
GO
/****** Object:  StoredProcedure [dbo].[sp_domain_insert]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_domain_insert]

	@domain_id UNIQUEIDENTIFIER = NULL,
	@name VARCHAR(50) = NULL,
	@description VARCHAR(250) = NULL

AS
BEGIN

	SET NOCOUNT ON;

	INSERT INTO DOMAIN 
	(
		DOMAIN_ID,
		DOMAIN_NAME,
		DOMAIN_DESCRIPTION
	)
	VALUES 
	(
		@domain_id, 
		@name, 
		@description
	)

END
GO
/****** Object:  StoredProcedure [dbo].[sp_domain_select]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_domain_select]
	@domain_id UNIQUEIDENTIFIER = NULL,
	@name VARCHAR(50) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF(@domain_id IS NOT NULL)
		
		SELECT * FROM DOMAIN d (NOLOCK)
		WHERE d.DOMAIN_ID = @domain_id

	ELSE IF(@name IS NOT NULL)
		
		SELECT * FROM DOMAIN d (NOLOCK)
		WHERE d.DOMAIN_NAME = @name

	ELSE

		SELECT * FROM DOMAIN d (NOLOCK)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_domain_update]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_domain_update]

	@domain_id UNIQUEIDENTIFIER = NULL,
	@name VARCHAR(50) = NULL,
	@description VARCHAR(250) = NULL

AS
BEGIN

	SET NOCOUNT ON;

	UPDATE DOMAIN
	SET DOMAIN_ID = @domain_id,
		DOMAIN_NAME = @name,
		DOMAIN_DESCRIPTION = @description
	WHERE DOMAIN_ID = @domain_id

END
GO
/****** Object:  StoredProcedure [dbo].[sp_ingredient_delete]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_ingredient_delete] 
	-- Add the parameters for the stored procedure here
	@ingredient_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE FROM INGREDIENT WHERE INGREDIENT_ID = @ingredient_id;
	DELETE FROM RECIPE_INGREDIENT WHERE INGREDIENT_ID = @ingredient_id;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ingredient_insert]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_ingredient_insert] 
	-- Add the parameters for the stored procedure here
	@ingredient_id UNIQUEIDENTIFIER = NULL, 
	@name VARCHAR(50) = NULL,
	@id_quantity UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	--IF(@ingredient_id IS NOT NULL AND @name IS NOT NULL AND @id_quantity IS NOT NULL)
	INSERT INTO INGREDIENT (INGREDIENT_ID, NAME, ID_QUANTITY)
	VALUES (@ingredient_id, @name, @id_quantity)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ingredient_select]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_ingredient_select]
	@ingredient_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF(@ingredient_id IS NOT NULL)
		
		SELECT * FROM INGREDIENT i (NOLOCK)
		INNER JOIN QUANTITY q (NOLOCK) ON i.ID_QUANTITY = q.QUANTITY_ID
		WHERE i.INGREDIENT_ID = @ingredient_id

	ELSE

		SELECT * FROM INGREDIENT i (NOLOCK)
		INNER JOIN QUANTITY q (NOLOCK) ON i.ID_QUANTITY = q.QUANTITY_ID
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ingredient_update]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_ingredient_update] 
	-- Add the parameters for the stored procedure here
	@ingredient_id UNIQUEIDENTIFIER = NULL, 
	@name VARCHAR(50) = NULL,
	@id_quantity UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE INGREDIENT
	SET [NAME] = @name, ID_QUANTITY = @id_quantity
	WHERE INGREDIENT_ID = @ingredient_id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_quantity_delete]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_quantity_delete] 
	-- Add the parameters for the stored procedure here
	@quantity_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE FROM QUANTITY WHERE QUANTITY_ID = @quantity_id;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_quantity_insert]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_quantity_insert] 
	-- Add the parameters for the stored procedure here
	@quantity_id UNIQUEIDENTIFIER = NULL, 
	@value DECIMAL(6,2) = NULL,
	@unit SMALLINT = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	--IF(@ingredient_id IS NOT NULL AND @name IS NOT NULL AND @id_quantity IS NOT NULL)
	INSERT INTO QUANTITY (QUANTITY_ID, QUANTITY_VALUE, QUANTITY_UNIT)
	VALUES (@quantity_id, @value, @unit)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_quantity_select]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_quantity_select]
	@quantity_id UNIQUEIDENTIFIER = NULL,
	@value DECIMAL(6,2) = NULL,
	@unit SMALLINT = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF(@quantity_id IS NOT NULL)
		
		SELECT * FROM QUANTITY q (NOLOCK)
		WHERE q.QUANTITY_ID = @quantity_id

	ELSE IF(@value IS NOT NULL AND @unit IS NOT NULL)
		
		SELECT * FROM QUANTITY q (NOLOCK)
		WHERE q.QUANTITY_VALUE = @value
			AND q.QUANTITY_UNIT = @unit

	ELSE

		SELECT * FROM QUANTITY q (NOLOCK)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_quantity_update]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_quantity_update] 
	-- Add the parameters for the stored procedure here
	@quantity_id UNIQUEIDENTIFIER = NULL, 
	@value DECIMAL(6,2) = NULL,
	@unit SMALLINT = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE QUANTITY
	SET QUANTITY_VALUE = @value, QUANTITY_UNIT = @unit
	WHERE QUANTITY_ID = @quantity_id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_recipe_delete]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_recipe_delete] 
	@recipe_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE FROM RECIPE WHERE RECIPE_ID = @recipe_id;
	DELETE FROM RECIPE_INGREDIENT WHERE RECIPE_ID = @recipe_id;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_recipe_ingredient_delete]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_recipe_ingredient_delete]
	@recipe_ingredient_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	--IF(@ingredient_id IS NOT NULL AND @name IS NOT NULL AND @id_quantity IS NOT NULL)
	DELETE FROM RECIPE_INGREDIENT
	WHERE RECIPE_INGREDIENT_ID = @recipe_ingredient_id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_recipe_ingredient_insert]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_recipe_ingredient_insert]
	@recipe_ingredient_id UNIQUEIDENTIFIER = NULL,
	@recipe_id UNIQUEIDENTIFIER = NULL,
	@ingredient_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	--IF(@ingredient_id IS NOT NULL AND @name IS NOT NULL AND @id_quantity IS NOT NULL)
	INSERT INTO RECIPE_INGREDIENT (RECIPE_INGREDIENT_ID, RECIPE_ID, INGREDIENT_ID)
	VALUES (@recipe_ingredient_id, @recipe_id, @ingredient_id)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_recipe_ingredient_select]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_recipe_ingredient_select]
	@recipe_ingredient_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF(@recipe_ingredient_id IS NOT NULL)
		
		SELECT * FROM RECIPE_INGREDIENT ri (NOLOCK)
		WHERE ri.RECIPE_INGREDIENT_ID = @recipe_ingredient_id

	ELSE

		SELECT * FROM RECIPE_INGREDIENT ri (NOLOCK)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_recipe_ingredient_update]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_recipe_ingredient_update]
	@recipe_ingredient_id UNIQUEIDENTIFIER = NULL,
	@recipe_id UNIQUEIDENTIFIER = NULL,
	@ingredient_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	--IF(@ingredient_id IS NOT NULL AND @name IS NOT NULL AND @id_quantity IS NOT NULL)
	UPDATE RECIPE_INGREDIENT
	SET RECIPE_ID = @recipe_id, INGREDIENT_ID = @ingredient_id
	WHERE RECIPE_INGREDIENT_ID = @recipe_ingredient_id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_recipe_insert]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_recipe_insert] 
	-- Add the parameters for the stored procedure here
	@recipe_id UNIQUEIDENTIFIER = NULL, 
	@name VARCHAR(50) = NULL,
	@nb_person SMALLINT = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	--IF(@ingredient_id IS NOT NULL AND @name IS NOT NULL AND @id_quantity IS NOT NULL)
	INSERT INTO RECIPE (RECIPE_ID, NAME, NB_PERSON)
	VALUES (@recipe_id, @name, @nb_person)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_recipe_select]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_recipe_select] 
	@recipe_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF(@recipe_id IS NOT NULL)
		
		SELECT r.*, i.*, s.* FROM RECIPE r (NOLOCK)		
		INNER JOIN RECIPE_INGREDIENT ri (NOLOCK) ON r.RECIPE_ID = ri.RECIPE_ID
		INNER JOIN INGREDIENT i (NOLOCK) ON ri.INGREDIENT_ID = i.INGREDIENT_ID
		INNER JOIN STEP s (NOLOCK) ON r.RECIPE_ID = s.RECIPE_ID
		WHERE r.RECIPE_ID = @recipe_id

	ELSE

		SELECT r.*, i.*, s.* FROM RECIPE r (NOLOCK)		
		INNER JOIN RECIPE_INGREDIENT ri (NOLOCK) ON r.RECIPE_ID = ri.RECIPE_ID
		INNER JOIN INGREDIENT i (NOLOCK) ON ri.INGREDIENT_ID = i.INGREDIENT_ID
		INNER JOIN STEP s (NOLOCK) ON r.RECIPE_ID = s.RECIPE_ID
END
GO
/****** Object:  StoredProcedure [dbo].[sp_recipe_update]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_recipe_update] 
	-- Add the parameters for the stored procedure here
	@recipe_id UNIQUEIDENTIFIER = NULL, 
	@name VARCHAR(50) = NULL,
	@nb_person SMALLINT = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE RECIPE
	SET [NAME] = @name, NB_PERSON = @nb_person
	WHERE RECIPE_ID = @recipe_id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_region_delete]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_region_delete]

	@region_id UNIQUEIDENTIFIER = NULL

AS
BEGIN

	SET NOCOUNT ON;
	
	DELETE FROM REGION
	WHERE REGION_ID = @region_id

END
GO
/****** Object:  StoredProcedure [dbo].[sp_region_insert]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_region_insert]

	@region_id UNIQUEIDENTIFIER = NULL,
	@name VARCHAR(50) = NULL,
	@city VARCHAR(50) = NULL

AS
BEGIN

	SET NOCOUNT ON;

	INSERT INTO REGION 
	(
		REGION_ID,
		REGION_NAME,
		REGION_CITY
	)
	VALUES 
	(
		@region_id, 
		@name, 
		@city
	)

END
GO
/****** Object:  StoredProcedure [dbo].[sp_region_select]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_region_select]

	@region_id UNIQUEIDENTIFIER = NULL,
	@name VARCHAR(50) = NULL,
	@city VARCHAR(50) = NULL

AS
BEGIN

	SET NOCOUNT ON;

	IF(@region_id IS NOT NULL)
		
		SELECT * FROM REGION r (NOLOCK)
		WHERE r.REGION_ID = @region_id

	ELSE IF(@name IS NOT NULL AND @city IS NOT NULL)
		
		SELECT * FROM REGION r (NOLOCK)
		WHERE r.REGION_NAME = @name
			AND r.REGION_CITY = @city

	ELSE

		SELECT * FROM REGION r (NOLOCK)

END
GO
/****** Object:  StoredProcedure [dbo].[sp_region_update]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_region_update]

	@region_id UNIQUEIDENTIFIER = NULL,
	@name VARCHAR(50) = NULL,
	@city VARCHAR(50) = NULL

AS
BEGIN

	SET NOCOUNT ON;

	UPDATE REGION
	SET REGION_ID = @region_id, 
		REGION_NAME = @name, 
		REGION_CITY = @city
	WHERE REGION_ID = @region_id

END
GO
/****** Object:  StoredProcedure [dbo].[sp_step_delete]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_step_delete] 
	@step_id UNIQUEIDENTIFIER = NULL,
	@recipe_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
	IF(@recipe_id IS NOT NULL)
		
		DELETE FROM STEP WHERE RECIPE_ID = @recipe_id;

	ELSE

		DELETE FROM STEP WHERE STEP_ID = @step_id;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_step_insert]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_step_insert] 
	-- Add the parameters for the stored procedure here
	@step_id UNIQUEIDENTIFIER = NULL, 
	@description VARCHAR(250) = NULL,
	@step_order SMALLINT = NULL,
	@recipe_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	--IF(@ingredient_id IS NOT NULL AND @name IS NOT NULL AND @id_quantity IS NOT NULL)
	INSERT INTO STEP (STEP_ID, DESCRIPTION, STEP_ORDER, RECIPE_ID)
	VALUES (@step_id, @description, @step_order, @recipe_id)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_step_select]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_step_select] 
	@step_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF(@step_id IS NOT NULL)
		
		SELECT * FROM STEP s (NOLOCK)
		WHERE s.STEP_ID = @step_id

	ELSE

		SELECT * FROM STEP s (NOLOCK)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_step_update]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_step_update] 
	-- Add the parameters for the stored procedure here
	@step_id UNIQUEIDENTIFIER = NULL, 
	@description VARCHAR(250) = NULL,
	@step_order SMALLINT = NULL,
	@recipe_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE STEP
	SET [DESCRIPTION] = @description, STEP_ORDER = @step_order, RECIPE_ID = @recipe_id
	WHERE STEP_ID = @step_id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_wince_cellar_delete]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_wince_cellar_delete]
	@wine_cellar_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE FROM WINE_CELLAR
	WHERE WINE_CELLAR_ID = @wine_cellar_id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_wine_arome_delete]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_wine_arome_delete]
	@wine_arome_id UNIQUEIDENTIFIER = NULL,
	@wine_id UNIQUEIDENTIFIER = NULL,
	@arome_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF(@wine_id IS NOT NULL AND @arome_id IS NOT NULL)

		DELETE FROM WINE_AROME 
		WHERE WINE_ID = @wine_id
			AND AROME_ID = @arome_id;

	ELSE IF(@wine_id IS NOT NULL)

		DELETE FROM WINE_AROME 
		WHERE WINE_ID = @wine_id;

	ELSE IF(@arome_id IS NOT NULL)

		DELETE FROM WINE_AROME 
		WHERE AROME_ID = @arome_id;

	ELSE
		DELETE FROM WINE_AROME 
		WHERE WINE_AROME_ID = @wine_arome_id;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_wine_arome_insert]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_wine_arome_insert]

	@wine_arome_id UNIQUEIDENTIFIER = NULL,
	@wine_id UNIQUEIDENTIFIER = NULL,
	@arome_id UNIQUEIDENTIFIER = NULL

AS
BEGIN

	SET NOCOUNT ON;

	INSERT INTO WINE_AROME 
	(
		WINE_AROME_ID,
		WINE_ID,
		AROME_ID
	)
	VALUES 
	(
		@wine_arome_id, 
		@wine_id, 
		@arome_id
	)

END
GO
/****** Object:  StoredProcedure [dbo].[sp_wine_arome_select]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_wine_arome_select]
	@wine_arome_id UNIQUEIDENTIFIER = NULL,
	@wine_id UNIQUEIDENTIFIER = NULL,
	@arome_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	IF(@wine_id IS NOT NULL AND @arome_id IS NOT NULL)
		
		SELECT * FROM WINE_AROME wa (NOLOCK)
		WHERE wa.WINE_ID = @wine_id
			AND wa.AROME_ID = @arome_id

	ELSE IF(@wine_arome_id IS NOT NULL)
		
		SELECT * FROM WINE_AROME wa (NOLOCK)
		WHERE wa.WINE_AROME_ID = @wine_arome_id

	ELSE IF(@wine_id IS NOT NULL)

		SELECT * FROM WINE_AROME wa (NOLOCK)
		WHERE wa.WINE_ID = @wine_id

	ELSE IF(@arome_id IS NOT NULL)

		SELECT * FROM WINE_AROME wa (NOLOCK)
		WHERE wa.AROME_ID = @arome_id

	ELSE

		SELECT * FROM WINE_AROME wa (NOLOCK)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_wine_arome_select_aromes_of_wine]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_wine_arome_select_aromes_of_wine]
	@wine_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	IF(@wine_id IS NOT NULL)

		SELECT a.* FROM AROME a (NOLOCK)
		INNER JOIN WINE_AROME wa (NOLOCK) ON a.AROME_ID = wa.AROME_ID
		WHERE wa.WINE_ID = @wine_id

END
GO
/****** Object:  StoredProcedure [dbo].[sp_wine_arome_update]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_wine_arome_update]

	@wine_arome_id UNIQUEIDENTIFIER = NULL,
	@wine_id UNIQUEIDENTIFIER = NULL,
	@arome_id UNIQUEIDENTIFIER = NULL

AS
BEGIN

	SET NOCOUNT ON;

	UPDATE WINE_AROME
	SET WINE_ID = @wine_id,
		AROME_ID = @arome_id
	WHERE WINE_AROME_ID = @wine_arome_id

END
GO
/****** Object:  StoredProcedure [dbo].[sp_wine_bottle_delete]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_wine_bottle_delete]
	@wine_bottle_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE FROM WINE_BOTTLE
	WHERE WINE_BOTTLE_ID = @wine_bottle_id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_wine_bottle_insert]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_wine_bottle_insert]
	@wine_bottle_id UNIQUEIDENTIFIER = NULL,
	@reference VARCHAR(12) = NULL,
	@entry_date DATETIME = NULL,
	@predicted_date DATETIME = NULL,
	@exit_date DATETIME = NULL,
	@review VARCHAR(500) = NULL,
	@status SMALLINT = NULL,
	@wine_cellar_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO WINE_BOTTLE 
	(
		WINE_BOTTLE_ID, 
		WINE_BOTTLE_REFERENCE, 
		WINE_BOTTLE_ENTRY_DATE, 
		WINE_BOTTLE_PREDICTED_DATE, 
		WINE_BOTTLE_EXIT_DATE, 
		WINE_BOTTLE_REVIEW, 
		WINE_BOTTLE_STATUS,
		WINE_CELLAR_ID
	)
	VALUES 
	(
		@wine_bottle_id, 
		@reference, 
		@entry_date, 
		@predicted_date, 
		@exit_date, 
		@review, 
		@status,
		@wine_cellar_id
	)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_wine_bottle_select]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_wine_bottle_select]
	@wine_bottle_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF(@wine_bottle_id IS NOT NULL)
		
		SELECT * FROM WINE_BOTTLE wb (NOLOCK)
		WHERE wb.WINE_BOTTLE_ID = @wine_bottle_id

	ELSE

		SELECT * FROM WINE_BOTTLE wb (NOLOCK)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_wine_bottle_update]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_wine_bottle_update]
	@wine_bottle_id UNIQUEIDENTIFIER = NULL,
	@reference VARCHAR(12) = NULL,
	@entry_date DATETIME = NULL,
	@predicted_date DATETIME = NULL,
	@exit_date DATETIME = NULL,
	@review VARCHAR(500) = NULL,
	@status SMALLINT = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE WINE_BOTTLE
	SET 
		WINE_BOTTLE_REFERENCE = @reference,
		WINE_BOTTLE_ENTRY_DATE = @entry_date, 
		WINE_BOTTLE_PREDICTED_DATE = @predicted_date, 
		WINE_BOTTLE_EXIT_DATE = @exit_date, 
		WINE_BOTTLE_REVIEW = @review, 
		WINE_BOTTLE_STATUS = @status
	WHERE WINE_BOTTLE_ID = @wine_bottle_id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_wine_bottle_wine_delete]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_wine_bottle_wine_delete]
	@wine_bottle_wine_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE FROM WINE_BOTTLE_WINE
	WHERE WINE_BOTTLE_WINE_ID = @wine_bottle_wine_id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_wine_bottle_wine_insert]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_wine_bottle_wine_insert]
	@wine_bottle_wine_id UNIQUEIDENTIFIER = NULL,
	@wine_bottle_id UNIQUEIDENTIFIER = NULL,
	@wine_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO WINE_BOTTLE_WINE 
	(
		WINE_BOTTLE_WINE_ID, 
		WINE_BOTTLE_ID, 
		WINE_ID
	)
	VALUES 
	(
		@wine_bottle_wine_id, 
		@wine_bottle_id, 
		@wine_id
	)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_wine_bottle_wine_select]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_wine_bottle_wine_select]
	@wine_bottle_wine_id UNIQUEIDENTIFIER = NULL,
	@wine_bottle_id UNIQUEIDENTIFIER = NULL,
	@wine_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF(@wine_bottle_id IS NOT NULL AND @wine_id IS NOT NULL)
		
		SELECT * FROM WINE_BOTTLE_WINE wbw (NOLOCK)
		WHERE wbw.WINE_BOTTLE_ID = @wine_bottle_id
			AND WINE_ID = @wine_id

	ELSE IF(@wine_bottle_wine_id IS NOT NULL)
		
		SELECT * FROM WINE_BOTTLE_WINE wbw (NOLOCK)
		WHERE wbw.WINE_BOTTLE_WINE_ID = @wine_bottle_wine_id

	ELSE

		SELECT * FROM WINE_BOTTLE_WINE wbw (NOLOCK)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_wine_bottle_wine_update]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_wine_bottle_wine_update]
	@wine_bottle_wine_id UNIQUEIDENTIFIER = NULL,
	@wine_bottle_id UNIQUEIDENTIFIER = NULL,
	@wine_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE WINE_BOTTLE_WINE 
	SET 
		WINE_BOTTLE_ID = @wine_bottle_id,
		WINE_ID = @wine_id
	WHERE WINE_BOTTLE_WINE_ID = @wine_bottle_wine_id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_wine_cellar_insert]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_wine_cellar_insert]
	@wine_cellar_id UNIQUEIDENTIFIER = NULL,
	@name VARCHAR(25) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO WINE_CELLAR 
	(
		WINE_CELLAR_ID, 
		WINE_CELLAR_NAME
	)
	VALUES 
	(
		@wine_cellar_id,
		@name
	)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_wine_cellar_select]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_wine_cellar_select]
	@wine_cellar_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF(@wine_cellar_id IS NOT NULL)
		
		SELECT * FROM WINE_CELLAR wc (NOLOCK)
		WHERE wc.WINE_CELLAR_ID = @wine_cellar_id

	ELSE

		SELECT * FROM WINE_CELLAR wc (NOLOCK)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_wine_cellar_update]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_wine_cellar_update]
	@wine_cellar_id UNIQUEIDENTIFIER = NULL,
	@name VARCHAR(25) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE WINE_CELLAR
	SET 
		WINE_CELLAR_NAME = @name
	WHERE WINE_CELLAR_ID = @wine_cellar_id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_wine_cepage_delete]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_wine_cepage_delete]
	@wine_cepage_id UNIQUEIDENTIFIER = NULL,
	@wine_id UNIQUEIDENTIFIER = NULL,
	@cepage_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF(@wine_id IS NOT NULL AND @cepage_id IS NOT NULL)

		DELETE FROM WINE_CEPAGE 
		WHERE WINE_ID = @wine_id
			AND CEPAGE_ID = @cepage_id;

	ELSE IF(@wine_id IS NOT NULL)

		DELETE FROM WINE_CEPAGE 
		WHERE WINE_ID = @wine_id;

	ELSE IF(@cepage_id IS NOT NULL)

		DELETE FROM WINE_CEPAGE 
		WHERE CEPAGE_ID = @cepage_id;

	ELSE
		DELETE FROM WINE_CEPAGE 
		WHERE WINE_CEPAGE_ID = @wine_cepage_id;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_wine_cepage_insert]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_wine_cepage_insert]

	@wine_cepage_id UNIQUEIDENTIFIER = NULL,
	@wine_id UNIQUEIDENTIFIER = NULL,
	@cepage_id UNIQUEIDENTIFIER = NULL

AS
BEGIN

	SET NOCOUNT ON;

	INSERT INTO WINE_CEPAGE 
	(
		WINE_CEPAGE_ID,
		WINE_ID,
		CEPAGE_ID
	)
	VALUES 
	(
		@wine_cepage_id, 
		@wine_id, 
		@cepage_id
	)

END
GO
/****** Object:  StoredProcedure [dbo].[sp_wine_cepage_select]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_wine_cepage_select]
	@wine_cepage_id UNIQUEIDENTIFIER = NULL,
	@wine_id UNIQUEIDENTIFIER = NULL,
	@cepage_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF(@wine_id IS NOT NULL AND @cepage_id IS NOT NULL)
		
		SELECT * FROM WINE_CEPAGE wc (NOLOCK)
		WHERE wc.WINE_ID = @wine_id
			AND wc.CEPAGE_ID = @cepage_id

	ELSE IF(@wine_cepage_id IS NOT NULL)
		
		SELECT * FROM WINE_CEPAGE wc (NOLOCK)
		WHERE wc.WINE_CEPAGE_ID = @wine_cepage_id

	ELSE IF(@wine_id IS NOT NULL)
		
		SELECT * FROM WINE_CEPAGE wc (NOLOCK)
		WHERE wc.WINE_ID = @wine_id

	ELSE IF(@cepage_id IS NOT NULL)
		
		SELECT * FROM WINE_CEPAGE wc (NOLOCK)
		WHERE wc.CEPAGE_ID = @cepage_id

	ELSE

		SELECT * FROM WINE_CEPAGE wc (NOLOCK)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_wine_cepage_select_cepages_of_wine]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_wine_cepage_select_cepages_of_wine]
	@wine_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF(@wine_id IS NOT NULL)
		
		SELECT c.* FROM CEPAGE c (NOLOCK)
		INNER JOIN WINE_CEPAGE wc (NOLOCK) ON c.CEPAGE_ID = wc.CEPAGE_ID
		WHERE wc.WINE_ID = @wine_id

END
GO
/****** Object:  StoredProcedure [dbo].[sp_wine_cepage_update]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_wine_cepage_update]

	@wine_cepage_id UNIQUEIDENTIFIER = NULL,
	@wine_id UNIQUEIDENTIFIER = NULL,
	@cepage_id UNIQUEIDENTIFIER = NULL

AS
BEGIN

	SET NOCOUNT ON;

	UPDATE WINE_CEPAGE
	SET WINE_ID = @wine_id,
		CEPAGE_ID = @cepage_id
	WHERE WINE_CEPAGE_ID = @wine_cepage_id

END
GO
/****** Object:  StoredProcedure [dbo].[sp_wine_delete]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_wine_delete]
	@wine_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE FROM WINE
	WHERE WINE_ID = @wine_id;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_wine_insert]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_wine_insert]
	@wine_id UNIQUEIDENTIFIER = NULL,
	@name VARCHAR(50) = NULL,
	@description VARCHAR(250) = NULL,
	@millesime INT = NULL,
	@wine_color SMALLINT = NULL,
	@appelation VARCHAR(50) = NULL,
	@ranking VARCHAR(50) = NULL,
	@quantity_id UNIQUEIDENTIFIER = NULL,
	@domain_id UNIQUEIDENTIFIER = NULL,
	@region_id UNIQUEIDENTIFIER = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO WINE
	(
		WINE_ID,
		WINE_NAME,
		WINE_DESCRIPTION,
		WINE_MILLESIME,
		WINE_COLOR,
		WINE_APPELATION,
		WINE_RANKING,
		QUANTITY_ID,
		DOMAIN_ID,
		REGION_ID
	)
	VALUES 
	(
		@wine_id, 
		@name, 
		@description,
		@millesime,
		@wine_color,
		@appelation,
		@ranking,
		@quantity_id,
		@domain_id,
		@region_id
	)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_wine_select]    Script Date: 02/01/2024 16:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_wine_select]

	@wine_id UNIQUEIDENTIFIER = NULL,
	@name VARCHAR(50) = NULL,
	@millesime INT = NULL,
	@wine_color SMALLINT = NULL,
	@appelation VARCHAR(50) = NULL,
	@ranking VARCHAR(50) = NULL,
	@quantity_id UNIQUEIDENTIFIER = NULL,
	@domain_id UNIQUEIDENTIFIER = NULL,
	@region_id UNIQUEIDENTIFIER = NULL

AS
BEGIN

	SET NOCOUNT ON;	

	IF(@name IS NOT NULL AND @millesime IS NOT NULL AND @wine_color IS NOT NULL AND @appelation IS NOT NULL AND @ranking IS NOT NULL AND @quantity_id IS NOT NULL AND @domain_id IS NOT NULL AND @region_id IS NOT NULL)
		
		SELECT * FROM WINE w (NOLOCK)
		INNER JOIN QUANTITY q (NOLOCK) ON w.QUANTITY_ID = q.QUANTITY_ID
		INNER JOIN DOMAIN d (NOLOCK) ON w.DOMAIN_ID = d.DOMAIN_ID
		INNER JOIN REGION r (NOLOCK) ON w.REGION_ID = r.REGION_ID
		INNER JOIN WINE_CEPAGE wc (NOLOCK) ON w.WINE_ID = wc.WINE_ID
		INNER JOIN CEPAGE c (NOLOCK) ON wc.CEPAGE_ID = c.CEPAGE_ID
		INNER JOIN WINE_AROME wa (NOLOCK) ON w.WINE_ID = wa.WINE_ID
		INNER JOIN AROME a (NOLOCK) ON wa.AROME_ID = a.AROME_ID
		WHERE w.WINE_NAME = @name
			AND w.WINE_MILLESIME = @millesime
			AND w.WINE_COLOR = @wine_color
			AND w.WINE_APPELATION = @appelation
			AND w.WINE_RANKING = @ranking
			AND w.QUANTITY_ID = @quantity_id
			AND w.DOMAIN_ID = @domain_id
			AND w.REGION_ID = @region_id

	ELSE IF(@wine_id IS NOT NULL)
		
		SELECT * FROM WINE w (NOLOCK)
		INNER JOIN QUANTITY q (NOLOCK) ON w.QUANTITY_ID = q.QUANTITY_ID
		INNER JOIN DOMAIN d (NOLOCK) ON w.DOMAIN_ID = d.DOMAIN_ID
		INNER JOIN REGION r (NOLOCK) ON w.REGION_ID = r.REGION_ID
		WHERE w.WINE_ID = @wine_id

	ELSE

		SELECT * FROM WINE w (NOLOCK)
		INNER JOIN QUANTITY q (NOLOCK) ON w.QUANTITY_ID = q.QUANTITY_ID
		INNER JOIN DOMAIN d (NOLOCK) ON w.DOMAIN_ID = d.DOMAIN_ID
		INNER JOIN REGION r (NOLOCK) ON w.REGION_ID = r.REGION_ID

END
GO
USE [master]
GO
ALTER DATABASE [MyAppDb] SET  READ_WRITE 
GO
