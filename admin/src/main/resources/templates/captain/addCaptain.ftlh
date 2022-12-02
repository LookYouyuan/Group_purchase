<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>
        增加团长账号
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
    <form class="layui-form" action="doAddCaptain">

        <div>
            <input type="hidden" name = "password" value="1111">
        </div>
        <div>
            <input type="hidden" name = "captain_wage" value="0">
        </div>

        <div class="layui-form-item">
            <label for="L_city" class="layui-form-label">
                <span class="x-red">*</span>
                姓名
            </label>
            <div class="layui-input-inline">
                <input type="text" id="L_city" name="captain_name" autocomplete="off" placeholder="姓名"
                       class="layui-input">

            </div>
            <div class="layui-form-mid layui-word-aux">
                <span class="x-red">*</span>
            </div>
        </div>

        <div class="layui-form-item">
            <label for="L_city" class="layui-form-label">
                性别
            </label>
            <div class="layui-input-inline">
                <input type="text" id="L_city" name="captain_sex" autocomplete="off" placeholder="性别"
                       class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">

            <LABEL CLASS="LAYUI-FORM-LABEL">注册日期</label>
            <div class="layui-input-inline">
                <input class="layui-input" name="captain_date" placeholder="注册日期" id="date">
            </div>


        </div>

        <div class="layui-form-item">
            <label for="L_city" class="layui-form-label">
                负责区域
            </label>
            <div class="layui-input-inline">
                <input type="text" id="L_city" name="position" autocomplete="off" placeholder="负责区域"
                       class="layui-input">
            </div>
        </div>




        <div class="layui-form-item">
            <label for="L_sign" class="layui-form-label">
            </label>
            <button  class="layui-btn" key="set-mine" lay-filter="save" lay-submit onclick="location.replace(document.referrer);">
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
</body>

</html>