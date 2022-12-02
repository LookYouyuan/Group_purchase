<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>
            团购团长端
        </title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="format-detection" content="telephone=no">
        <link rel="stylesheet" href="./css/x-admin.css" media="all">
    </head>
    <body>
        <div class="layui-layout layui-layout-admin">
            <div class="layui-header header header-demo">
                <div class="layui-main">
                    <a class="logo" href="index" style="font-size:20px;">
                        团购团长端
                    </a>
                    <ul class="layui-nav" lay-filter="">
                      <li class="layui-nav-item"><img src="./images/login_logo.png" class="layui-circle" style="border: 2px solid #A9B7B7;" width="35px" alt=""></li>
                      <li class="layui-nav-item">
                        <a href="javascript:;">${captain.captain_id}</a>
                        <dl class="layui-nav-child"> <!-- 二级菜单 -->
                            <dd><a href="updatePassword?captain_id=${captain.captain_id}"  >修改密码</a></dd>
                          <dd><a href="login" >退出</a></dd>
                        </dl>
                      </li>
                      <!-- <li class="layui-nav-item">
                        <a href="" title="消息">
                            <i class="layui-icon" style="top: 1px;">&#xe63a;</i>
                        </a>
                        </li> -->
                      <li class="layui-nav-item x-index"><a href="index">首页</a></li>
                    </ul>
                </div>
            </div>
            <div class="layui-side layui-bg-black x-side">
                <div class="layui-side-scroll">
                    <ul class="layui-nav layui-nav-tree site-demo-nav" lay-filter="side">

                        <li class="layui-nav-item">
                            <a class="javascript:;" href="javascript:;">
                                <i class="layui-icon" style="top: 3px;">&#xe629;</i><cite>团单管理</cite>
                            </a>

                            <dl class="layui-nav-child">
                                <dd class="">
                                    <a href="javascript:;" _href="queryOrder1">
                                        <cite>已下单列表</cite>
                                    </a>
                                </dd>
                            </dl>
                            <dl class="layui-nav-child">
                                <dd class="">
                                    <a href="javascript:;" _href="queryOrder2">
                                        <cite>正在运输列表</cite>
                                    </a>
                                </dd>
                            </dl>
                            <dl class="layui-nav-child">
                                <dd class="">
                                    <a href="javascript:;" _href="queryOrder3">
                                        <cite>待取货列表</cite>
                                    </a>
                                </dd>
                            </dl>
                            <dl class="layui-nav-child">
                                <dd class="">
                                    <a href="javascript:;" _href="queryOrder4">
                                        <cite>用户已收货列表</cite>
                                    </a>
                                </dd>
                            </dl>
                        </li>

                        <#--<li class="layui-nav-item">
                            <a class="javascript:;" href="javascript:;">
                                <i class="layui-icon" style="top: 3px;">&#xe630;</i><cite>城市划分</cite>
                            </a>
                            <dl class="layui-nav-child">
                                <dd class="">
                                    <a href="javascript:;" _href="">
                                        <cite>列表</cite>
                                    </a>
                                </dd>
                            </dl>
                        </li>


                        <li class="layui-nav-item">
                            <a class="javascript:;" href="javascript:;">
                                <i class="layui-icon" style="top: 3px;">&#xe613;</i><cite>职位管理</cite>
                            </a>
                            <dl class="layui-nav-child">
                                <dd class="">
                                    <a href="javascript:;" _href="">
                                        <cite>职位列表</cite>
                                    </a>
                                </dd>
                                
                            </dl>
                        </li>-->

                        <li class="layui-nav-item">
                            <a class="javascript:;" href="javascript:;">
                                <i class="layui-icon" style="top: 3px;">&#xe612;</i><cite>营收管理</cite>
                            </a>
                            <dl class="layui-nav-child">
                                <dd class="">
                                    <a href="javascript:;" _href="queryRevenue?captain_id=${captain.captain_id}">
                                        <cite>营收统计</cite>
                                    </a>
                                </dd>
                            </dl>
                        </li>


                        <li class="layui-nav-item">
                            <a class="javascript:;" href="javascript:;">
                                <i class="layui-icon" style="top: 3px;">&#xe62d;</i><cite>拼团管理</cite>
                            </a>
                            <dl class="layui-nav-child">
                                <dd class="">
                                    <a href="javascript:;" _href="querySingle?captain_id=${captain.captain_id}">
                                        <cite>未成团</cite>
                                    </a>
                                </dd>
                            </dl>
                            <dl class="layui-nav-child">
                                <dd class="">
                                    <a href="javascript:;" _href="queryStoO?captain_id=${captain.captain_id}">
                                        <cite>可成团</cite>
                                    </a>
                                </dd>
                            </dl>
                        </li>


                        
                    </ul>
                </div>
            </div>
            <div class="layui-tab layui-tab-card site-demo-title x-main" lay-filter="x-tab" lay-allowclose="true">
                <div class="x-slide_left"></div>
                <ul class="layui-tab-title">
                    <li class="layui-this">
                        首页
                        <i class="layui-icon layui-unselect layui-tab-close">ဆ</i>
                    </li>
                </ul>
                <div class="layui-tab-content site-demo site-demo-body">
                    <div class="layui-tab-item layui-show">
						<iframe frameborder="0" src="welcome" class="x-iframe"></iframe>
                    </div>
                </div>
            </div>
            <div class="site-mobile-shade">
            </div>
        </div>
        <script src="./lib/layui/layui.js" charset="utf-8"></script>
        <script src="./js/x-admin.js"></script>
        <script>
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