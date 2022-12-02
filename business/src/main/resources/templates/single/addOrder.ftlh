<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>

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

    <form class="layui-form" action="doAddOrder">

        <div>
            <input type="hidden" name = "order_id" value="${cart.cart_orders_id}" >
        </div>
        <div>
            <input type="hidden" name = "order_name" value="${cart.goods.goods_name}">
        </div>

        <div>
            <input type="hidden" name = "order_cnt" value="${cart.goods.goods_cnt}">
        </div>
        <div>
            <input type="hidden" name = "order_price" value="${cart.goods.goods_price}">
        </div>

        <div>
            <input type="hidden" name = "order_mode" value=1>
        </div>
        <div>
            <input type="hidden" name = "order_prove_id" value=0>
        </div>
        <div>
            <input type="hidden" name = "order_captain_id" value="${cart.cart_captain_id}">
        </div>

        <script>
            var myDate = new Date();
            var time = myDate.toLocaleDateString().split('/').join('-');

        </script>

        <input type="hidden" name = "order_date" id="dates" >

        <script>
            document.getElementById("dates").value=time;
        </script>

        <div class="layui-form-item">
            <label for="L_city" class="layui-form-label">
                填写地址
            </label>
            <div class="layui-input-inline">
                <input type="text" id="L_city" name="order_add" autocomplete="off" placeholder="地址"
                       class="layui-input">
            </div>
        </div>



        <div class="layui-form-item">
            <label for="L_sign" class="layui-form-label">
            </label>
            <button  class="layui-btn" key="set-mine" lay-filter="save" lay-submit onclick="location.replace(document.referrer);var index = parent.layer.getFrameIndex(window.name);
                //关闭当前frame
                parent.layer.close(index);">
                保存
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

        /* var start = {
             min: laydate.now()
             ,max: '2099-06-16 23:59:59'
             ,istoday: false
             ,choose: function(datas){

             }
         };
         document.getElementById('LAY_demorange_s').onclick = function(){
             start.elem = this;
             laydate(start);
         }*/

        document.getElementById('date').onclick = function(){
            start.elem = this;
            laydate(start);
        }


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


<script type="text/javascript">

    var str;//全局变量，用于存储base64字符串
    document.getElementById("upload_file").onchange = function () {
        var str=gen_base64();

    };
    //图片转为base64编码字符串
    function gen_base64() {
        var file = document.getElementById('upload_file').files[0];
        var r = new FileReader();  //本地预览

        r.readAsDataURL(file);    //Base64
        r.onload = function(){
            document.getElementById('base64_output').value = r.result;

            str=r.result;
            console.info(str);
            return r.result;
        }


    }
</script>
</body>

</html>


















