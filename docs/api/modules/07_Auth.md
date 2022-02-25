# AOP(07_Auth)
使用AOP来完成事务的操作。之前需要引用 IUnitOfWork 来单独开启和提交事务以及事务回滚操作。利用AOP来完成事务的操作，类似中间件。

**Castle DynamicProxy** 和 **AspectCore.Extensions.DependencyInjection** 都可以实现AOP,本框架使用的是后者。

在服务方法上面标识就可以显示事务   [TransactionInterceptor]