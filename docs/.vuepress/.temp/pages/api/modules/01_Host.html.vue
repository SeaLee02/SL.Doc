<template><h1 id="主机-01-host" tabindex="-1"><a class="header-anchor" href="#主机-01-host" aria-hidden="true">#</a> 主机(01_Host)</h1>
<p><img src="/images/01_Host.png" alt="主机"></p>
<h2 id="项目启动-重要" tabindex="-1"><a class="header-anchor" href="#项目启动-重要" aria-hidden="true">#</a> 项目启动(重要)</h2>
<p>HostBootstrap 和 StartupAbstract 作为项目启动的流程。api接口项目需要继承封装的类,项目启动的公共逻辑都在这里。数据库的配置在单独的项目进行注入,用来完成分库等操作。</p>
<blockquote>
<p>1、配置读取封装,项目的任何位子使用Appsettings就能读取到配置。</p>
</blockquote>
<blockquote>
<p>2、ID4的配置</p>
</blockquote>
<blockquote>
<p>3、Swagger的配置</p>
</blockquote>
<blockquote>
<p>4、注入需要引用的接口</p>
</blockquote>
<blockquote>
<p>5、添加AOP切面,主要用来做事务操作</p>
</blockquote>
<blockquote>
<p>6、监听配置的变更</p>
</blockquote>
<blockquote>
<p>7、添加中介者事件</p>
</blockquote>
<blockquote>
<p>8、异常捕捉</p>
</blockquote>
<blockquote>
<p>9、路由注入</p>
</blockquote>
<blockquote>
<p>10、模块化解析等</p>
</blockquote>
<h2 id="swagger" tabindex="-1"><a class="header-anchor" href="#swagger" aria-hidden="true">#</a> Swagger</h2>
<p>封装了Swagger,优化了展示效果,去除了实体的显示,添加了搜索查询。</p>
<h2 id="错误异常" tabindex="-1"><a class="header-anchor" href="#错误异常" aria-hidden="true">#</a> 错误异常</h2>
<p>全局错误异常的中间件添加,后面的代码里面无需主动捕捉异常。错误会记录在日志和输出在调用的接口里面。</p>
</template>
