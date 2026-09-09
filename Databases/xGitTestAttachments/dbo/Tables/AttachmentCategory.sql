CREATE TABLE [dbo].[AttachmentCategory] (
    [AttachmentCategoryId] INT          IDENTITY (1, 1) NOT NULL,
    [Description]          VARCHAR (50) NOT NULL,
    [CreateDate]           DATETIME     NULL,
    [ModifyDate]           DATETIME     NULL,
    [UserId]               INT          NULL,
    [isDeleted]            BIT          NULL,
    [Active]               BIT          NULL,
    CONSTRAINT [PK_AttachmentCategory] PRIMARY KEY CLUSTERED ([AttachmentCategoryId] ASC)
);


GO

