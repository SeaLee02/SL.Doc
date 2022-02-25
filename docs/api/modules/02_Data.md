# 数据库操作(02_Data)
数据库操作采用 SqlSugar 框架。版本为5.x。

### 驱动的升级
System.Data.SqlClient升级为Microsoft.Data.SqlClient。

### 两步完成多库操作
实体标识:
```csharp
  /// <summary>
    /// 组织架构表
    /// </summary>
    [TenantAttribute(1)] //1需要跟注入连接的时候对应起来
    [SugarTable("SYS_Organization")]
    public partial class OrganizationEntity : EntityBase
```
添加数据链接
```csharp
 //数据库
            //添加数据配置,登录信息,基础服务,仓储层
            List<ConnectionBase> connections = new List<ConnectionBase>
            {
               new ConnectionBase{
                ConfigId=0,
                ConnectionString=AppConfigConsts.HRSQLConnection,
               },
                new ConnectionBase{
                ConfigId=1,//跟实体上面对应起来
                ConnectionString="xxxxx",
               }
            };
            services.AddDataConfig(env, connections);
```

### 仓储层的封装
公共的方法都是在这个里面进行的封装。有较好的方法可以在这个里面加。


### 查询自动带 WITH(NOLOCK)
配置里面会默认带这个

### 全局过滤
会默认配置一些过滤条件,对于单标和多表联查(只是主表),如果没有status字段，查询的时候需要把过滤设置为null。
```csharp
 db.GetConnection(item.ConfigId).QueryFilter.Add(new SqlFilterItem
                            {
                                FilterValue = filter =>
                                {
                                    return new SqlFilterResult { Sql = " Status=2 " };
                                }
                            });

                            db.GetConnection(item.ConfigId).QueryFilter.Add(new SqlFilterItem
                            {
                                FilterName = "NotDel",
                                FilterValue = filter =>
                                {
                                    return new SqlFilterResult { Sql = " Status!=0 " };
                                }
                            });

                            db.GetConnection(item.ConfigId).QueryFilter.Add(new SqlFilterItem
                            {
                                //多表过滤,多表统一设置 a,b.c...以此类推
                                FilterValue = filter =>
                                {
                                    return new SqlFilterResult { Sql = " a.Status=2 " };
                                },
                                IsJoinQuery = true
                            });

                            db.GetConnection(item.ConfigId).QueryFilter.Add(new SqlFilterItem
                            {
                                //多表过滤,多表统一设置 a,b.c...以此类推
                                FilterName = "NotDels",
                                FilterValue = filter =>
                                {
                                    return new SqlFilterResult { Sql = " a.Status!=0 " };
                                },
                                IsJoinQuery = true
                            });

```

### 登录人获取以及添加人,修改人自动赋值
全局使用 ILoginInfo 来获取登录人信息,数据的添加,修改一些基础的操作人时间等字段会自动赋值。

### 事务
IUnitOfWork 来使用事务，后面有AOP的封装,使用AOP和这个接口一样的效果。

### sql输出
只有在开发环境下面会打印执行是SQL语句。如果不需要可以进行配置。