
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/20/2018 12:02:30
-- Generated from EDMX file: C:\Users\Jakub\Documents\Visual Studio 2015\Projects\FabrykaSPTI_PJ\FabrykaSPTI_PJ\Models\ModelFabryki.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [FabrykaSPTI_PJ];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'HalaSet'
CREATE TABLE [dbo].[HalaSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nazwa] nvarchar(max)  NOT NULL,
    [Adres] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'MaszynaSet'
CREATE TABLE [dbo].[MaszynaSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nazwa] nvarchar(max)  NOT NULL,
    [NumerEwidencyjny] nvarchar(max)  NOT NULL,
    [DataUruchomienia] datetime  NULL,
    [HalaId] int  NOT NULL
);
GO

-- Creating table 'OperatorSet'
CREATE TABLE [dbo].[OperatorSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nazwisko] nvarchar(max)  NOT NULL,
    [Imie] nvarchar(max)  NOT NULL,
    [Placa] float  NOT NULL,
    [DataZatrudnienia] datetime  NOT NULL
);
GO

-- Creating table 'OperatorMaszyna'
CREATE TABLE [dbo].[OperatorMaszyna] (
    [Operatorzy_Id] int  NOT NULL,
    [Maszyny_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'HalaSet'
ALTER TABLE [dbo].[HalaSet]
ADD CONSTRAINT [PK_HalaSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'MaszynaSet'
ALTER TABLE [dbo].[MaszynaSet]
ADD CONSTRAINT [PK_MaszynaSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'OperatorSet'
ALTER TABLE [dbo].[OperatorSet]
ADD CONSTRAINT [PK_OperatorSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Operatorzy_Id], [Maszyny_Id] in table 'OperatorMaszyna'
ALTER TABLE [dbo].[OperatorMaszyna]
ADD CONSTRAINT [PK_OperatorMaszyna]
    PRIMARY KEY CLUSTERED ([Operatorzy_Id], [Maszyny_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [HalaId] in table 'MaszynaSet'
ALTER TABLE [dbo].[MaszynaSet]
ADD CONSTRAINT [FK_HalaMaszyna]
    FOREIGN KEY ([HalaId])
    REFERENCES [dbo].[HalaSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_HalaMaszyna'
CREATE INDEX [IX_FK_HalaMaszyna]
ON [dbo].[MaszynaSet]
    ([HalaId]);
GO

-- Creating foreign key on [Operatorzy_Id] in table 'OperatorMaszyna'
ALTER TABLE [dbo].[OperatorMaszyna]
ADD CONSTRAINT [FK_OperatorMaszyna_Operator]
    FOREIGN KEY ([Operatorzy_Id])
    REFERENCES [dbo].[OperatorSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Maszyny_Id] in table 'OperatorMaszyna'
ALTER TABLE [dbo].[OperatorMaszyna]
ADD CONSTRAINT [FK_OperatorMaszyna_Maszyna]
    FOREIGN KEY ([Maszyny_Id])
    REFERENCES [dbo].[MaszynaSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OperatorMaszyna_Maszyna'
CREATE INDEX [IX_FK_OperatorMaszyna_Maszyna]
ON [dbo].[OperatorMaszyna]
    ([Maszyny_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------