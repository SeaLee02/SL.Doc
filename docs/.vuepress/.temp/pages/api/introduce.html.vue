<template><h1 id="项目的结构介绍" tabindex="-1"><a class="header-anchor" href="#项目的结构介绍" aria-hidden="true">#</a> 项目的结构介绍</h1>
<p><img src="/images/目录.png" alt="VuePress Logo"></p>
<h2 id="_00-build" tabindex="-1"><a class="header-anchor" href="#_00-build" aria-hidden="true">#</a> 00_build</h2>
<p>nuget包的指引,代码生成包的设置</p>
<h2 id="_01-modules" tabindex="-1"><a class="header-anchor" href="#_01-modules" aria-hidden="true">#</a> 01_modules</h2>
<p>.net core webapi的项目</p>
<h2 id="_02-core" tabindex="-1"><a class="header-anchor" href="#_02-core" aria-hidden="true">#</a> 02_core</h2>
<p>服务层和仓储层层代码</p>
<h2 id="_03-src" tabindex="-1"><a class="header-anchor" href="#_03-src" aria-hidden="true">#</a> 03_src</h2>
<p>微服务的划分</p>
<h2 id="_04-server" tabindex="-1"><a class="header-anchor" href="#_04-server" aria-hidden="true">#</a> 04_server</h2>
<p>主要是IDS4的服务,一般不改</p>
<h2 id="常规说明" tabindex="-1"><a class="header-anchor" href="#常规说明" aria-hidden="true">#</a> 常规说明</h2>
<p>IServiceCollection 的扩展命名：ServiceCollectionExtensions</p>
<p>IApplicationBuilder 的扩展命名：ApplicationBuilderExtensions</p>
<p>*.Abstractions:存放接口类型的</p>
<p>*.AspNetCore：存放实现类型的</p>
</template>
