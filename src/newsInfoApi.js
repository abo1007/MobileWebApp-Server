const newsinfo = [
    {
        id:1,
        title:"震惊，已近5月，带专院校竟还不开学",
        addtime:new Date(),
        zhaiyao:"带专人，带专混，带专都是人上人！",
        click:888,
        imgUrl:"http://127.0.0.1:3008/api/public/images/news/new1.jpg"
    },
    {
        id:2,
        title:"窃格瓦拉将出狱，你的电瓶，锁好了吗？",
        addtime:new Date(),
        zhaiyao:"司法部：将持续关注",
        click:66,
        imgUrl:"http://127.0.0.1:3008/api/public/images/news/new2.jpg"
    },
    {
        id:3,
        title:"世界还能不能好了？大白天的手脚冰凉，眼泪不争气的...",
        addtime:new Date(),
        zhaiyao:"该团伙曾经收受境外势力的资金，现已被抓获",
        click:99999,
        imgUrl:"http://127.0.0.1:3008/api/public/images/news/new3.jpg"
    },
    {
        id:4,
        title:"定了！这所大学的毕业生将包分配高薪就业！",
        addtime:new Date(),
        zhaiyao:"据悉，该校毕业生已被分配至富土康流水线高薪就业！",
        click:9999,
        imgUrl:"http://127.0.0.1:3008/api/public/images/news/new3.jpg"
    }
];

var status = 0;     // 状态码 0成功 1失败 

module.exports = {
    status,
    newsinfo
}