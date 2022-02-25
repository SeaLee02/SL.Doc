export const themeData = {
  "navbar": [
    {
      "text": "指南",
      "link": "/api/"
    },
    {
      "text": "代码生成工具",
      "link": "/tool/"
    },
    {
      "text": "Demo",
      "link": "/demo/"
    }
  ],
  "sidebar": {
    "/api/": [
      {
        "text": "指南",
        "collapsable": false,
        "children": [
          "/api/readme.md",
          "/api/introduce.md",
          "/api/create.md"
        ]
      },
      {
        "text": "框架",
        "collapsable": false,
        "children": [
          "/api/modules/01_Host.md",
          "/api/modules/00_Module.md",
          "/api/modules/02_Data.md",
          "/api/modules/03_Utils.md",
          "/api/modules/04_Mapper.md",
          "/api/modules/05_Cache.md",
          "/api/modules/06_Config.md",
          "/api/modules/07_Auth.md",
          "/api/modules/08_Excel.md",
          "/api/modules/09_MQ.md",
          "/api/modules/10_MediatR.md",
          "/api/modules/66_ThirdPart.md"
        ]
      },
      {
        "text": "领域驱动",
        "collapsable": false,
        "children": [
          "/api/domain/readme.md"
        ]
      }
    ],
    "/tool/": [
      {
        "text": "代码生成工具",
        "collapsable": false,
        "children": [
          "/tool/readme.md"
        ]
      }
    ],
    "/demo/": [
      {
        "text": "Demo",
        "collapsable": false,
        "children": [
          "/demo/readme.md"
        ]
      }
    ]
  },
  "lastUpdatedText": "上次更新",
  "contributorsText": "贡献者",
  "notFound": [
    "这里什么都没有",
    "我们怎么到这来了？",
    "这是一个 404 页面",
    "看起来我们进入了错误的链接"
  ],
  "backToHome": "返回首页",
  "openInNewWindow": "在新窗口打开",
  "toggleDarkMode": "切换夜间模式",
  "toggleSidebar": "切换侧边栏",
  "tip": "提示",
  "warning": "注意",
  "danger": "警告",
  "locales": {
    "/": {
      "selectLanguageName": "English"
    }
  },
  "logo": null,
  "darkMode": true,
  "repo": null,
  "selectLanguageText": "Languages",
  "selectLanguageAriaLabel": "Select language",
  "sidebarDepth": 2,
  "editLink": true,
  "editLinkText": "Edit this page",
  "lastUpdated": true,
  "contributors": true
}

if (import.meta.webpackHot) {
  import.meta.webpackHot.accept()
  if (__VUE_HMR_RUNTIME__.updateThemeData) {
    __VUE_HMR_RUNTIME__.updateThemeData(themeData)
  }
}

if (import.meta.hot) {
  import.meta.hot.accept(({ themeData }) => {
    __VUE_HMR_RUNTIME__.updateThemeData(themeData)
  })
}
