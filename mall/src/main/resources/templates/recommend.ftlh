<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <title></title>
    <link rel="stylesheet" type="text/css" href="css/animate.css" />
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="css/css.css" />
    <link rel="stylesheet" type="text/css" href="css/index.css" />
    <script src="js/jquery-1.10.2.min.js" type="text/javascript" charset="utf-8"></script>
    <!--<script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>-->
    <script src="js/jquery.superslide.2.1.1.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/banner.js" type="text/javascript" charset="utf-8"></script>
</head>

<body>
<header class="userList">
    <div class="innerBox">
        <ul class="left">
            <#--<li><a href="login.html">登陆</a></li>
            <li><a href="register.html">注册</a></li>-->
        </ul>
        <ul class="right">

        </ul>
    </div>
</header>

<nav>
    <div class="innerBox">
        <ul id="nav-ul">

        </ul>
    </div>
</nav>

<!--開始-->
<div class="container">
    <div class="innerBox">
        <!--導航，輪播，下載-->


        <!--滑动轮播-->

        <!--滑动轮播-->

        <!--下載-->
        <!-- <div class="content-download">
            <div class="">
                <div class="">
                    <img src="img/download1.png"/>
                </div>
                <div class="download-form">
                    <input type="text" class="phoneNum" placeholder="输入手机号"/>
                    <input type="text" class="sendMess left" placeholder="输入验证码"/><a class="right" href="#">发送验证码</a>
                    <div class="clearBox"></div>
                    <a href="#">发送下载链接</a>
                </div>
            </div>
        </div> -->
        <!--下載-->
    </div>
    <!--導航，輪播，下載-->

    <!--商品列表-->
    <div class="content">
        <div class="panel panel-primary">

            <div class="panel-heading">为你推荐</div>



            <div class="panel-body">
                <div class="row">

                    <#if goodss ?? && (goodss?size>0)>
                        <#list goodss as goods>
                            <div class="col-lg-2 col-md-3 col-sm-6 productlist">
                                <div class="thumbnail">
                                    <div class="product-img"><img  src="${goods.goods_img}" /></div>
                                    <p class="pro-Titile">${goods.goods_name}</p>
                                    <p>￥${goods.goods_price}</p>
                                    <p>${goods.goods_explain}</p>
                                    <p>${goods.goods_cnt}单成团</p>
                                    <a type="button" class="btn btn-block" onclick="member_edit('查看详情','toDetails?goods_id=${goods.goods_id}&user_id=${user_id}&rating_id=0','4','800','450')">查看详情</a>
                                    <a type="button" class="btn btn-block" onclick="member_edit('加入购物车','toAddCart?goods_id=${goods.goods_id}&user_id=${user_id}','4','400','200')">加入购物车</a>
                                </div>
                            </div>
                        </#list>
                    </#if>


                </div>
            </div>

        </div>
    </div>


</div>
</div>
<!--結束-->
<footer>
    <div class="promise">
        <div class="innerBox ">
            <ul>
                <li>
                    <a href="#"><img src="img/icons/user.png" />卖家实名认证</a>
                </li>
                <li>
                    <a href="#"><img src="img/icons/epay.png" />支付宝担保交易</a>
                </li>
                <li>
                    <a href="#"><img src="img/icons/team.png" />专业团队支持</a>
                </li>
                <li>
                    <a href="#"><img src="img/icons/sina.png" />官方微博</a>
                </li>
            </ul>
        </div>
    </div>

    <div class="footerNav">
        <ul>

            <li><a href="#">版权声明©</a></li>
        </ul>
    </div>


</footer>
</body>


<script src="./lib/layui/layui.js" charset="utf-8"></script>
<script src="./js/x-layui.js" charset="utf-8"></script>
<script>
    layui.use(['laydate','element','laypage','layer'], function(){
        $ = layui.jquery;//jquery

        lement = layui.element();//面包导航
        laypage = layui.laypage;//分页
        layer = layui.layer;//弹出层

        //以上模块根据需要引入

        laypage({
            cont: 'page'
            ,pages: 100
            ,first: 1
            ,last: 100
            ,prev: '<em><</em>'
            ,next: '<em>></em>'
        });



    });


    /*用户-添加*/

    function department_add(title,url,w,h){
        x_admin_show(title,url,w,h);
    }


    function department_search(){
        "form".attr("action","queryPositionByName").submit();
    }

    function member_del (title,url,id,w,h) {
        x_admin_show(title,url,w,h);
    }
    // 用户-编辑
    function member_edit (title,url,id,w,h) {
        x_admin_show(title,url,w,h);
    }
</script>
<script>
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>
</html>