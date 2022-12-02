<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>
        修改商品信息
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
    <form class="layui-form layui-form-pane" action="doUpdateGoods">
        <div>
            <input type="hidden" name = "goods_id" value="${goods.goods_id}">
        </div>

        <div class="layui-form-item">
            <label for="L_city" class="layui-form-label">

                商品名
            </label>
            <div class="layui-input-inline">
                <input type="text" id="L_city" name="goods_name" autocomplete="off" value="${goods.goods_name}"
                       class="layui-input" >
            </div>

        </div>

        <div class="layui-form-item">
            <label for="L_city" class="layui-form-label">
                单价
            </label>
            <div class="layui-input-inline">
                <input type="text" id="L_city" name="goods_price" autocomplete="off" value="${goods.goods_price}"
                       class="layui-input">
            </div>
        </div>

        <#--<div class="layui-form-item">
            <label for="L_city" class="layui-form-label">
                简介
            </label>
            <div class="layui-input-inline">
                <input type="text" id="L_city" name="goods_explain" autocomplete="off" value="${goods.goods_explain}"
                       class="layui-input">
            </div>
        </div>-->



        <div class="layui-form-item">
            <label for="L_city" class="layui-form-label">
                成团数量
            </label>
            <div class="layui-input-inline">
                <input type="text" id="L_city" name="goods_cnt" autocomplete="off" value="${goods.goods_cnt}"
                       class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">
                种类
            </label>
            <div class="layui-input-inline" >
                <select name="goods_species">
                    <option value="0">--请选择--</option>
                    <#if types ?? && (types?size>0)>
                        <#list types as type>

                            <option value="${type.type_id}">${type.type_name}</option>

                        </#list>
                    <#else >
                    </#if>
                </select>
            </div>
        </div>

        <div class="layui-form-item">
            <label for="L_city" class="layui-form-label">
                团长收益
            </label>
            <div class="layui-input-inline">
                <input type="text" id="L_city" name="goods_wage" autocomplete="off" value="${goods.goods_wage}"
                       class="layui-input">
            </div>
        </div>


        <div class="layui-form-item layui-form-text">
            <label for="desc" class="layui-form-label">描述</label>
            <div class="layui-input-block">
                <textarea placeholder="${goods.goods_explain}" id="L_city" name="goods_explain" class="layui-textarea" "></textarea>
            </div>
        </div>



        <div class="layui-form-item">


            <button  class="layui-btn" key="set-mine"  lay-submit onclick="location.replace(document.referrer);var index = parent.layer.getFrameIndex(window.name);
                //关闭当前frame
                parent.layer.close(index);">
                提交并关闭
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
            layer.alert("修改成功", {icon: 6},function () {
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