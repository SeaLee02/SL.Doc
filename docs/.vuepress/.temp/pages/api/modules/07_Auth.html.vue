<template><h1 id="aop-07-auth" tabindex="-1"><a class="header-anchor" href="#aop-07-auth" aria-hidden="true">#</a> AOP(07_Auth)</h1>
<p>使用AOP来完成事务的操作。之前需要引用 IUnitOfWork 来单独开启和提交事务以及事务回滚操作。利用AOP来完成事务的操作，类似中间件。</p>
<p><strong>Castle DynamicProxy</strong> 和 <strong>AspectCore.Extensions.DependencyInjection</strong> 都可以实现AOP,本框架使用的是后者。</p>
<p>在服务方法上面标识就可以显示事务   [TransactionInterceptor]</p>
</template>
