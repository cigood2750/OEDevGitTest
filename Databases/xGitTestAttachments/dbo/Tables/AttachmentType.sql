CREATE TABLE [dbo].[AttachmentType] (
    [AttachmentTypeId]   INT          IDENTITY (1, 1) NOT NULL,
    [Name]               VARCHAR (50) NOT NULL,
    [CreateDate]         DATETIME     NOT NULL,
    [ModifyDate]         DATETIME     NOT NULL,
    [UserId]             INT          NOT NULL,
    [isDeleted]          BIT          NOT NULL,
    [AttachmentTypeCode] VARCHAR (15) NULL,
    CONSTRAINT [PK_AttachmentType] PRIMARY KEY CLUSTERED ([AttachmentTypeId] ASC)
);


GO

CREATE NONCLUSTERED INDEX [IX_AttachmentType_Code]
    ON [dbo].[AttachmentType]([AttachmentTypeCode] ASC);


GO

