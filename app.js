const express = require('express')
const app = express()
const port = 3008
const mysql = require('mysql')
var swipe = require('./src/swipeApi')
var newsList = require('./src/newsListApi')
var sqlAction = require('./src/sqlAction')
var newsInfoApi = require('./src/newsInfoApi')
var comment = require('./src/comment')

// var sqlsel = 'select * from webusers';
// var db = sqlAction.sqlAction.db();

// sqlAction.sqlAction.dbconnect(db);
// sqlAction.sqlAction.sqlSel(db,sqlsel);
// sqlAction.sqlAction.sqlend(db);

app.all('*', function(req, res, next) {  
    res.header("Access-Control-Allow-Origin", "*");  
    res.header("Access-Control-Allow-Headers", "X-Requested-With");  
    res.header("Access-Control-Allow-Methods","PUT,POST,GET,DELETE,OPTIONS");  
    res.header("X-Powered-By",' 3.2.1')  
    res.header("Content-Type", "application/json;charset=utf-8");  
    next();  
});
// app.get('/', (req, res) => res.send('Hello World!'))

app.get('/api/getswipe', (req, res) => {
    res.send(swipe.swipeList);
})
app.get('/api/getnewslist', (req,res) => {
    var newsApi = {
        status : newsList.status,
        message : newsList.newsListApi
    }
    res.send(JSON.stringify(newsApi));
})
app.get('/api/getnewsinfo', (req, res) => {
    var newsid = parseInt(req.query.newsid);
    console.log(newsid);
    var newsinfoitem;
    newsInfoApi.newsinfo.some(element => {
        if(element.id == newsid){
            newsInfoApi.status = 0;
            newsinfoitem = element;
            return true;
        }else{
            newsInfoApi.status = 1
        }
    });

    var newsinfoitem = {
        status : newsInfoApi.status,
        message : newsinfoitem
    }

    res.send(JSON.stringify(newsinfoitem));
})
app.get('/api/getcomments', (req, res) => {
    var newsid = parseInt(req.query.newsid);

    var newsCommentsData = {
        status:0,
        message:comment.CommentData
    }
    res.send(JSON.stringify(newsCommentsData));
})

app.use('/api/public',express.static('public'));


app.listen(port, () => console.log(`Example app listening on port ${port}!`))

