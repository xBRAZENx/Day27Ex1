IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;
GO

BEGIN TRANSACTION;
GO

CREATE TABLE [Course] (
    [CId] int NOT NULL IDENTITY,
    [CName] nvarchar(max) NOT NULL,
    [CFee] real NOT NULL,
    [Status] nvarchar(max) NOT NULL,
    [Technology] nvarchar(max) NOT NULL,
    CONSTRAINT [PK_Course] PRIMARY KEY ([CId])
);
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20230816093145_FirstMig', N'7.0.10');
GO

COMMIT;
GO

