const express=require("express");
const pool=require("../pool.js");
const router=express.Router();
router.get("/",(req,res)=>{
    var nid=req.query.nid;
    var reg=/^\d{1,3}$/;
    if(!reg.test(nid)){
        res.send({code:-1,msg:"错误的商品编号"});
        return;
    };
    var output={
        product:{},
        colorUrl:[],
        pics:[]
    };
    var sql="SELECT * FROM yougou_product_basic WHERE nid=?";
    pool.query(sql,nid,(err,result)=>{
        if(err) throw err;
        output.product=result[0];
        var sql="SELECT nid,colorImg FROM yougou_product_basic WHERE fid=?";
        var fid=parseInt(result[0].fid);
        pool.query(sql,fid,(err,result)=>{
            if(err) throw err;
            output.colorUrl=result;
            var sql="SELECT * FROM yougou_product_img WHERE nid=?";
            pool.query(sql,nid,(err,result)=>{
                if(err) throw err;
                output.pics=result;
                res.send(output);
            })
        })
    })
})
router.get("/getDetails",(req,res)=>{
    var nid=req.query.nid;
    var reg=/^\d{1,3}$/;
    if(!reg.test(nid)){
        res.send({code:-1,msg:"错误的商品编号"});
        return;
    };
    var output1={
        detail:{},
        brand:{}
    };
    var sql="SELECT * FROM yougou_product_details WHERE nid=?";
    pool.query(sql,nid,(err,result)=>{
        if(err) throw err;
        output1.detail=result[0];
        var fid=result[0].fid;
        var sql="SELECT * FROM yougou_product_brandspec WHERE fid=?";
        pool.query(sql,fid,(err,result)=>{
            if(err) throw err;
            output1.brand=result[0];
            res.send(output1);
        })
    })
})
module.exports=router;