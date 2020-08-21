const mysql = require('mysql');
var dbconfig = require('./database.config');

const db = mysql.createConnection(dbconfig);
db.connect((err) => {
    if(err) {
        console.log("失败");
        throw err;
    }
    console.log('Video Modules 连接成功');
});


let sqlsay_list = "SELECT * FROM `videolist`";

let GetList = (vid, callback) => {
    db.query(sqlsay_list,(err, result) => {
        if(err) throw err;
        callback(result);
    })
}

const status = 0;

module.exports = {
    status,
    GetList
}