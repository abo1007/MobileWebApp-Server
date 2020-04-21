## MobileWebApp-Server

## 1. 项目目录

### src 

* database.config.js : mysql数据库登陆配置信息
* sqlAction.js : mysql数据库操作封装
* newsListApi.js : 新闻标题及缩略图路径数据
* swipeApi.js : 轮播图url数据

### public  (静态资源托管目录)

* images : 轮播图文件
    + news : 新闻缩略图文件


## 2. 接口文档


### 获取主页轮播图片目录数据

* 返回数据类型 : JSON
* 返回数据 : 包含主页轮播图URL数据的对象数组
* 请求方式 : GET
* 请求地址 : http://127.0.0.1:3008/api/getnewslist

### 获取新闻标题数据及图片目录

* 返回数据类型 : JSON
* 返回数据 : 包含 新闻id，新闻title，新闻添加时间，新闻摘要，新闻点击量和新闻标题图URL 的对象数组
* 请求方式 : GET
* 请求地址 : http://127.0.0.1:3008/api/getnewslist

### 获取新闻详细数据

* 返回数据类型 : JSON
* 返回数据 : 包含 新闻id，新闻title，新闻添加时间，新闻摘要，新闻点击量和新闻标题图URL 的指定对象
* 请求方式 : GET
* 请求地址 : http://127.0.0.1:3008/api/getnewsinfo + id


### 静态资源托管目录

* 返回数据类型 : *
* 请求方式 : GET(Src)
> http://127.0.0.1:3008/api/public
