﻿CREATE TABLE [dbo].[DOMAIN] (
    [DOMAIN_ID]          UNIQUEIDENTIFIER NOT NULL,
    [DOMAIN_NAME]        VARCHAR (50)     NOT NULL,
    [DOMAIN_DESCRIPTION] VARCHAR (250)    NULL,
    PRIMARY KEY CLUSTERED ([DOMAIN_ID] ASC)
);

