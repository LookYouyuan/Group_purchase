<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>
        用户已收货列表
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
            <span class="layui-breadcrumb">
              <a><cite>首页</cite></a>
              <a><cite>营收管理</cite></a>
              <a><cite>用户已收货列表</cite></a>
            </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"  href="queryRevenue?captain_id=${captain.captain_id}" title="刷新"><i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="x-body">
    <form class="layui-form x-center" action="queryRevenueById" style="width:50%">
        <div class="layui-form-pane" style="margin-top: 15px;">
            <div class="layui-form-item">

                <label class="layui-form-label">订单</label>
                <div class="layui-input-inline" style="width:400px">
                    <input type="text" name="go_name"  placeholdfer="输入团单单号" autocomplete="off" class="layui-input">
                </div>


                <div class="layui-input-inline" style="width:80px">
                    <button class="layui-btn"  name="search" ><i class="layui-icon">&#xe615;</i></button>
                </div>

            </div>
        </div>
    </form>

    <table class="layui-table">
        <thead>
        <tr>
            <th>
                选择
            </th>


            <th>
                单号
            </th>
            <th>
                商品名
            </th>

            <th>
                价格
            </th>

            <th>
                收益
            </th>

            <th>
                操作
            </th>
        </tr>
        </thead>
        <tbody>
        <script>
            var all_wages = 0;
        </script>
        <#if orders ?? && (orders?size>0)>
            <#list orders as order>

                <tr>
                <td>
                    <input type="checkbox" value="1" name="">
                </td>

                <td>
                    ${order.order_id}
                </td>
                <td>
                    ${order.order_name}
                </td>

                <td>
                    ${order.order_price}
                </td>


                <td>
                    ${order.order_price * 0.05}
                    <script>
                        all_wages += ${order.order_price * 0.05};
                    </script>
                </td>


                <td class="td-manage">

                    <#--<a title="点击核销" href="toUpdateOrder?order_id=${order.order_id}"
                       class="ml-5" style="text-decoration:none">
                        <i class="layui-icon">&#xe642;</i>
                    </a>-->


                </td>
            </#list>
        <#else >
            <tr>
                <td colspan="9" align="center">对不起，没有查询到相关记录!!!</td>
            </tr>

        </#if>
        </tr>

        </tbody>

        <tr>
            <td colspan="2" align="center">总收益为：<script>document.write(all_wages)</script></td>
            <td colspan="4" class="td-manage">




                <form class="layui-form" action="doUpdateRevenue">

                    <input  type="hidden" name = "captain_id" value="${captain.captain_id}" >

                    <input  type="hidden" name = "captain_wage" id="codes" >

                    <script>
                        document.getElementById("codes").value=all_wages
                    </script>


                    <div class="layui-form-item">
                        <label for="L_sign" class="layui-form-label">
                        </label>
                        <button  class="layui-btn" key="set-mine" lay-filter="save" lay-submit onclick="location.replace(document.referrer);">
                            点击保存收益
                        </button>
                    </div>
                </form>


            </td>

        </tr>
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