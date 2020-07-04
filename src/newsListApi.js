
const mysql = require('mysql');
var dbconfig = require('./database.config');

const db = mysql.createConnection(dbconfig);
db.connect((err) => {
    if(err) {
        console.log("失败");
        throw err;
    }
    console.log('News Modules 连接成功');
})

var photoInfo = [];

let sqlsay = "SELECT * FROM `newslist`";

let NewsListApi = (callback) => {
    db.query(sqlsay, (err, result) => {
        if(err) throw err;
        callback(result);
    })
};

let sqlsay_info = "SELECT * FROM `newsinfo`";
let NewsInfo = (newsid, callback) => {
    db.query(sqlsay_info,(err, result) => {
        if(err) throw err;
        callback(result);
    })
}


var status = 0;     // 状态码 0成功 1失败 
module.exports = {
    status,
    NewsInfo,
    NewsListApi
}