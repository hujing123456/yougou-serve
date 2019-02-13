const express=require('express');
const bodyParser=require('body-parser');
const userRouter=require('./routes/user.js');
const session=require("express-session");
const indexRouter=require("./routes/index.js");
const detailsRouter=require("./routes/details.js");
const listRouter=require("./routes/list.js");
const cartRouter=require("./routes/cart.js");
const cors=require("cors");
var app=express();
app.listen(3000);
app.use(bodyParser.urlencoded({
	extended:false
}));
app.use(session({
    secret:"128位随机字符",
    resave:false,
    saveUninitialized:true,
    cookie:{
        maxAge:1000*60*60*24
    }
}));
app.use(cors({
    origin:["http://127.0.0.1:5500","http://localhost:8080"],
    credentials:true
}));
app.use(express.static(__dirname+'/public'));
app.use('/user',userRouter);
app.use("/index",indexRouter);
app.use("/details",detailsRouter);
app.use("/list",listRouter);
app.use("/cart",cartRouter);