﻿CREATE TABLE [dbo].[WINE_CEPAGE] (
    [WINE_CEPAGE_ID] UNIQUEIDENTIFIER NOT NULL,
    [WINE_ID]        UNIQUEIDENTIFIER NOT NULL,
    [CEPAGE_ID]      UNIQUEIDENTIFIER NOT NULL,
    PRIMARY KEY CLUSTERED ([WINE_CEPAGE_ID] ASC)
);

