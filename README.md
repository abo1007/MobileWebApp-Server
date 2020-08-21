## MobileWebApp-Server

## 0. 运行方式

1. 使用 `npm i` 安装依赖
2. 将 `mobileweb.sql` 导入到 mysql 数据库中 (需要名为mobileweb的库)
3. 修改好 `database.config.js` 为你的数据库配置信息
4. `node app` 运行服务，当输出连接成功时，则说明可用

* [前端配套](https://github.com/abo1007/MobileWebApp)

## 1. 项目目录

### src 

* database.config.js : mysql数据库登陆配置信息
* sqlAction.js : mysql数据库操作封装
* newsListApi.js : 新闻标题及缩略图路径数据 新闻详细数据
* swipeApi.js : 轮播图url数据
* comment.js : 评论数据

### public  (静态资源托管目录)

* images : 轮播图文件
    + news : 新闻缩略图文件


## 2. 接口文档


### 2.1 获取主页轮播图片目录数据

* 返回数据类型 : JSON
* 返回数据 : 包含主页轮播图URL数据的对象数组
* 请求方式 : GET
* 请求地址 : `http://127.0.0.1:3008/api/getnewslist`

### 2.2 获取新闻标题数据及图片目录

* 返回数据类型 : JSON
* 返回数据 : 包含 新闻id，新闻title，新闻添加时间，新闻摘要，新闻点击量和新闻标题图URL 的对象数组   (status + message)
* 请求方式 : GET
* 请求地址 : `http://127.0.0.1:3008/api/getnewslist`

### 2.3 获取新闻详细数据

* 返回数据类型 : JSON
* 返回数据 : 包含 新闻id，新闻title，新闻添加时间，新闻摘要，新闻点击量和新闻标题图URL 的指定对象   (status + message)
* 请求方式 : GET
* 请求地址 : `http://127.0.0.1:3008/api/getnewsinfo?id=` + id

### 2.4 获取评论数据

* 返回数据类型 : JSON
* 返回数据 : 包含 评论id, 用户名, 添加时间, 评论内容的对象数组   (status + message)
* 请求方式 : GET
* 请求地址 : `http://127.0.0.1:3008/api/getcomments?id=` + id

### 2.5 提交评论数据

* 返回数据类型 : JSON
* 返回数据 : 包含 状态码 和 确认信息 的对象    (status + message)
* 请求方式 : POST
* 请求体 : { content: 评论内容 }
* 请求地址 : `http://127.0.0.1:3008/api/submitcomment/` + id

### 2.6 图片分类列表数据

* 返回数据类型 : JSON
* 返回数据 : 包含 所有图片id, url 数据, 介绍, 的多维对象数组   (status + message)
* 请求方式 : GET
* 请求地址 : `http://127.0.0.1:3008/api/getimages/` +id

### 2.7 图片分类数据

* 返回数据类型 : JSON
* 返回数据 : 包含 图片分类ID 图片分类 的 对象数组   (status + message)
* 请求方式 : GET
* 请求地址 : `http://127.0.0.1:3008/api/getimgclass`
* 注意 : 从后台接口返回的分类数据不包含 全部 分类，需要前端使用unshift方法手动添加对象

### 2.8 图片详细数据

* 返回数据类型 : JSON
* 返回数据 : 包含 图片ID 图片url 图片标题 图片内容 的 对象   (status + message)
* 请求方式 : GET
* 请求地址 : `http://127.0.0.1:3008/api/getimginfo/` + id

### 2.9 商品列表数据

* 返回数据类型 : JSON
* 返回数据 : 包含 商品id 商品图片 商品标题 商品价格 商品剩余量 的 数组对象   (status + message)
* 请求方式 : GET
* 请求地址 : `http://127.0.0.1:3008/api/getgoodslist?pageindex=` + pageindex

### 2.10 商品详细数据

* 返回数据类型 : JSON
* 返回数据 : 包含 商品id 商品图片 商品标题 商品价格 商品剩余量 商品描述 的 对象   (status + message)
* 请求方式 : GET
* 请求地址 : `http://127.0.0.1:3008/api/getgoods?id=` + id

### 2.11 留言反馈列表数据

* 返回数据类型 : JSON
* 返回数据 : 包含 评论id 用户名 评论时间 评论内容 的 数组对象   (status + message)
* 请求方式 : GET
* 请求地址 : `http://127.0.0.1:3008/api/getfeedback`

### 2.12 留言反馈提交数据

* 返回数据类型 : JSON
* 返回数据 : 包含 评论id 用户名 评论时间 评论内容 的 数组对象   (status + message)
* 请求方式 : POST
* 请求体: {content:反馈内容}
* 请求地址 : `http://127.0.0.1:3008/api/submitfeedback`

### 2.13 购物车数据

* 返回数据类型 : JSON
* 返回数据 : 包含 商品id 商品图片 商品标题 商品价格 商品剩余量 商品数量  (status + message)
* 请求方式 : GET
* 请求地址 : `http://127.0.0.1:3008/api/shopcardata/` + [ids]

### 2.14 视频列表数据

* 返回数据类型 : JSON
* 返回数据 : 包含 视频id 视频封面 视频名称 视频作者及播放量 发布日期 (status + message)
* 请求方式 : GET
* 请求地址 : `http://127.0.0.1:3008/api/getvideolist/`+ pages 

### 2.X 静态资源托管目录

* 返回数据类型 : *
* 请求方式 : GET(Src)
> `http://127.0.0.1:3008/api/public`
