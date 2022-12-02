<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>
        修改购物车状态
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
<div class="x-body">
    <form class="layui-form layui-form-pane" action="doUpdateCart">
        <div>
            <input type="hidden" name = "cart_id" value="${cart.cart_id}">
        </div>
        <div>
            <input type="hidden" name = "cart_mode" value="${cart.cart_mode + 1}">
        </div>


        <div class="layui-form-item">
            <label class="layui-form-label">
                <span class="x-red"></span>
                选择团长</label>
            <div class="layui-input-inline" >
                <select name="cart_captain_id">
                    <option value="0">--请选择--</option>
                    <#if captains ?? && (captains?size>0)>
                        <#list captains as captain>

                            <option value="${captain.captain_id}">${captain.captain_name}</option>

                        </#list>
                    <#else >
                    </#if>

                </select>
            </div>
            <div class="layui-form-mid layui-word-aux">
                <span class="x-red">*</span>
            </div>
        </div>


        <div class="layui-form-item" style="margin-left: 100px; margin-top: 50px">


            <img  style="width: 200px;" src="images/pay.png">
            <button  class="layui-btn" key="set-mine"  lay-submit onclick="location.replace(document.referrer);">
                我已支付
            </button>

            <button  class="layui-btn" key="set-mine" lay-filter="save" lay-submit>
                确定
            </button>
        </div>
    </form>
</div>
<script src="./lib/layui/layui.js" charset="utf-8">
</script>
<script src="./js/x-layui.js" charset="utf-8">
</script>
<script>
    layui.use(['laydate','form','layer'], function(){
        $ = layui.jquery;
        laydate = layui.laydate;
        var form = layui.form()
            ,layer = layui.layer;
        var start = {
            min: '1099-06-16 00:00:00'
            ,max: '2099-06-16 23:59:59'
            ,istoday: false
        };

        form.on('submit(save)', function(data){
            console.log(data);
            //发异步，数据提交
            layer.alert("支付成功", {icon: 6},function () {
                // 获得frame索引
                var index = parent.layer.getFrameIndex(window.name);
                //关闭当前frame
                parent.layer.close(index);
            });
            return false;
        });

        /*document.getElementById('date').onclick = function(){
            start.elem = this;
            laydate(start);
        }*/


    });
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