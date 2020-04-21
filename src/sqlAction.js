const mysql = require('mysql')
const config = require('./database.config')

const sqlAction = {
    sqlseldata:[],
    db:function(){
        return mysql.createConnection(config)
    },
    dbconnect:function(obj) {
        obj.connect( (err) => {
            if(err) throw err;
        })
        console.log("连接成功");
    },
    sqlSel:function(obj,sqlel) {
        obj.query(sqlel,(err,result) => {
            if(err){
                console.log('[Select Error]' + err.message);
                return;
            }   
            // console.log(result);
            this.sqlseldata = result;
            console.log(this.sqlseldata);
        })
    },
    sqlend:function(obj){
        obj.end();
    },
    showData:function(){
        console.log(this.sqlseldata);
    }
}

module.exports = {
    sqlAction
}