const mysql = require('mysql');
var dbconfig = require('./database.config');

const db = mysql.createConnection(dbconfig);
db.connect((err) => {
    if(err) {
        console.log("失败");
        throw err;
    }
    console.log('goods Modules 连接成功');
})
var sqlsay = "SELECT * FROM `goods`"

function goodslist(pageindex,callback) { 
    db.query(sqlsay, (err, result) => {
        if(err) throw err;
        // console.log(result);
        callback(result)
    })
}

module.exports = {
    goodslist
}

