const express=require('express');
const pool=require('../pool.js');
var router=express.Router();
//router1：用户登录
router.post('/login',function(req,res){
  var $uname=req.body.uname;
  var $upwd=req.body.upwd;
  var reg_upwd=/^[0-9a-zA-Z]{6,11}$/;
  if(!reg_upwd.test($upwd)){
	res.send({code:-1,msg:"请确认密码为6-11位的数字或字母组成"});
	return;
  }
  var reg_uname=/^\w{6,15}$/;
  if(!reg_uname.test($uname)){
		res.send({code:-1,msg:"请确认用户名为6-15位数字字母或下划线组成"});
		return;
	  }
  var sql='SELECT uid,uname,upwd,phone,email FROM yougou_user_login WHERE uname=? AND upwd= md5(?)';
	pool.query(sql,[$uname,$upwd],(err,result)=>{
			if(err) throw err;
			if(result.length>0){
				 req.session.uid=result[0].uid;
				res.send({code:1,uname:result[0].uname});
			}else{
				res.send({code:-1,msg:"登录失败,请重新登录！"});
			}
		})
	})
  router.get("/isLogin",(req,res)=>{
	  var uid=req.session.uid;
	  if(uid!=undefined){
		pool.query("SELECT * FROM yougou_user_login WHERE uid=?",uid,(err,result)=>{
			if(err) throw err;
			res.send({code:1,uname:result[0].uname});
		})
	  }else{
		  res.send({code:-1,msg:"您尚未登录，请先登录"});
	  }

  })
  router.get("/signout",(req,res)=>{
	  req.session.uid=undefined;
	  res.send();
  })	

module.exports=router;