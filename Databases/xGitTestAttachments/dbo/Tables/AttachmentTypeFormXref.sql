CREATE TABLE [dbo].[AttachmentTypeFormXref] (
    [AttachmentTypeFormXrefId] INT           IDENTITY (1, 1) NOT NULL,
    [AttachmentTypeId]         INT           NOT NULL,
    [FormName]                 VARCHAR (255) NOT NULL,
    CONSTRAINT [PK_AttachmentTypeXref] PRIMARY KEY CLUSTERED ([AttachmentTypeFormXrefId] ASC)
);


GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_AttachmentTypeFormXref_FormName]
    ON [dbo].[AttachmentTypeFormXref]([FormName] ASC);


GO

CREATE NONCLUSTERED INDEX [NonClusteredIndex-20240709-115619]
    ON [dbo].[AttachmentTypeFormXref]([AttachmentTypeId] ASC);


GO

