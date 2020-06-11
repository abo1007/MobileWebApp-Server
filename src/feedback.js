const mysql = require('mysql');
var dbconfig = require('./database.config');

const db = mysql.createConnection(dbconfig);
db.connect((err) => {
    if(err) {
        console.log("失败");
        throw err;
    }
    console.log('feebback Modules 连接成功');
})
var sqlsay = "SELECT * FROM `feedback`"

function getfeedback(callback) { 
    db.query(sqlsay, (err, result) => {
        if(err) throw err;
        // console.log(result);
        callback(result);
    })
}
function sendsqlfeedback(content,callback) {
    let sqlsendsay = "INSERT INTO `feedback` (`username`, `addtime`, `content`) VALUES ('匿名用户', NOW() ,'"+content+"');"

    db.query(sqlsendsay, (err, result) => {
        if(err) throw err;
        getfeedback(result => {
            callback(result);
        })
        
    })
}

module.exports = {
    getfeedback,
    sendsqlfeedback
}