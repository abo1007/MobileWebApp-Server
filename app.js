const express = require('express')
const app = express()
const port = 3008
// const mysql = require('mysql')
const bodyParser = require('body-parser')

var swipe = require('./src/swipeApi')
var newsList = require('./src/newsListApi')
var sqlAction = require('./src/sqlAction')
var comment = require('./src/comment')
var photo = require('./src/photo')
var goods = require('./src/goods')
var feedback = require('./src/feedback')

// var sqlsel = 'select * from webusers';
// var db = sqlAction.sqlAction.db();

// sqlAction.sqlAction.dbconnect(db);
// sqlAction.sqlAction.sqlSel(db,sqlsel);
// sqlAction.sqlAction.sqlend(db);

app.all('*', function(req, res, next) {  
    res.header("Access-Control-Allow-Origin", "*");  
    res.header("Access-Control-Allow-Headers", "X-Requested-With,content-type");  
    res.header("Access-Control-Allow-Methods","PUT,POST,GET,DELETE,OPTIONS");  
    res.header("X-Powered-By",' 3.2.1')  
    res.header("Content-Type", "application/json;charset=utf-8");  
    next();  
});
// body-parser中间件解析post数据
app.use(bodyParser.json());
// app.get('/', (req, res) => res.send('Hello World!'))
// 1. 获取轮播图数据
app.get('/api/getswipe', (req, res) => {
    res.send(swipe.swipeList);
})
// 2. 获取新闻列表数据
app.get('/api/getnewslist', (req,res) => {
    var newsApi = {
        status : newsList.status,
        message : newsList.newsListApi
    }
    res.send(JSON.stringify(newsApi));
})
// 3. 获取新闻详细数据
app.get('/api/getnewsinfo', (req, res) => {
    var newsid = parseInt(req.query.newsid);
    // console.log(newsid);
    var newsinfoitem;
    var newsinfostatus = 1;
    newsList.newsinfo.some(element => {
        if(element.id == newsid){
            newsinfostatus = 0;
            newsinfoitem = element;
            return true;
        }else{
            newsinfostatus = 1
        }
    });

    var newsinfoitem = {
        status : newsinfostatus,
        message : newsinfoitem
    }

    res.send(JSON.stringify(newsinfoitem));
})
// 4. 获取评论数据
app.get('/api/getcomments', (req, res) => {
    var newsid = parseInt(req.query.newsid);

    var newsCommentsData = {
        status:0,
        message:comment.CommentData
    }
    res.send(JSON.stringify(newsCommentsData));
})
// 5. 提交评论数据
app.post('/api/submitcomment/:id', (req, res) => {
    
    let newsid = parseInt(req.params.id);
    let commentContent = req.body.content;
    
    var newsCommentItem = {
        id : comment.CommentData[comment.CommentData.length - 1].id + 1,
        username : "匿名用户",
        addtime : new Date(),
        content : commentContent
    }

    comment.CommentData.push(newsCommentItem);

    let submitBack = {
        status : 0,
        message : "ok"
    }
    res.send(submitBack);
})
// 6. 获取图片分类数据
app.get('/api/getimgclass', (req, res) => {
    res.send({status:0,message:photo.Pclass});
})
// 7. 获取图片每个详细分类的数据
app.get('/api/getimages', (req, res) => {
    // let photoid = parseInt(req.params.id);
    let photoInfoData = {
        status : 0,
        message : photo.photoInfo
    }
    res.send(photoInfoData);

})
// 8. 获取图片详细页
app.get('/api/getimginfo/:id', (req, res) => {
    let photoid = parseInt(req.params.id);
    
    let photoInfoData = {
        status : 0,
        message : photo.photoInfo[0][photoid - 1]
    }
    res.send(photoInfoData);
})
// 9. 获取商品列表
app.get('/api/getgoodslist', (req, res) => {
    let pageindex = parseInt(req.query.pageindex); 
    goods.goodslist(pageindex, result => {
        let data = {
            status : 0,
            message : result
        }    
        send_func(res, data);            
    });
    
})


// 11.获取反馈留言列表数据
app.get('/api/getfeedback', (req, res) => {
    feedback.getfeedback(result => {
        let data = {
            status : 0,
            message : result
        }
        send_func(res, data);
    });
})

// X. 设置静态资源托管目录
app.use('/api/public',express.static('public'));

app.listen(port, () => console.log(`Example app listening on port ${port}!`))

function send_func(res, data) {
    res.send(data);
}