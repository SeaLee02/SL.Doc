<template><h1 id="automapper-04-mapper" tabindex="-1"><a class="header-anchor" href="#automapper-04-mapper" aria-hidden="true">#</a> AutoMapper(04_Mapper)</h1>
<p>Mapper在项目里面非常实用。框架也对这个进行了封装，让你更好的使用。</p>
<h3 id="两种配置映射的方式" tabindex="-1"><a class="header-anchor" href="#两种配置映射的方式" aria-hidden="true">#</a> 两种配置映射的方式</h3>
<blockquote>
<p>1、继承IMapperConfig
针对预*.core结尾的项目，只要是继承了这个接口的位子都会配置映射关系。一般配置在服务层里面,DDD的时候在仔细介绍。对于字段不一致的时候。
2、特性的标识  ObjectMapAttribute
目前只能针对于字段一致的时候进行映射。</p>
</blockquote>
<h3 id="使用" tabindex="-1"><a class="header-anchor" href="#使用" aria-hidden="true">#</a> 使用</h3>
<p>统一使用 Utils.Core里面的 IObjectMapper 这个类进行进行映射关系</p>
</template>
