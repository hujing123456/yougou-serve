const express=require("express");
const pool=require("../pool.js");
const router=express.Router();
router.get("/banner",(req,res)=>{
    pool.query("SELECT bid,src,title FROM yougou_index_banner",(err,result)=>{
        if (err) throw err;
        res.send(result);
    })
});
router.get("/getNews",(req,res)=>{
    pool.query("SELECT nid,img,logo,title,price,packet FROM yougou_index_new",(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})
router.get("/getPaster",(req,res)=>{
    pool.query("SELECT pid,img,bigLogo,brandId,packet FROM yougou_index_poster",(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})
router.get("/getBrand",(req,res)=>{
    pool.query("SELECT bid,img,brandId,packet FROM yougou_index_brand",(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})

module.exports=router;