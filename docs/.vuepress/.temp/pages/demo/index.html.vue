<template><h1 id="demo介绍" tabindex="-1"><a class="header-anchor" href="#demo介绍" aria-hidden="true">#</a> Demo介绍</h1>
<p>此Demo主要是一个一多的分库操作。</p>
<p><a href="/images/Demo.zip">Demo下载</a></p>
<h2 id="_00、nuget-config-directory-build-props" tabindex="-1"><a class="header-anchor" href="#_00、nuget-config-directory-build-props" aria-hidden="true">#</a> 00、Nuget.Config,Directory.Build.props</h2>
<p>Nuget.Config 针对当前项目添加NuGet地址,打开项目的Nuget 包源设计的时候会自动添加 MuNuget的名字。这个是自己发布的Nuget包，Aspose打包就是发到这个地址。</p>
<p>Directory.Build.props 一些类库的项目文件夹外面都会有这个文件,可以帮助我们生成 *nupkg 文件。解决方案目录下回自动生成 _packages 文件夹,全部生成在这个里面。后面做Nuget包管理操作比较方便。</p>
<h2 id="_01、执行sql语句创建表" tabindex="-1"><a class="header-anchor" href="#_01、执行sql语句创建表" aria-hidden="true">#</a> 01、执行SQL语句创建表</h2>
<p>下载Demo解压,执行srcipt脚本,可以直接跑自己本地的sqlserver,放到两个库里面。如果不是Sqlserver，具体配置需要根据SqlSugar实体进行配置。</p>
<h2 id="_02、修改链接地址" tabindex="-1"><a class="header-anchor" href="#_02、修改链接地址" aria-hidden="true">#</a> 02、修改链接地址</h2>
<p><img src="/images/修改链接.png" alt="修改链接"></p>
<p>下面的连个链接修改成自己的,ConfigId=1 配置为Demo_Student表的地址,ConfigId=0 配置为Demo_School和Demo_School2Student 的地址,ConnectionBase 这个类里面可以配置数据库类型，默认是SqlServer数据库。</p>
<div class="language-csharp ext-cs line-numbers-mode"><pre v-pre class="language-csharp"><code>  <span class="token comment">//添加数据配置,登录信息,基础服务,仓储层</span>
            <span class="token class-name">List<span class="token punctuation">&lt;</span>ConnectionBase<span class="token punctuation">></span></span> connections <span class="token operator">=</span> <span class="token keyword">new</span> <span class="token constructor-invocation class-name">List<span class="token punctuation">&lt;</span>ConnectionBase<span class="token punctuation">></span></span>
            <span class="token punctuation">{</span>
               <span class="token keyword">new</span> <span class="token constructor-invocation class-name">ConnectionBase</span><span class="token punctuation">{</span>
                ConfigId<span class="token operator">=</span><span class="token number">0</span><span class="token punctuation">,</span>
                ConnectionString<span class="token operator">=</span><span class="token string">"Data Source=10.1.0.131;Initial Catalog=SAAS_HR2;Persist Security Info=True;User ID=sa;password=90-=op[]"</span>
               <span class="token punctuation">}</span><span class="token punctuation">,</span>
                <span class="token keyword">new</span> <span class="token constructor-invocation class-name">ConnectionBase</span><span class="token punctuation">{</span>
                ConfigId<span class="token operator">=</span><span class="token number">1</span><span class="token punctuation">,</span>
                ConnectionString<span class="token operator">=</span><span class="token string">"Data Source=10.1.0.131;Initial Catalog=SAAS;Persist Security Info=True;User ID=sa;password=90-=op[]"</span>
               <span class="token punctuation">}</span>
            <span class="token punctuation">}</span><span class="token punctuation">;</span>
            services<span class="token punctuation">.</span><span class="token function">AddDataConfig</span><span class="token punctuation">(</span>env<span class="token punctuation">,</span> connections<span class="token punctuation">)</span><span class="token punctuation">;</span>
</code></pre><div class="line-numbers"><span class="line-number">1</span><br><span class="line-number">2</span><br><span class="line-number">3</span><br><span class="line-number">4</span><br><span class="line-number">5</span><br><span class="line-number">6</span><br><span class="line-number">7</span><br><span class="line-number">8</span><br><span class="line-number">9</span><br><span class="line-number">10</span><br><span class="line-number">11</span><br><span class="line-number">12</span><br><span class="line-number">13</span><br></div></div><h2 id="_03、配置文件必须配置的位子" tabindex="-1"><a class="header-anchor" href="#_03、配置文件必须配置的位子" aria-hidden="true">#</a> 03、配置文件必须配置的位子</h2>
<p>项目启动加载开发环境的配置，appsettings.Development.json ,不懂的可以去百度下.net core 的多环境配置。 Host是必须要配置的,Version，Name是Swagger里面需要的。</p>
<h2 id="_04、启动项目" tabindex="-1"><a class="header-anchor" href="#_04、启动项目" aria-hidden="true">#</a> 04、启动项目</h2>
<p>设置 Demo.Bussiness 为启动项,启动项目，会看到cmd命令，打开本地端口 <a href="http://localhost:5000/swagger/index.html" target="_blank" rel="noopener noreferrer">localhost:5000<OutboundLink/></a>,需要授权 <a href="http://10.1.0.126:83/" target="_blank" rel="noopener noreferrer">http://10.1.0.126:83/<OutboundLink/></a> 账号密码 WA03846,90-=OP[],打开前端调试，获取其中的token</p>
<p><img src="/images/token.png" alt="Token"></p>
<h2 id="_05、ddd" tabindex="-1"><a class="header-anchor" href="#_05、ddd" aria-hidden="true">#</a> 05、DDD</h2>
<p>School查询单表,Student查询多表,跨库查询多表,自己可以做测试</p>
<h2 id="_06、添加你的模块" tabindex="-1"><a class="header-anchor" href="#_06、添加你的模块" aria-hidden="true">#</a> 06、添加你的模块</h2>
<p>使用代码生成工具生成你的代码,移动 代码生成 页面查看</p>
</template>
