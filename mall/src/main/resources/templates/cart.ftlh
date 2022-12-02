<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <title>个人中心</title>
    <link rel="stylesheet" type="text/css" href="css/animate.css" />
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="css/css.css" />
    <link rel="stylesheet" type="text/css" href="css/details&personnal.css" />
    <link rel="stylesheet" type="text/css" href="css/browse.css" />
    <link rel="shortcut icon" href="favicon.ico" />
    <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>

<body>
<header class="userList">
    <div class="innerBox">

        <ul class="right">
            <li>
                <a href="index?user_id=${user.user_id}">首页</a>
            </li>
            <li>
                <a href="queryPerson?user_id=${user.user_id}">个人中心</a>
            </li>
            <li>
                <a href="#"></a>
            </li>
            <li>
                <a href="javascript:location.reload();">订单中心</a>
            </li>
            <li>
                <a href="#"></a>
            </li>
        </ul>
    </div>
</header>

<nav>
    <div class="innerBox">
        <ul>
            <li>
                <a href="index?user_id=${user.user_id}">首页</a>
            </li>
            <li>
                <a href="queryType?user_id=${user.user_id}">分类</a>
            </li>
            <li class="active">
                <a href="javascript:location.reload();">订单中心</a>
            </li>
            <li>
                <a href="queryPerson?user_id=${user.user_id}">个人中心</a>
            </li>

        </ul>
    </div>
</nav>
<div class="container">
    <div class="innerBox">
        <div class="personnalHead">订单中心</div>
        <div class="personnalBody panel">
            <div class="tabbable tabs-left clearfix">
                <div class="personnalBodyleft">
                    <div class="personnalnavPic"><img src="" /></div>
                    <div class="personnalnavBody">
                        <ul id="myTab1" class="nav nav-tabs">
                            <#--<li class="active">
                                <a href="#myTabMessae" data-toggle="tab">个人信息</a>
                            </li>-->
                            <li class="active">
                                <a href="#myTabPay" data-toggle="tab">购物车</a>
                            </li>
                            <li>
                                <a href="#myTabMoney" data-toggle="tab">我的交易</a>
                            </li>
                            <#--<li>
                                <a href="#myTabAdvice" data-toggle="tab">反馈信息</a>
                            </li>-->
                        </ul>
                    </div>
                </div>
                <div id="myTabContent" class="tab-content">
                    <#--<div class="personnalBodyright tab-pane fade" id="myTabMessae">
                        <div class="personnalMainhead"></div>
                        <div class="messageBox">
                            <div class="messageBoxleft">
                                <div class="messageBoxhead"><img src="img/09.jpg" /></div>
                                <div class="messageBoxheadright">
                                    <div class="messageBoxname">骆驼祥子</div>
                                    <div class="savelevel">会员等级:<img src="img/icons/save.png" /><img src="img/icons/save.png" /></div>
                                    <div class="savelevel">安全等级：<img src="img/icons/save.png" /><img src="img/icons/save.png" /><img src="img/icons/save.png" /></div>
                                </div>
                            </div>
                            <div class="messageBoxright">
                                <ul>
                                    <li>
                                        <a href="#">
                                            <div class="icondiv"><img src="img/icons/like.png" /></div>我喜欢的</a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="icondiv"><img src="img/icons/focus.png" /></div>关注卖家</a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="icondiv"><img src="img/icons/card.png" /></div>我的卡槽</a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="icondiv"><img src="img/icons/adress.png" /></div>我的地址</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>-->

                    <div class="personnalBodyright tab-pane fade  active in" id="myTabPay">
                        <!--<div class="personnalMainhead"></div>-->
                        <div class="PayBox">
                            <div class="panel">
                                <ul id="payBoxNav" class="nav nav-tabs nav-justified">
                                    <li class="active">
                                        <a href="#waitPay" data-toggle="tab">待付款</a>
                                    </li>

                                    <#--<li class="">
                                        <a href="#waitApprise" data-toggle="tab">待评价</a>
                                    </li>-->
                                </ul>
                                <div id="myTabPayContent" class="tab-content">
                                    <div class="tab-pane fade active in" id="waitPay">
                                        <#if carts ?? && (carts?size>0)>
                                            <#list carts as cart>
                                                <#if cart.cart_mode == 1>
                                                    <div class="commondity">
                                                        <div class="commondityleft left"><img src="${cart.goods.goods_img}" /></div>
                                                        <div class="commondityright left">
                                                            <dl>
                                                                <dd>
                                                                    <p class="commondityTitle">${cart.goods.goods_name}</p>
                                                                </dd>
                                                                <dd><span>单价 ：￥${cart.goods.goods_price}</span>&nbsp;&nbsp;&nbsp;</dd>
                                                            </dl>
                                                            <p class="acoumtpay">支付金额 ：<span>￥${cart.goods.goods_price}</span></p>
<#--                                                            <p class="acoumtpay">团长：<span>${cart.captain.captain_name}</span></p>-->
                                                        </div>
                                                        <button type="button"  class="btn right" onclick="member_edit('付款','toUpdateCart?cart_id=${cart.cart_id}','4','700','400')" >我要付款</button>
                                                    </div>
                                                </#if>
                                            </#list>
                                        </#if>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="personnalBodyright  tab-pane fade " id="myTabMoney">
                        <div class="PayBox">
                            <div class="panel">
                                <ul id="payBoxNav" class="nav nav-tabs nav-justified">
                                    <li  class="active">
                                        <a href="#waitSend" data-toggle="tab">已支付</a>
                                    </li>
                                    <li class="">
                                        <a href="#waitReceive" data-toggle="tab">待收货</a>
                                    </li>
                                    <#--<li class="">
                                        <a href="#waitApprise" data-toggle="tab">待评价</a>
                                    </li>-->
                                </ul>
                                <div id="myTabPayContent" class="tab-content">

                                    <div class="tab-pane fade active in" id="waitSend">
                                        <#if carts ?? && (carts?size>0)>
                                            <#list carts as cart>
                                                <#if cart.cart_mode == 2 || cart.cart_mode == 3>
                                                    <div class="commondity">
                                                        <div class="commondityleft left"><img src="${cart.goods.goods_img}" /></div>
                                                        <div class="commondityright left">
                                                            <dl>
                                                                <dd>
                                                                    <p class="commondityTitle">${cart.goods.goods_name}</p>
                                                                </dd>
                                                                <dd><span>单价 ：￥${cart.goods.goods_price}</span>&nbsp;&nbsp;&nbsp;</dd>
                                                            </dl>
                                                            <p class="acoumtpay">支付金额 ：<span>￥${cart.goods.goods_price}</span></p>
                                                            <p class="acoumtpay">团长：<span>${cart.captain.captain_name}</span></p>
                                                        </div>
<#--                                                    <button type="button"  class="btn right" onclick="member_edit('付款成功','toUpdateCart?cart_id=${cart.cart_id}','4','700','400')" >我要付款</button>-->
                                                    </div>
                                                </#if>
                                            </#list>
                                        </#if>
                                    </div>
                                    <div class="tab-pane fade waitReceive" id="waitReceive">
                                        <#if cartss ?? && (cartss?size>0)>
                                            <#list cartss as cart>
                                                <#if cart.cart_mode == 4>
                                                    <div class="commondity">
                                                        <div class="commondityleft left"><img src="${cart.goods.goods_img}" /></div>
                                                        <div class="commondityright left">
                                                            <dl>
                                                                <dd>
                                                                    <p class="commondityTitle">${cart.goods.goods_name}</p>
                                                                </dd>
                                                                <dd><span>单价 ：￥${cart.goods.goods_price}</span>&nbsp;&nbsp;&nbsp;</dd>
                                                            </dl>
                                                            <p class="acoumtpay">支付金额 ：<span>￥${cart.goods.goods_price}</span></p>
                                                            <p class="acoumtpay">团长：<span>${cart.captain.captain_name}</span></p>
                                                            <#if cart.order.order_prove_id != 0 >
                                                                <p class="acoumtpay">取件码：<span>${cart.order.order_prove_id}</span></p>
                                                            </#if>
                                                        </div>
                                                        <#--                                                    <button type="button"  class="btn right" onclick="member_edit('付款成功','toUpdateCart?cart_id=${cart.cart_id}','4','700','400')" >我要付款</button>-->
                                                    </div>
                                                </#if>
                                            </#list>
                                        </#if>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>

                    <#--<div class="personnalBodyright tab-pane fade" id="myTabAdvice">
                        <div class="personnalMainheadimg"><img src="img/headpic.png" /></div>
                        <div class="adivceBox">
                            <div class="modal-content">
                                <div class="modal-body">
                                    <p class="adviceTitle">欢迎都对我们提出任何方面的建议和意见！！</p>
                                    <div class="row">
                                        <div class="col-xs-6">
                                            <input type="text" class="form-control" placeholder="姓名">
                                        </div>
                                        <div class="col-xs-6">
                                            <input type="text" class="form-control" placeholder="邮箱">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-xs-12">
                                            <textarea class="form-control advicetextarea" placeholder="请写下您的宝贵意见" rows="3"></textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-danger">发送</button>
                                </div>
                            </div>
                        </div>
                    </div>-->
                </div>
            </div>
        </div>
        <div class="personnalFoot"> </div>
    </div>
</div>
<footer>
    <div class="footerNav">
        <ul>
            <!--<li>
                <a href="#">网络文化经营许可证:浙网文[2015]0268-0276号</a>
            </li>-->
            <!--<li>
                <a href="#">增值电信业务经营许可证:浙B2-20008024</a>
            </li>
            <li>
                <a href="#">信息络网传播视听节目许可证:1009364号</a>
            </li>-->
            <li><a href="#">版权声明©</a></li>
        </ul>
    </div>
</footer>




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


</body>

</html>