export const siteData = {
  "base": "/",
  "lang": "zh-CN",
  "title": "SAAS",
  "description": "基于.Net Core平台的模块化开发",
  "head": [
    [
      "link",
      {
        "rel": "icon",
        "href": "/images/logo.png"
      }
    ]
  ],
  "locales": {}
}

if (import.meta.webpackHot) {
  import.meta.webpackHot.accept()
  if (__VUE_HMR_RUNTIME__.updateSiteData) {
    __VUE_HMR_RUNTIME__.updateSiteData(siteData)
  }
}

if (import.meta.hot) {
  import.meta.hot.accept(({ siteData }) => {
    __VUE_HMR_RUNTIME__.updateSiteData(siteData)
  })
}
