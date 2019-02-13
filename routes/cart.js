const express=require("express");
const pool=require("../pool.js");
var router=express.Router();
router.post("/addCart",(req,res)=>{
    var uid=req.session.uid;
    var nid=parseInt(req.body.nid);
    var count=parseInt(req.body.count);
    var color=req.body.color;
    var size=parseFloat(req.body.size);
    if(uid!==undefined){
        var sql=" INSERT INTO yougou_cart VALUES (NULL,?,?,?,?,?)";
        pool.query(sql,[uid,nid,count,color,size],(err,result)=>{
            if(err) throw err;
            res.send({code:1,msg:"加入购物车成功！"});
        })
    }else{
        res.send({code:-1,msg:"请先登录！"});
    }
})
router.get("/cartList",(req,res)=>{
    var uid=req.session.uid;
    if(uid!==undefined){
    var sql="SELECT c.cid,c.uid,c.count,c.color,c.size,p.title,p.newPrice FROM yougou_cart c,yougou_product_basic p WHERE p.nid=c.nid AND c.uid=?";
   pool.query(sql,uid,(err,result)=>{
        if (err) throw err;
        res.send({code:1,data:result})
    })
    }else{
        res.send({code:-1});
    }
})
module.exports=router;