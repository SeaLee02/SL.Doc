# Demo介绍
此Demo主要是一个一多的分库操作。

[Demo下载](/images/Demo.zip)


## 00、Nuget.Config,Directory.Build.props
Nuget.Config 针对当前项目添加NuGet地址,打开项目的Nuget 包源设计的时候会自动添加 MuNuget的名字。这个是自己发布的Nuget包，Aspose打包就是发到这个地址。

Directory.Build.props 一些类库的项目文件夹外面都会有这个文件,可以帮助我们生成 *nupkg 文件。解决方案目录下回自动生成 _packages 文件夹,全部生成在这个里面。后面做Nuget包管理操作比较方便。

## 01、执行SQL语句创建表
下载Demo解压,执行srcipt脚本,可以直接跑自己本地的sqlserver,放到两个库里面。如果不是Sqlserver，具体配置需要根据SqlSugar实体进行配置。

## 02、修改链接地址
![修改链接](/images/修改链接.png)

下面的连个链接修改成自己的,ConfigId=1 配置为Demo_Student表的地址,ConfigId=0 配置为Demo_School和Demo_School2Student 的地址,ConnectionBase 这个类里面可以配置数据库类型，默认是SqlServer数据库。
```csharp
  //添加数据配置,登录信息,基础服务,仓储层
            List<ConnectionBase> connections = new List<ConnectionBase>
            {
               new ConnectionBase{
                ConfigId=0,
                ConnectionString="Data Source=10.1.0.131;Initial Catalog=SAAS_HR2;Persist Security Info=True;User ID=sa;password=90-=op[]"
               },
                new ConnectionBase{
                ConfigId=1,
                ConnectionString="Data Source=10.1.0.131;Initial Catalog=SAAS;Persist Security Info=True;User ID=sa;password=90-=op[]"
               }
            };
            services.AddDataConfig(env, connections);
```

## 03、配置文件必须配置的位子
项目启动加载开发环境的配置，appsettings.Development.json ,不懂的可以去百度下.net core 的多环境配置。 Host是必须要配置的,Version，Name是Swagger里面需要的。

## 04、启动项目
设置 Demo.Bussiness 为启动项,启动项目，会看到cmd命令，打开本地端口 [localhost:5000](http://localhost:5000/swagger/index.html),需要授权 [http://10.1.0.126:83/](http://10.1.0.126:83/) 账号密码 WA03846,90-=OP[],打开前端调试，获取其中的token

![Token](/images/token.png)

## 05、DDD
School查询单表,Student查询多表,跨库查询多表,自己可以做测试

## 06、添加你的模块
使用代码生成工具生成你的代码,移动 代码生成 页面查看
