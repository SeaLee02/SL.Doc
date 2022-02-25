export const data = {
  "key": "v-8daa1a0e",
  "path": "/",
  "title": "",
  "lang": "zh-CN",
  "frontmatter": {
    "home": true,
    "actions": [
      {
        "text": "项目简介",
        "link": "/api/",
        "type": "primary"
      }
    ],
    "features": [
      {
        "title": "标题",
        "details": "说明。。。"
      }
    ],
    "footer": "SAAS | Copyright © 2021- SeaLee"
  },
  "excerpt": "",
  "headers": [
    {
      "level": 2,
      "title": "开发环境",
      "slug": "开发环境",
      "children": []
    }
  ],
  "filePathRelative": "readme.md",
  "git": {}
}

if (import.meta.webpackHot) {
  import.meta.webpackHot.accept()
  if (__VUE_HMR_RUNTIME__.updatePageData) {
    __VUE_HMR_RUNTIME__.updatePageData(data)
  }
}

if (import.meta.hot) {
  import.meta.hot.accept(({ data }) => {
    __VUE_HMR_RUNTIME__.updatePageData(data)
  })
}
