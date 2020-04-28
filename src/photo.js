const Pclass = [
    { title: "京津冀" , id:1 },
    { title: "热门资讯" , id:2 },
    { title: "程序人生" , id:3 },
    { title: "前端后端" , id:4 },
    { title: "数据分析" , id:5 }
];

const mysql = require('mysql');
var dbconfig = require('./database.config');

const db = mysql.createConnection(dbconfig);
db.connect((err) => {
    if(err) {
        console.log("失败");
        throw err;
    }
    console.log('连接成功');
})

var photoInfo = [];

var sqlsay = "SELECT * FROM `photoinfo`";

for(let i = 0; i <= 5 ; i++) {
    if(i == 0){
        db.query(sqlsay, (err, result) => {
            if(err) throw err;
            photoInfo[i] = result;
        })
        continue;
    }
    let sqlsay1 = "SELECT * FROM `photoinfo` WHERE `class` = " + i;
    
    db.query(sqlsay1, (err, result) => {
        if(err) throw err;
        photoInfo[i] = result;
        
    })
}
db.end();

module.exports = {
    Pclass,
    photoInfo
}