<template><h1 id="saas后台框架说明" tabindex="-1"><a class="header-anchor" href="#saas后台框架说明" aria-hidden="true">#</a> SAAS后台框架说明</h1>
<p>整个项目采用模块化的方式搭建,对于分服务或者一个服务分多个模块都能够满足,尽可能的少写代码,对于后面维护,扩展比较方便。</p>
<p>代码主要采用.NET Core原生的<strong>依赖注入</strong>,封装了一些注入特性可以直接拿来用，整个项目中除了之前的代码,新的代码没有一个New Objcet()的操作。最大的使项目低耦合。接口层面采用<strong>DDD领域驱动设计</strong>。接口有封装好的仓储层,常用的增,删,改,查,分页,<strong>分库操作</strong> 都进行了封装。采用ORM实体映射。<strong>Automapper</strong> 配置的封装。接口全部采用异步。配套的代码生产工具等等。</p>
<div class="custom-container tip"><p class="custom-container-title">提示</p>
<p>必须掌握技术：.Net Core依赖注入以及生命周期。Automapper 映射。Linq 的语法糖。C# 8.0语法糖。</p>
</div>
</template>
