﻿CREATE TABLE [dbo].[WINE_BOTTLE_WINE] (
    [WINE_BOTTLE_WINE_ID] UNIQUEIDENTIFIER NOT NULL,
    [WINE_BOTTLE_ID]      UNIQUEIDENTIFIER NOT NULL,
    [WINE_ID]             UNIQUEIDENTIFIER NOT NULL,
    PRIMARY KEY CLUSTERED ([WINE_BOTTLE_WINE_ID] ASC)
);

