# AutoMapper(04_Mapper)
Mapper在项目里面非常实用。框架也对这个进行了封装，让你更好的使用。

### 两种配置映射的方式
> 1、继承IMapperConfig
 针对预*.core结尾的项目，只要是继承了这个接口的位子都会配置映射关系。一般配置在服务层里面,DDD的时候在仔细介绍。对于字段不一致的时候。
> 2、特性的标识  ObjectMapAttribute
目前只能针对于字段一致的时候进行映射。

### 使用
统一使用 Utils.Core里面的 IObjectMapper 这个类进行进行映射关系



