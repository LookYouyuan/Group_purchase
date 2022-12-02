<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>
        个人订单
    </title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="./css/x-admin.css" media="all">
</head>
<body>
<div class="x-nav">

    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"  href="javascript:location.reload();" title="刷新"><i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="x-body">


    <table class="layui-table">
        <thead>
        <tr>
            <th>
                选择
            </th>
            <th>
                个人订单号
            </th>
            <th>
                用户ID
            </th>
            <th>
                用户名
            </th>
            <th>
                商品图片
            </th>
            <th>
                商品名
            </th>
            <th>
                商品成团数量
            </th>
            <th>
                该商品我的收益
            </th>

        </tr>
        </thead>
        <tbody>
        <#if carts ?? && ( carts ?size>0)>
            <#list carts as cart>

                    <tr>
                    <td>
                        <input type="checkbox" value="1" name="">
                    </td>
                    <td>
                        ${cart.cart_id}
                    </td>
                    <td>
                        ${cart.cart_user_id}
                    </td>

                    <td>
                        ${cart.user.user_name}
                    </td>
                    <td>
                        <img style="width: 100px; " src="${cart.goods.goods_img}">
                    </td>
                    <td>
                        ${cart.goods.goods_name}
                    </td>
                    <td>
                        ${cart.goods.goods_cnt}
                    </td>
                    <td>
                        ${cart.goods.goods_wage}
                    </td>




            </#list>
        <#else >
            <tr>
                <td colspan="9" align="center">对不起，没有查询到相关记录!!!</td>
            </tr>

        </#if>
        </tr>
        </tbody>
    </table>

    <div id="page"></div>
</div>
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