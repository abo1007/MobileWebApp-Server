const express = require('express')
const app = express()
const port = 3008

var swipe = require('./src/swipeApi')

app.all('*', function(req, res, next) {  
    res.header("Access-Control-Allow-Origin", "*");  
    res.header("Access-Control-Allow-Headers", "X-Requested-With");  
    res.header("Access-Control-Allow-Methods","PUT,POST,GET,DELETE,OPTIONS");  
    res.header("X-Powered-By",' 3.2.1')  
    res.header("Content-Type", "application/json;charset=utf-8");  
    next();  
});
app.get('/', (req, res) => res.send('Hello World!'))

app.get('/api/getswipe', (req, res) => {
    res.send(swipe.swipeList);
})

app.use('/api/public',express.static('public'));

app.get('/home',(req,res) => {
    
})



app.listen(port, () => console.log(`Example app listening on port ${port}!`))