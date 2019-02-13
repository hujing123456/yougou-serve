const express=require("express");
const pool=require('../pool');
var router=express.Router();
router.get("/",(req,res)=>{
    var keywords=decodeURIComponent(req.query.keywords);
    var pno=parseInt(req.query.pno);
    var pageSize=parseInt(req.query.pageSize);
    var output={
        pno:pno,
        pageSize:pageSize,
        count:0,
        pageCount:0,
        product:[]
    };
    if(keywords==null){
        pool.query("SELECT count(nid) AS c FROM yougou_list",(err,result)=>{
            if(err) throw err;
            output.count=result[0].c;
            var start=(output.pno-1)*output.pageSize;
            var end=output.pageSize;
            var sql=" SELECT * FROM yougou_list LIMIT ?,? ";
            pool.query(sql,[start,end],(err,result)=>{
                if(err) throw err;
                output.pageCount=Math.ceil(output.count/output.pageSize);
                output.product=result;
                res.send(output);
            })
        })
        
    }else{
    keywords=keywords.split(" ");
    keywords.forEach((val,i,arr)=>{
        arr[i]=`%${val}%`;
    })
    var arr=[];
    for(var key of keywords){
       arr.push('title like ? ');
    }
    arr=arr.join(" and ");
    var sql="SELECT * FROM yougou_list WHERE "+arr;
    pool.query(sql,keywords,(err,result)=>{
        if(err) throw err;
        output.count=result.length;
        output.pageCount=Math.ceil(output.count/output.pageSize);
        output.product=result.slice((output.pno-1)*output.pageSize,output.pno*output.pageSize);
        res.send(output);
    })
    }
})
module.exports=router;