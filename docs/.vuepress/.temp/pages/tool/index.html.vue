<template><h1 id="介绍" tabindex="-1"><a class="header-anchor" href="#介绍" aria-hidden="true">#</a> 介绍</h1>
<p>因为不想再VS里面，也不想做在前端，这些都需要依赖项目跑。所有就像做成单独的,后面可以做前端生成模板。 此代码生成工具使用WPF创建,核心使用 <strong>RazorEngine.NetCore</strong> 做模板。UI使用 <strong>MahApps.Metro</strong> . 目前只加入了SqlServer数据库的生成。</p>
<p><a href="/images/%E4%BB%A3%E7%A0%81%E7%94%9F%E6%88%90%E5%B7%A5%E5%85%B7.zip">代码生成器工具下载</a></p>
<h2 id="安装工具" tabindex="-1"><a class="header-anchor" href="#安装工具" aria-hidden="true">#</a> 安装工具</h2>
<p>双击  EntityTemplate.application 进行安装</p>
<p><img src="/images/代码生成工具.png" alt="代码生成工具"></p>
<p>可以帮我们创建项目,添加引用，生成服务，仓储，实体，DTO，控制器等等代码。</p>
<h2 id="加载表" tabindex="-1"><a class="header-anchor" href="#加载表" aria-hidden="true">#</a> 加载表</h2>
<p>会根据数据库链接读取数据表，读取成功后会把表加载到 表/视图 名的下拉框里面</p>
<h2 id="类型" tabindex="-1"><a class="header-anchor" href="#类型" aria-hidden="true">#</a> 类型</h2>
<p>模板只做了表的生成,视图目前没有使用到,暂不支持生成</p>
<h2 id="表-视图-名" tabindex="-1"><a class="header-anchor" href="#表-视图-名" aria-hidden="true">#</a> 表/视图 名</h2>
<p>选择你需要生成的表，支持多选,最后生成会根据你选的表来生成</p>
<h2 id="数据库标识" tabindex="-1"><a class="header-anchor" href="#数据库标识" aria-hidden="true">#</a> 数据库标识</h2>
<p>多库的时候可以设置</p>
<h2 id="根据需要进行勾选" tabindex="-1"><a class="header-anchor" href="#根据需要进行勾选" aria-hidden="true">#</a> 根据需要进行勾选</h2>
<p>一般都勾选,如果是项目还没创建，需要勾选创建控制器和DDD，如果是新加的表这不需要勾选这个。 创建控制器和DDD 针对于第一次创建项目的时候使用。</p>
<h2 id="控制器地址" tabindex="-1"><a class="header-anchor" href="#控制器地址" aria-hidden="true">#</a> 控制器地址</h2>
<p>控制器生成的地址</p>
<h2 id="保存地址" tabindex="-1"><a class="header-anchor" href="#保存地址" aria-hidden="true">#</a> 保存地址</h2>
<p>DDD层生成的代码地址</p>
<h2 id="创建一个模块" tabindex="-1"><a class="header-anchor" href="#创建一个模块" aria-hidden="true">#</a> 创建一个模块</h2>
<p><img src="/images/生成项目.gif" alt="生成项目"></p>
<h2 id="移动文件夹-然后启动项目" tabindex="-1"><a class="header-anchor" href="#移动文件夹-然后启动项目" aria-hidden="true">#</a> 移动文件夹，然后启动项目</h2>
<p><img src="/images/生成.png" alt="生成"></p>
</template>
