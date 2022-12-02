<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title></title>
		<link rel="stylesheet" type="text/css" href="css/animate.css"/>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
		<link rel="stylesheet" type="text/css" href="css/css.css"/>
		<link rel="stylesheet" type="text/css" href="css/cates.css"/>
	</head>
	<body>
		<header class="userList">
			<div class="innerBox">
				<ul class="left">

				</ul>
				<ul class="right">
					<li><a href="index?user_id=${user.user_id}">首页</a></li>
					<li><a href="queryPerson?user_id=${user.user_id}">个人中心</a></li>
					<li><a href="#"></a></li>
					<li><a href="queryCart?user_id=${user.user_id}">订单中心</a></li>
					<li><a href="#"></a></li>

				</ul>
			</div>
		</header>

		<nav>
			<div class="innerBox">
				<ul>
					<li ><a href="index?user_id=${user.user_id}">首页</a></li>
					<#--<li><a href="queryRating?user_id=${user.user_id}">推荐</a></li>-->
					<li class="active"><a href="javascript:location.reload();">分类</a></li>
					<li><a href="queryCart?user_id=${user.user_id}">订单中心</a></li>
					<li><a href="queryPerson?user_id=${user.user_id}">个人中心</a></li>
				</ul>
			</div>
		</nav>
		<div class="container">
			<div class="innerBox cateBox">
				<div class="left leftBox">
					<div class="cateList">
						<div class="titles cateTitle">
							分类
						</div>
						<div class="cates">
							<ul>
								<#if types ?? && (types?size>0)>
								<#list types as type>
									<li><a target="_blank" href="toRecommend?type_id=${type.type_id}&user_id=${user.user_id}">${type.type_name}</a></li>
								</#list>
								</#if>
							</ul>
						</div>
					</div>

				</div>
				<div class="right rightBox">

					<div class="hot">
						<div class="titles hotTitle">
							热点推荐
						</div>
						<div class="hotBox">


							<div class="todayGoods">
								<div class="product-img">
									<a type="button" href="#" onclick="member_edit('查看详情','toDetails?goods_id=${ratings[1].goods.goods_id}&rating_id=${ratings[1].id}','4','800','450')"><img style="width: 100px; height: 100px; " src="${ratings[1].goods.goods_img}"/></a>
								</div>
								<div class="todayTitle">
									<p><a type="button" href="#" onclick="member_edit('查看详情','toDetails?goods_id=${ratings[1].goods.goods_id}&rating_id=${ratings[1].id}','4','800','450')">${ratings[1].goods.goods_name}</a></p>
									<p><span>￥${ratings[1].goods.goods_price}</span></p>
									<a type="button" class="btn btn-block" onclick="member_edit('加入购物车','toAddCart?id=${ratings[1].id}','4','400','200')">加入购物车</a>
								</div>
							</div>
							<div class="todayGoods">
								<div class="product-img">
									<a type="button" href="#" onclick="member_edit('查看详情','toDetails?goods_id=${ratings[2].goods.goods_id}&rating_id=${ratings[2].id}','4','800','450')"><img style="width: 100px; height: 100px; " src="${ratings[2].goods.goods_img}"/></a>
								</div>
								<div class="todayTitle">
									<p><a type="button" href="#" onclick="member_edit('查看详情','toDetails?goods_id=${ratings[2].goods.goods_id}&rating_id=${ratings[2].id}','4','800','450')">${ratings[2].goods.goods_name}</a></p>
									<p><span>￥${ratings[2].goods.goods_price}</span></p>
									<a type="button" class="btn btn-block" onclick="member_edit('加入购物车','toAddCart?id=${ratings[2].id}','4','400','200')">加入购物车</a>
								</div>
							</div>
							<div class="todayGoods">
								<div class="product-img">
									<a type="button" href="#" onclick="member_edit('查看详情','toDetails?goods_id=${ratings[3].goods.goods_id}&rating_id=${ratings[3].id}','4','800','450')"><img style="width: 100px; height: 100px; " src="${ratings[3].goods.goods_img}"/></a>
								</div>
								<div class="todayTitle">
									<p><a type="button" href="#" onclick="member_edit('查看详情','toDetails?goods_id=${ratings[3].goods.goods_id}&rating_id=${ratings[3].id}','4','800','450')">${ratings[3].goods.goods_name}</a></p>
									<p><span>￥${ratings[3].goods.goods_price}</span></p>
									<a type="button" class="btn btn-block" onclick="member_edit('加入购物车','toAddCart?id=${ratings[3].id}','4','400','200')">加入购物车</a>
								</div>
							</div>
							<div class="todayGoods">
								<div class="product-img">
									<a type="button" href="#" onclick="member_edit('查看详情','toDetails?goods_id=${ratings[4].goods.goods_id}&rating_id=${ratings[4].id}','4','800','450')"><img style="width: 100px; height: 100px; " src="${ratings[4].goods.goods_img}"/></a>
								</div>
								<div class="todayTitle">
									<p><a type="button" href="#" onclick="member_edit('查看详情','toDetails?goods_id=${ratings[4].goods.goods_id}&rating_id=${ratings[4].id}','4','800','450')">${ratings[4].goods.goods_name}</a></p>
									<p><span>￥${ratings[4].goods.goods_price}</span></p>
									<a type="button" class="btn btn-block" onclick="member_edit('加入购物车','toAddCart?id=${ratings[4].id}','4','400','200')">加入购物车</a>
								</div>
							</div>
							<div class="todayGoods">
								<div class="product-img">
									<a type="button" href="#" onclick="member_edit('查看详情','toDetails?goods_id=${ratings[5].goods.goods_id}&rating_id=${ratings[5].id}','4','800','450')"><img style="width: 100px; height: 100px; " src="${ratings[5].goods.goods_img}"/></a>
								</div>
								<div class="todayTitle">
									<p><a type="button" href="#" onclick="member_edit('查看详情','toDetails?goods_id=${ratings[5].goods.goods_id}&rating_id=${ratings[5].id}','4','800','450')">${ratings[5].goods.goods_name}</a></p>
									<p><span>￥${ratings[5].goods.goods_price}</span></p>
									<a type="button" class="btn btn-block" onclick="member_edit('加入购物车','toAddCart?id=${ratings[5].id}','4','400','200')">加入购物车</a>
								</div>
							</div>


						</div>
					</div>
				</div>
			</div>
		</div>

	</body>
	<script src="js/jquery-1.10.2.min.js" type="text/javascript" charset="utf-8"></script>


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
