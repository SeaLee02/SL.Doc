import { Vuepress } from '@vuepress/client/lib/components/Vuepress'

const routeItems = [
  ["v-8daa1a0e","/","",["/index.html","/readme.md"]],
  ["v-5ad20e62","/api/create.html","创建一个模块",["/api/create","/api/create.md"]],
  ["v-72992b30","/api/introduce.html","项目的结构介绍",["/api/introduce","/api/introduce.md"]],
  ["v-744497ce","/api/","SAAS后台框架说明",["/api/index.html","/api/readme.md"]],
  ["v-1473bf53","/demo/","Demo介绍",["/demo/index.html","/demo/readme.md"]],
  ["v-1559ca3e","/tool/","介绍",["/tool/index.html","/tool/readme.md"]],
  ["v-65272f46","/api/domain/","领域驱动",["/api/domain/index.html","/api/domain/readme.md"]],
  ["v-1e4e2238","/api/modules/00_Module.html","模块化注入(00_Module)",["/api/modules/00_Module","/api/modules/00_Module.md"]],
  ["v-39aa49a9","/api/modules/01_Host.html","主机(01_Host)",["/api/modules/01_Host","/api/modules/01_Host.md"]],
  ["v-38b218b0","/api/modules/02_Data.html","数据库操作(02_Data)",["/api/modules/02_Data","/api/modules/02_Data.md"]],
  ["v-149d3b0e","/api/modules/03_Utils.html","帮助类(03_Utils)",["/api/modules/03_Utils","/api/modules/03_Utils.md"]],
  ["v-42d8e39a","/api/modules/04_Mapper.html","AutoMapper(04_Mapper)",["/api/modules/04_Mapper","/api/modules/04_Mapper.md"]],
  ["v-ca02fcca","/api/modules/05_Cache.html","缓存(05_Cache)",["/api/modules/05_Cache","/api/modules/05_Cache.md"]],
  ["v-5fa46258","/api/modules/06_Config.html","配置读取(06_Config)",["/api/modules/06_Config","/api/modules/06_Config.md"]],
  ["v-38da922f","/api/modules/07_Auth.html","AOP(07_Auth)",["/api/modules/07_Auth","/api/modules/07_Auth.md"]],
  ["v-5a0b87a3","/api/modules/08_Excel.html","Excel操作(08_Excel)",["/api/modules/08_Excel","/api/modules/08_Excel.md"]],
  ["v-45de3155","/api/modules/09_MQ.html","MQ消息队列(09_MQ)",["/api/modules/09_MQ","/api/modules/09_MQ.md"]],
  ["v-c5f705fe","/api/modules/10_MediatR.html","中介者(10_MediatR)",["/api/modules/10_MediatR","/api/modules/10_MediatR.md"]],
  ["v-4634cbf0","/api/modules/66_ThirdPart.html","第三方接口封装(66_ThirdPart)",["/api/modules/66_ThirdPart","/api/modules/66_ThirdPart.md"]],
  ["v-3706649a","/404.html","",["/404"]],
]

export const pagesRoutes = routeItems.reduce(
  (result, [name, path, title, redirects]) => {
    result.push(
      {
        name,
        path,
        component: Vuepress,
        meta: { title },
      },
      ...redirects.map((item) => ({
        path: item,
        redirect: path,
      }))
    )
    return result
  },
  [
    {
      name: "404",
      path: "/:catchAll(.*)",
      component: Vuepress,
    }
  ]
)
