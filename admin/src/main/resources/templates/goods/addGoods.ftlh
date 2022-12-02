<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>
        商品上新
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
    <form class="layui-form" action="doAddGoods">

        <div class="layui-form-item">
            <label for="L_city" class="layui-form-label">
                <span class="x-red">*</span>
                商品图片
            </label>
            <div class="layui-input-inline">
                <input accept="image/*"  class="layui-input"  id="upload_file" type="file">
                <input type="text"  class="layui-input" name="goods_img" id="base64_output" name="goods_img">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="L_city" class="layui-form-label">
                <span class="x-red">*</span>
                商品名
            </label>
            <div class="layui-input-inline">
                <input type="text" id="L_city" name="goods_name" autocomplete="off" placeholder="商品名"
                       class="layui-input">
            </div>
            <div class="layui-form-mid layui-word-aux">
                <span class="x-red">*</span>
            </div>
        </div>

        <div class="layui-form-item">
            <label for="L_city" class="layui-form-label">
                单价
            </label>
            <div class="layui-input-inline">
                <input type="text" id="L_city" name="goods_price" autocomplete="off" placeholder="单价"
                       class="layui-input">
            </div>
        </div>



        <div class="layui-form-item">
            <label for="L_city" class="layui-form-label">
                成团单数
            </label>
            <div class="layui-input-inline">
                <input type="text" id="L_city" name="goods_cnt" autocomplete="off" placeholder="成团单数"
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
                <input type="text" id="L_city" name="goods_wage" autocomplete="off" placeholder="每单团长收益"
                       class="layui-input">
            </div>
        </div>

        <div class="layui-form-item layui-form-text">
            <label for="desc" class="layui-form-label">描述</label>
            <div class="layui-input-block">
                <textarea placeholder="请输入内容" id="L_city" name="goods_explain" class="layui-textarea"></textarea>
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