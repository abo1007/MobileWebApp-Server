// const db = mysql.createConnection(config);

// sqlAction.showData();

// db.connect( (err) => {
//     if (err) {
//         console.log("失败");
//         throw err;
//     }
//     console.log('连接成功!');
// })

// var sqlseldata = [];
// db.query(sqlsel,(err,result) => {
//     if(err){
//         console.log('[Select Error]' + err.message);
//         return;
//     }
//     console.log(result);
//     sqlseldata = result;
// })

// db.end()

// ---------------------------------

// const db = mysql.createConnection({
//     host:"localhost",
//     user:"root",
//     password:"yhx000881",
//     database:"MobileWeb"
// })
// db.connect( (err) => {
//     if (err) {
//         console.log("失败");
//         throw err;
//     }
//     console.log('连接成功!');
// })
// var sqlsel = 'select * from webusers';
// var sqlseldata = [];
// db.query(sqlsel,(err,result) => {
//     if(err){
//         console.log('[Select Error]' + err.message);
//         return;
//     }
//     console.log(result);
//     sqlseldata = result;
// })

// db.end();


​