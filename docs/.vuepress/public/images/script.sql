USE [SAAS_HR2]
GO
/****** Object:  Table [dbo].[Demo_School]    Script Date: 2021/11/30 15:28:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Demo_School](
	[SchoolId] [uniqueidentifier] NOT NULL,
	[SchoolName] [nvarchar](64) NOT NULL,
	[Remark] [nvarchar](64) NULL,
	[Status] [tinyint] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[CreateUserId] [uniqueidentifier] NOT NULL,
	[CreateUser] [nvarchar](32) NOT NULL,
	[LastUpTime] [datetime] NOT NULL,
	[LastUpUser] [nvarchar](32) NOT NULL,
	[LastUpUserId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SchoolId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Demo_School2Student]    Script Date: 2021/11/30 15:28:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Demo_School2Student](
	[SchoolId] [uniqueidentifier] NOT NULL,
	[StudentId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SchoolId] ASC,
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Demo_School] ([SchoolId], [SchoolName], [Remark], [Status], [CreateTime], [CreateUserId], [CreateUser], [LastUpTime], [LastUpUser], [LastUpUserId]) VALUES (N'5e5b61af-b6ac-4856-82fc-6662bb08f51e', N'麻省理工学院', NULL, 2, CAST(N'2021-11-30T11:42:20.573' AS DateTime), N'2431dd76-8a28-442d-bb88-20217781ff1d', N'胥宇', CAST(N'2021-11-30T11:42:20.573' AS DateTime), N'胥宇', N'2431dd76-8a28-442d-bb88-20217781ff1d')
INSERT [dbo].[Demo_School] ([SchoolId], [SchoolName], [Remark], [Status], [CreateTime], [CreateUserId], [CreateUser], [LastUpTime], [LastUpUser], [LastUpUserId]) VALUES (N'17c589b5-d517-4f70-ac38-77ab1d999496', N'斯坦福大学', NULL, 2, CAST(N'2021-11-30T11:43:16.223' AS DateTime), N'2431dd76-8a28-442d-bb88-20217781ff1d', N'胥宇', CAST(N'2021-11-30T11:43:16.223' AS DateTime), N'胥宇', N'2431dd76-8a28-442d-bb88-20217781ff1d')
INSERT [dbo].[Demo_School] ([SchoolId], [SchoolName], [Remark], [Status], [CreateTime], [CreateUserId], [CreateUser], [LastUpTime], [LastUpUser], [LastUpUserId]) VALUES (N'93d33054-99ca-4fe6-a09e-bccba0f938bd', N'牛津大学', NULL, 2, CAST(N'2021-11-30T11:43:01.450' AS DateTime), N'2431dd76-8a28-442d-bb88-20217781ff1d', N'胥宇', CAST(N'2021-11-30T11:43:01.450' AS DateTime), N'胥宇', N'2431dd76-8a28-442d-bb88-20217781ff1d')
GO
INSERT [dbo].[Demo_School2Student] ([SchoolId], [StudentId]) VALUES (N'5e5b61af-b6ac-4856-82fc-6662bb08f51e', N'5b113f3a-8d7b-4eb5-b02a-5cf63da11ad5')
INSERT [dbo].[Demo_School2Student] ([SchoolId], [StudentId]) VALUES (N'5e5b61af-b6ac-4856-82fc-6662bb08f51e', N'e11d0c27-f3b4-49b9-8882-e87a1d8471f4')
INSERT [dbo].[Demo_School2Student] ([SchoolId], [StudentId]) VALUES (N'17c589b5-d517-4f70-ac38-77ab1d999496', N'f78ccfa3-5a89-4756-9a00-5df46bb68c1e')
INSERT [dbo].[Demo_School2Student] ([SchoolId], [StudentId]) VALUES (N'17c589b5-d517-4f70-ac38-77ab1d999496', N'9e4602a0-5dcd-4cd5-8d45-7b3b6fbc5209')
INSERT [dbo].[Demo_School2Student] ([SchoolId], [StudentId]) VALUES (N'93d33054-99ca-4fe6-a09e-bccba0f938bd', N'4c90ce56-35da-4949-93e0-46ac619f242a')
INSERT [dbo].[Demo_School2Student] ([SchoolId], [StudentId]) VALUES (N'93d33054-99ca-4fe6-a09e-bccba0f938bd', N'dfb422fb-3b9f-4abf-a471-705b5f1dcce3')
GO
ALTER TABLE [dbo].[Demo_School] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Demo_School] ADD  DEFAULT (getdate()) FOR [CreateTime]
GO
ALTER TABLE [dbo].[Demo_School] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [CreateUserId]
GO
ALTER TABLE [dbo].[Demo_School] ADD  DEFAULT ('') FOR [CreateUser]
GO
ALTER TABLE [dbo].[Demo_School] ADD  DEFAULT (getdate()) FOR [LastUpTime]
GO
ALTER TABLE [dbo].[Demo_School] ADD  DEFAULT ('') FOR [LastUpUser]
GO
ALTER TABLE [dbo].[Demo_School] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [LastUpUserId]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demo_School', @level2type=N'COLUMN',@level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demo_School', @level2type=N'COLUMN',@level2name=N'SchoolName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demo_School', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态|0-删除|1-禁用|2-启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demo_School', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demo_School', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demo_School', @level2type=N'COLUMN',@level2name=N'CreateUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demo_School', @level2type=N'COLUMN',@level2name=N'CreateUser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demo_School', @level2type=N'COLUMN',@level2name=N'LastUpTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demo_School', @level2type=N'COLUMN',@level2name=N'LastUpUser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demo_School', @level2type=N'COLUMN',@level2name=N'LastUpUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demo_School'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demo_School2Student', @level2type=N'COLUMN',@level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demo_School2Student', @level2type=N'COLUMN',@level2name=N'StudentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校和学生关系' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demo_School2Student'
GO




﻿USE [SAAS]
GO
/****** Object:  Table [dbo].[Demo_Student]    Script Date: 2021/11/30 15:29:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Demo_Student](
	[StudentId] [uniqueidentifier] NOT NULL,
	[StudentName] [nvarchar](64) NOT NULL,
	[StudentAge] [int] NOT NULL,
	[Remark] [nvarchar](64) NULL,
	[Status] [tinyint] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[CreateUserId] [uniqueidentifier] NOT NULL,
	[CreateUser] [nvarchar](32) NOT NULL,
	[LastUpTime] [datetime] NOT NULL,
	[LastUpUser] [nvarchar](32) NOT NULL,
	[LastUpUserId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Demo_Student] ([StudentId], [StudentName], [StudentAge], [Remark], [Status], [CreateTime], [CreateUserId], [CreateUser], [LastUpTime], [LastUpUser], [LastUpUserId]) VALUES (N'2205c7d0-8779-4c11-b5f8-36a611537d95', N'删除学生', 30, NULL, 0, CAST(N'2021-11-30T11:53:18.527' AS DateTime), N'2431dd76-8a28-442d-bb88-20217781ff1d', N'胥宇', CAST(N'2021-11-30T12:06:50.647' AS DateTime), N'胥宇', N'2431dd76-8a28-442d-bb88-20217781ff1d')
INSERT [dbo].[Demo_Student] ([StudentId], [StudentName], [StudentAge], [Remark], [Status], [CreateTime], [CreateUserId], [CreateUser], [LastUpTime], [LastUpUser], [LastUpUserId]) VALUES (N'4c90ce56-35da-4949-93e0-46ac619f242a', N'张三', 21, NULL, 2, CAST(N'2021-11-30T11:50:27.407' AS DateTime), N'2431dd76-8a28-442d-bb88-20217781ff1d', N'胥宇', CAST(N'2021-11-30T13:40:20.307' AS DateTime), N'胥宇', N'2431dd76-8a28-442d-bb88-20217781ff1d')
INSERT [dbo].[Demo_Student] ([StudentId], [StudentName], [StudentAge], [Remark], [Status], [CreateTime], [CreateUserId], [CreateUser], [LastUpTime], [LastUpUser], [LastUpUserId]) VALUES (N'5b113f3a-8d7b-4eb5-b02a-5cf63da11ad5', N'张飞', 30, NULL, 2, CAST(N'2021-11-30T11:53:06.497' AS DateTime), N'2431dd76-8a28-442d-bb88-20217781ff1d', N'胥宇', CAST(N'2021-11-30T11:53:06.497' AS DateTime), N'胥宇', N'2431dd76-8a28-442d-bb88-20217781ff1d')
INSERT [dbo].[Demo_Student] ([StudentId], [StudentName], [StudentAge], [Remark], [Status], [CreateTime], [CreateUserId], [CreateUser], [LastUpTime], [LastUpUser], [LastUpUserId]) VALUES (N'f78ccfa3-5a89-4756-9a00-5df46bb68c1e', N'小白', 25, NULL, 2, CAST(N'2021-11-30T11:51:53.987' AS DateTime), N'2431dd76-8a28-442d-bb88-20217781ff1d', N'胥宇', CAST(N'2021-11-30T11:51:53.987' AS DateTime), N'胥宇', N'2431dd76-8a28-442d-bb88-20217781ff1d')
INSERT [dbo].[Demo_Student] ([StudentId], [StudentName], [StudentAge], [Remark], [Status], [CreateTime], [CreateUserId], [CreateUser], [LastUpTime], [LastUpUser], [LastUpUserId]) VALUES (N'dfb422fb-3b9f-4abf-a471-705b5f1dcce3', N'李四', 25, NULL, 2, CAST(N'2021-11-30T11:51:13.490' AS DateTime), N'2431dd76-8a28-442d-bb88-20217781ff1d', N'胥宇', CAST(N'2021-11-30T11:51:13.490' AS DateTime), N'胥宇', N'2431dd76-8a28-442d-bb88-20217781ff1d')
INSERT [dbo].[Demo_Student] ([StudentId], [StudentName], [StudentAge], [Remark], [Status], [CreateTime], [CreateUserId], [CreateUser], [LastUpTime], [LastUpUser], [LastUpUserId]) VALUES (N'9e4602a0-5dcd-4cd5-8d45-7b3b6fbc5209', N'小黑', 29, NULL, 2, CAST(N'2021-11-30T11:52:02.497' AS DateTime), N'2431dd76-8a28-442d-bb88-20217781ff1d', N'胥宇', CAST(N'2021-11-30T11:52:02.497' AS DateTime), N'胥宇', N'2431dd76-8a28-442d-bb88-20217781ff1d')
INSERT [dbo].[Demo_Student] ([StudentId], [StudentName], [StudentAge], [Remark], [Status], [CreateTime], [CreateUserId], [CreateUser], [LastUpTime], [LastUpUser], [LastUpUserId]) VALUES (N'e11d0c27-f3b4-49b9-8882-e87a1d8471f4', N'超云', 29, NULL, 2, CAST(N'2021-11-30T11:52:57.783' AS DateTime), N'2431dd76-8a28-442d-bb88-20217781ff1d', N'胥宇', CAST(N'2021-11-30T11:52:57.783' AS DateTime), N'胥宇', N'2431dd76-8a28-442d-bb88-20217781ff1d')
GO
ALTER TABLE [dbo].[Demo_Student] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Demo_Student] ADD  DEFAULT (getdate()) FOR [CreateTime]
GO
ALTER TABLE [dbo].[Demo_Student] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [CreateUserId]
GO
ALTER TABLE [dbo].[Demo_Student] ADD  DEFAULT ('') FOR [CreateUser]
GO
ALTER TABLE [dbo].[Demo_Student] ADD  DEFAULT (getdate()) FOR [LastUpTime]
GO
ALTER TABLE [dbo].[Demo_Student] ADD  DEFAULT ('') FOR [LastUpUser]
GO
ALTER TABLE [dbo].[Demo_Student] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [LastUpUserId]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demo_Student', @level2type=N'COLUMN',@level2name=N'StudentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demo_Student', @level2type=N'COLUMN',@level2name=N'StudentName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年龄' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demo_Student', @level2type=N'COLUMN',@level2name=N'StudentAge'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demo_Student', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态|0-删除|1-禁用|2-启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demo_Student', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demo_Student', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demo_Student', @level2type=N'COLUMN',@level2name=N'CreateUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demo_Student', @level2type=N'COLUMN',@level2name=N'CreateUser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demo_Student', @level2type=N'COLUMN',@level2name=N'LastUpTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demo_Student', @level2type=N'COLUMN',@level2name=N'LastUpUser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demo_Student', @level2type=N'COLUMN',@level2name=N'LastUpUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Demo_Student'
GO
