CREATE TABLE [dbo].[Attachment] (
    [AttachmentId]                INT             IDENTITY (1, 1) NOT NULL,
    [GenericId]                   INT             NOT NULL,
    [AttachmentTypeId]            INT             NOT NULL,
    [FileName]                    VARCHAR (100)   NOT NULL,
    [FileExtension]               VARCHAR (6)     NOT NULL,
    [FileDescription]             VARCHAR (300)   NULL,
    [FileDate]                    DATETIME        NOT NULL,
    [TimeZoneId]                  INT             NULL,
    [FileDateIsDst]               BIT             NOT NULL,
    [isPicture]                   BIT             NOT NULL,
    [isDeleted]                   BIT             NOT NULL,
    [FileData]                    VARBINARY (MAX) NULL,
    [CreateDate]                  DATETIME        NOT NULL,
    [ModifyDate]                  DATETIME        NOT NULL,
    [UserId]                      INT             NOT NULL,
    [NeedsFileData]               BIT             NULL,
    [ClientFileUri]               VARCHAR (1000)  NULL,
    [CreatedByUserId]             INT             NULL,
    [RemoveClientFileAfterUpload] BIT             NULL,
    [AttachmentCategoryId]        INT             NULL,
    [isArchived]                  BIT             CONSTRAINT [DF_Attachment_isArchived] DEFAULT ((0)) NULL,
    [isFromCBEMobile]             BIT             NULL,
    [isFromCWP]                   BIT             NULL,
    [isMarkedFileNotPresent]      BIT             NULL,
    [FileDataPurgeDate]           DATETIME        NULL,
    [isArchivedLTS]               BIT             NULL,
    [NewColumn]                   NCHAR (10)      NULL,
    CONSTRAINT [PK_Attachment] PRIMARY KEY CLUSTERED ([AttachmentId] ASC)
);


GO

CREATE NONCLUSTERED INDEX [IX_Attachment_AttachmentId]
    ON [dbo].[Attachment]([AttachmentId] ASC, [isDeleted] ASC)
    INCLUDE([FileName], [FileDescription]);


GO

CREATE NONCLUSTERED INDEX [IX_Attachment_NeedsFileData_isDeleted_CreatedByUserId]
    ON [dbo].[Attachment]([isDeleted] ASC, [NeedsFileData] ASC, [CreatedByUserId] ASC, [CreateDate] ASC)
    INCLUDE([ClientFileUri], [RemoveClientFileAfterUpload]);


GO

CREATE NONCLUSTERED INDEX [IX_Attachment_GenericId_isDeleted]
    ON [dbo].[Attachment]([GenericId] ASC, [isDeleted] ASC);


GO

CREATE NONCLUSTERED INDEX [IX_Attachment_CreateDate]
    ON [dbo].[Attachment]([CreateDate] ASC, [isArchivedLTS] ASC);


GO

