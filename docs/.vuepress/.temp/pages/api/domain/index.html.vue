<template><h1 id="领域驱动" tabindex="-1"><a class="header-anchor" href="#领域驱动" aria-hidden="true">#</a> 领域驱动</h1>
<p>搭建的项目大致分接口层，服务层，仓储层，基础设施层这几个。本框架也是在这个基础上做了调整来较好的使用我们的业务。写代码的人主要是关心这个里面。</p>
<p>01—modules 可以看作是接口层。我们的服务,仓储层,基础设施层都在02—core里面。写代码的人95%都是这个里面。一般会把这个三层个分为三个项目,我们把这个三层在一个项目项目分了三个文件夹来做。分三个会显得项目太繁琐。</p>
<p><img src="/images/DDD.png" alt="DDD"></p>
<h2 id="说明" tabindex="-1"><a class="header-anchor" href="#说明" aria-hidden="true">#</a> 说明</h2>
<p>服务层和仓储层里面都是根据实体来分文件夹的。这样能很好的找到我们的代码。</p>
<h2 id="仓储层" tabindex="-1"><a class="header-anchor" href="#仓储层" aria-hidden="true">#</a> 仓储层</h2>
<p>存放实体和仓储层接口,一般存放三个文件。IXXXXRepository  xxxxEntity,xxxxxEntity.Extend。</p>
<p><img src="/images/仓储.png" alt="仓储"></p>
<p>xxxxEntity 做实体和数据的映射</p>
<p>xxxxxEntity.Extend 做一些其他的操作,不是表的字段放这个里面</p>
<h2 id="基础设施层" tabindex="-1"><a class="header-anchor" href="#基础设施层" aria-hidden="true">#</a> 基础设施层</h2>
<p>全部放到 Repositories 文件夹里面。我们操作数据就是在这个里面写的,为了后面的维护，以及代码一致姓,xxxRepositoriy 用来操作数据，我们服务层直接调用仓储层的接口就行</p>
<h2 id="服务层" tabindex="-1"><a class="header-anchor" href="#服务层" aria-hidden="true">#</a> 服务层</h2>
<p><img src="/images/服务.png" alt="服务"></p>
<p>除了有我们的服务接口和实现以外，每个文件夹中都有一个 _MapperConfig的文件继承IMapperConfig，这个就是我们在 04_Mapper里面做的配置。这样就能很好的区分,不需要把配置文件全都推在一起。Dto里面放查询，返回的实体。</p>
<h2 id="引用问题" tabindex="-1"><a class="header-anchor" href="#引用问题" aria-hidden="true">#</a> 引用问题</h2>
<p>操作一张表就需要引用对应的仓储层的接口。服务层之间不允许引用,避免操作系统的循环引用。基础设施层尽量也要互相引用，除非你很明白你的操作。</p>
</template>
