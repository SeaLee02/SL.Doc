<template><h1 id="数据库操作-02-data" tabindex="-1"><a class="header-anchor" href="#数据库操作-02-data" aria-hidden="true">#</a> 数据库操作(02_Data)</h1>
<p>数据库操作采用 SqlSugar 框架。版本为5.x。</p>
<h3 id="驱动的升级" tabindex="-1"><a class="header-anchor" href="#驱动的升级" aria-hidden="true">#</a> 驱动的升级</h3>
<p>System.Data.SqlClient升级为Microsoft.Data.SqlClient。</p>
<h3 id="两步完成多库操作" tabindex="-1"><a class="header-anchor" href="#两步完成多库操作" aria-hidden="true">#</a> 两步完成多库操作</h3>
<p>实体标识:</p>
<div class="language-csharp ext-cs line-numbers-mode"><pre v-pre class="language-csharp"><code>  <span class="token doc-comment comment">/// <span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>summary</span><span class="token punctuation">></span></span></span>
    <span class="token doc-comment comment">/// 组织架构表</span>
    <span class="token doc-comment comment">/// <span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>summary</span><span class="token punctuation">></span></span></span>
    <span class="token punctuation">[</span><span class="token function">TenantAttribute</span><span class="token punctuation">(</span><span class="token number">1</span><span class="token punctuation">)</span><span class="token punctuation">]</span> <span class="token comment">//1需要跟注入连接的时候对应起来</span>
    <span class="token punctuation">[</span><span class="token attribute"><span class="token class-name">SugarTable</span><span class="token attribute-arguments"><span class="token punctuation">(</span><span class="token string">"SYS_Organization"</span><span class="token punctuation">)</span></span></span><span class="token punctuation">]</span>
    <span class="token keyword">public</span> <span class="token keyword">partial</span> <span class="token keyword">class</span> <span class="token class-name">OrganizationEntity</span> <span class="token punctuation">:</span> <span class="token type-list"><span class="token class-name">EntityBase</span></span>
</code></pre><div class="line-numbers"><span class="line-number">1</span><br><span class="line-number">2</span><br><span class="line-number">3</span><br><span class="line-number">4</span><br><span class="line-number">5</span><br><span class="line-number">6</span><br></div></div><p>添加数据链接</p>
<div class="language-csharp ext-cs line-numbers-mode"><pre v-pre class="language-csharp"><code> <span class="token comment">//数据库</span>
            <span class="token comment">//添加数据配置,登录信息,基础服务,仓储层</span>
            <span class="token class-name">List<span class="token punctuation">&lt;</span>ConnectionBase<span class="token punctuation">></span></span> connections <span class="token operator">=</span> <span class="token keyword">new</span> <span class="token constructor-invocation class-name">List<span class="token punctuation">&lt;</span>ConnectionBase<span class="token punctuation">></span></span>
            <span class="token punctuation">{</span>
               <span class="token keyword">new</span> <span class="token constructor-invocation class-name">ConnectionBase</span><span class="token punctuation">{</span>
                ConfigId<span class="token operator">=</span><span class="token number">0</span><span class="token punctuation">,</span>
                ConnectionString<span class="token operator">=</span>AppConfigConsts<span class="token punctuation">.</span>HRSQLConnection<span class="token punctuation">,</span>
               <span class="token punctuation">}</span><span class="token punctuation">,</span>
                <span class="token keyword">new</span> <span class="token constructor-invocation class-name">ConnectionBase</span><span class="token punctuation">{</span>
                ConfigId<span class="token operator">=</span><span class="token number">1</span><span class="token punctuation">,</span><span class="token comment">//跟实体上面对应起来</span>
                ConnectionString<span class="token operator">=</span><span class="token string">"xxxxx"</span><span class="token punctuation">,</span>
               <span class="token punctuation">}</span>
            <span class="token punctuation">}</span><span class="token punctuation">;</span>
            services<span class="token punctuation">.</span><span class="token function">AddDataConfig</span><span class="token punctuation">(</span>env<span class="token punctuation">,</span> connections<span class="token punctuation">)</span><span class="token punctuation">;</span>
</code></pre><div class="line-numbers"><span class="line-number">1</span><br><span class="line-number">2</span><br><span class="line-number">3</span><br><span class="line-number">4</span><br><span class="line-number">5</span><br><span class="line-number">6</span><br><span class="line-number">7</span><br><span class="line-number">8</span><br><span class="line-number">9</span><br><span class="line-number">10</span><br><span class="line-number">11</span><br><span class="line-number">12</span><br><span class="line-number">13</span><br><span class="line-number">14</span><br></div></div><h3 id="仓储层的封装" tabindex="-1"><a class="header-anchor" href="#仓储层的封装" aria-hidden="true">#</a> 仓储层的封装</h3>
<p>公共的方法都是在这个里面进行的封装。有较好的方法可以在这个里面加。</p>
<h3 id="查询自动带-with-nolock" tabindex="-1"><a class="header-anchor" href="#查询自动带-with-nolock" aria-hidden="true">#</a> 查询自动带 WITH(NOLOCK)</h3>
<p>配置里面会默认带这个</p>
<h3 id="全局过滤" tabindex="-1"><a class="header-anchor" href="#全局过滤" aria-hidden="true">#</a> 全局过滤</h3>
<p>会默认配置一些过滤条件,对于单标和多表联查(只是主表),如果没有status字段，查询的时候需要把过滤设置为null。</p>
<div class="language-csharp ext-cs line-numbers-mode"><pre v-pre class="language-csharp"><code> db<span class="token punctuation">.</span><span class="token function">GetConnection</span><span class="token punctuation">(</span>item<span class="token punctuation">.</span>ConfigId<span class="token punctuation">)</span><span class="token punctuation">.</span>QueryFilter<span class="token punctuation">.</span><span class="token function">Add</span><span class="token punctuation">(</span><span class="token keyword">new</span> <span class="token constructor-invocation class-name">SqlFilterItem</span>
                            <span class="token punctuation">{</span>
                                FilterValue <span class="token operator">=</span> filter <span class="token operator">=></span>
                                <span class="token punctuation">{</span>
                                    <span class="token keyword">return</span> <span class="token keyword">new</span> <span class="token constructor-invocation class-name">SqlFilterResult</span> <span class="token punctuation">{</span> Sql <span class="token operator">=</span> <span class="token string">" Status=2 "</span> <span class="token punctuation">}</span><span class="token punctuation">;</span>
                                <span class="token punctuation">}</span>
                            <span class="token punctuation">}</span><span class="token punctuation">)</span><span class="token punctuation">;</span>

                            db<span class="token punctuation">.</span><span class="token function">GetConnection</span><span class="token punctuation">(</span>item<span class="token punctuation">.</span>ConfigId<span class="token punctuation">)</span><span class="token punctuation">.</span>QueryFilter<span class="token punctuation">.</span><span class="token function">Add</span><span class="token punctuation">(</span><span class="token keyword">new</span> <span class="token constructor-invocation class-name">SqlFilterItem</span>
                            <span class="token punctuation">{</span>
                                FilterName <span class="token operator">=</span> <span class="token string">"NotDel"</span><span class="token punctuation">,</span>
                                FilterValue <span class="token operator">=</span> filter <span class="token operator">=></span>
                                <span class="token punctuation">{</span>
                                    <span class="token keyword">return</span> <span class="token keyword">new</span> <span class="token constructor-invocation class-name">SqlFilterResult</span> <span class="token punctuation">{</span> Sql <span class="token operator">=</span> <span class="token string">" Status!=0 "</span> <span class="token punctuation">}</span><span class="token punctuation">;</span>
                                <span class="token punctuation">}</span>
                            <span class="token punctuation">}</span><span class="token punctuation">)</span><span class="token punctuation">;</span>

                            db<span class="token punctuation">.</span><span class="token function">GetConnection</span><span class="token punctuation">(</span>item<span class="token punctuation">.</span>ConfigId<span class="token punctuation">)</span><span class="token punctuation">.</span>QueryFilter<span class="token punctuation">.</span><span class="token function">Add</span><span class="token punctuation">(</span><span class="token keyword">new</span> <span class="token constructor-invocation class-name">SqlFilterItem</span>
                            <span class="token punctuation">{</span>
                                <span class="token comment">//多表过滤,多表统一设置 a,b.c...以此类推</span>
                                FilterValue <span class="token operator">=</span> filter <span class="token operator">=></span>
                                <span class="token punctuation">{</span>
                                    <span class="token keyword">return</span> <span class="token keyword">new</span> <span class="token constructor-invocation class-name">SqlFilterResult</span> <span class="token punctuation">{</span> Sql <span class="token operator">=</span> <span class="token string">" a.Status=2 "</span> <span class="token punctuation">}</span><span class="token punctuation">;</span>
                                <span class="token punctuation">}</span><span class="token punctuation">,</span>
                                IsJoinQuery <span class="token operator">=</span> <span class="token boolean">true</span>
                            <span class="token punctuation">}</span><span class="token punctuation">)</span><span class="token punctuation">;</span>

                            db<span class="token punctuation">.</span><span class="token function">GetConnection</span><span class="token punctuation">(</span>item<span class="token punctuation">.</span>ConfigId<span class="token punctuation">)</span><span class="token punctuation">.</span>QueryFilter<span class="token punctuation">.</span><span class="token function">Add</span><span class="token punctuation">(</span><span class="token keyword">new</span> <span class="token constructor-invocation class-name">SqlFilterItem</span>
                            <span class="token punctuation">{</span>
                                <span class="token comment">//多表过滤,多表统一设置 a,b.c...以此类推</span>
                                FilterName <span class="token operator">=</span> <span class="token string">"NotDels"</span><span class="token punctuation">,</span>
                                FilterValue <span class="token operator">=</span> filter <span class="token operator">=></span>
                                <span class="token punctuation">{</span>
                                    <span class="token keyword">return</span> <span class="token keyword">new</span> <span class="token constructor-invocation class-name">SqlFilterResult</span> <span class="token punctuation">{</span> Sql <span class="token operator">=</span> <span class="token string">" a.Status!=0 "</span> <span class="token punctuation">}</span><span class="token punctuation">;</span>
                                <span class="token punctuation">}</span><span class="token punctuation">,</span>
                                IsJoinQuery <span class="token operator">=</span> <span class="token boolean">true</span>
                            <span class="token punctuation">}</span><span class="token punctuation">)</span><span class="token punctuation">;</span>

</code></pre><div class="line-numbers"><span class="line-number">1</span><br><span class="line-number">2</span><br><span class="line-number">3</span><br><span class="line-number">4</span><br><span class="line-number">5</span><br><span class="line-number">6</span><br><span class="line-number">7</span><br><span class="line-number">8</span><br><span class="line-number">9</span><br><span class="line-number">10</span><br><span class="line-number">11</span><br><span class="line-number">12</span><br><span class="line-number">13</span><br><span class="line-number">14</span><br><span class="line-number">15</span><br><span class="line-number">16</span><br><span class="line-number">17</span><br><span class="line-number">18</span><br><span class="line-number">19</span><br><span class="line-number">20</span><br><span class="line-number">21</span><br><span class="line-number">22</span><br><span class="line-number">23</span><br><span class="line-number">24</span><br><span class="line-number">25</span><br><span class="line-number">26</span><br><span class="line-number">27</span><br><span class="line-number">28</span><br><span class="line-number">29</span><br><span class="line-number">30</span><br><span class="line-number">31</span><br><span class="line-number">32</span><br><span class="line-number">33</span><br><span class="line-number">34</span><br><span class="line-number">35</span><br><span class="line-number">36</span><br><span class="line-number">37</span><br><span class="line-number">38</span><br></div></div><h3 id="登录人获取以及添加人-修改人自动赋值" tabindex="-1"><a class="header-anchor" href="#登录人获取以及添加人-修改人自动赋值" aria-hidden="true">#</a> 登录人获取以及添加人,修改人自动赋值</h3>
<p>全局使用 ILoginInfo 来获取登录人信息,数据的添加,修改一些基础的操作人时间等字段会自动赋值。</p>
<h3 id="事务" tabindex="-1"><a class="header-anchor" href="#事务" aria-hidden="true">#</a> 事务</h3>
<p>IUnitOfWork 来使用事务，后面有AOP的封装,使用AOP和这个接口一样的效果。</p>
<h3 id="sql输出" tabindex="-1"><a class="header-anchor" href="#sql输出" aria-hidden="true">#</a> sql输出</h3>
<p>只有在开发环境下面会打印执行是SQL语句。如果不需要可以进行配置。</p>
</template>
