CREATE TABLE [dbo].[AttachmentCategoryTypeXref] (
    [AttachmentCategoryId] INT      NOT NULL,
    [AttachmentTypeId]     INT      NOT NULL,
    [CreateDate]           DATETIME NOT NULL,
    [ModifyDate]           DATETIME NOT NULL,
    [UserId]               INT      NOT NULL,
    [isDeleted]            BIT      NOT NULL,
    [AttachmentLimit]      INT      NULL,
    CONSTRAINT [PK_AttachmentCategoryTypeXref] PRIMARY KEY CLUSTERED ([AttachmentCategoryId] ASC, [AttachmentTypeId] ASC)
);


GO

CREATE NONCLUSTERED INDEX [IX_AttachmentCategoryTypeXref_AttachmentTypeId]
    ON [dbo].[AttachmentCategoryTypeXref]([AttachmentTypeId] ASC);


GO

