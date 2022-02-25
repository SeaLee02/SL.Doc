# 模块化注入(00_Module)

### 接口注入
注入服务,仓储等等接口。代码里面会自动注入一些满足规则的接口。规则:需要项目以 *.core结尾的并且 接口继承 **IAutoInject** 的接口。

### 模块化
上一章说了我们对启动的公用的逻辑进行了提取。如果我们有额外的东西需要注入怎么做。
这里我们定义了一个叫做 
**IModuleInitializer** 的接口,里面有两个方法，对应startup里面的两个方法。api项目需要有个类来继承这个接口,来完成各自的项目注入。列入：我们的数据配置。
```csharp
using Microsoft.AspNetCore.Builder;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Module.AspNetCore
{
    public interface IModuleInitializer
    {
        /// <summary>
        /// 注入服务 
        /// <para>** 此方法用于注入与Web相关的服务，否则请通过IModuleServicesConfigurator接口注册</para>
        /// Microsoft.Extensions.Hosting.Abstractions  nuget包
        /// </summary>
        /// <param name="services"></param>
        /// <param name="modules">模块集合</param>
        /// <param name="env">环境变量</param>
        /// <param name="cfg">配置</param>
        void ConfigureServices(IServiceCollection services, IHostEnvironment env);

        /// <summary>
        /// 配置中间件
        /// </summary>
        /// <param name="app"></param>
        /// <param name="env"></param>
        void Configure(IApplicationBuilder app, IHostEnvironment env);
    }
}

```

