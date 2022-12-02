<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>商品详情</title>
		<link rel="stylesheet" type="text/css" href="css/animate.css"/>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
		<link rel="stylesheet" type="text/css" href="css/css.css"/>
		<link rel="stylesheet" type="text/css" href="css/details&personnal.css"/>
		<link rel="stylesheet" type="text/css" href="css/browse.css"/>
		<link rel="shortcut icon" href="favicon.ico"/>
		<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
	</head>
	<body>





		<div class="container">
			<div class="innerBox">

				<div class="detailBody">
					<div class="detailBodyleft">
						<div class="chanegecolor" name="0"></div>
						<div class="bigPic">
				       		<div class="info">
								<table>
									<tbody>
										<tr>
											<td>
												<div><img src="${goods.goods_img}"></div>
											</td>

											<td>
												<div><img src="${goods.goods_img}"></div>
											</td>

										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="sPic">
								<a class="btnleft" href="javascript:;"></a>
								<a class="btnright" href="javascript:;"></a>
								<div class="info">
									<table>
										<tbody>
											<tr>
												<td class="current">
													<div>
														<a href="javascript:"><img src="${goods.goods_img}"></a>
													</div>
												</td>

											</tr>
										</tbody>
									</table>
								</div>
							</div>
					</div>
					<div class="detailBodyright">
						<div class="commodityTitle">${goods.goods_name}</div>
						<div class="commodityauthor"></div>
						<div class="commodityprice"><span>￥${goods.goods_price}</span><p><#--原价：${goods.goods_price} + ${goods.goods_price} * 0.5--></p></div>
						<div class="commoditydetails">
							<div class="commoditydetailsBox"><div class="left">${goods.goods_cnt}单成团</div><div class="right"><a href="#"><img src="img/icons/share.png"/>分享</a></div></div>
							<div class="commoditydetailsBox"><div class="left"><#--物品类型：计算机--></div><div class="right"><a href="#"><img src="img/icons/save.png"/>收藏商品</a></div></div>
							<div class="commoditydetailsBox"><div class="left"><#--新旧程度：八成新--></div><div class="right"><a href="#"><img src="img/icons/connect.png"/>联系客服</a></div></div>
						</div>
						<div class="buyBtnbox">
							<#--<div class="btn-group choosenumberBtn">
	                            <div class="btn-group">
		                            <button type="button" class="btn btn-danger addbtn"><i class="glyphicon glyphicon-minus"></i></button>
		                            <input type="text" name="" id="numberbox" value="" placeholder="1"/>
		                            <button type="button" class="btn btn-danger lessbtn"><i class="glyphicon glyphicon-plus"></i></i></button>
	                            </div>
							</div>-->

							<#if rating_id != 0>
							<form class="layui-form layui-form-pane" action="doUpdateRating">
								<div>
									<input type="hidden" name = "id" value="${rating.id}">
								</div>
								<div>
									<input type="hidden" name = "rating" value="${rating.rating + 1}">
								</div>
								<button  type=“submit” onclick="var index = parent.layer.getFrameIndex(window.name);parent.layer.close(index);" class="buyRightnow btn btn-danger center-block" data-index="2">关闭页面</button>
							</form>
							<#else>
								<form class="layui-form layui-form-pane" action="doAddRating">

									<div>
										<input type="hidden" name = "user_id" value="${user_id}">
									</div>
									<div>
										<input type="hidden" name = "goods_id" value="${goods.goods_id}">
									</div>
									<div>
										<input type="hidden" name = "rating" value="1">
									</div>
									<button  type=“submit” onclick="var index = parent.layer.getFrameIndex(window.name);parent.layer.close(index);" class="buyRightnow btn btn-danger center-block" data-index="2">关闭页面</button>
								</form>

							</#if>
<#--							<a href="toAddCart?id=${rating_id}" class="addShop btn btn-danger center-block" data-index="2"><img src="img/icons/shopcar.png"/>加入购物车</a>-->
						</div>
					</div>
				</div>
				<div class="detialFootter">
					<div class="tabbable tablediv">
						<ul class="nav nav-tabs tebleul">
							<li class="active tableli">
								<a href="#introduction" data-toggle="tab">物品描述</a>
							</li>
							<#--<li class=" tableli">
								<a href="#comment" data-toggle="tab"> 买家评论(6)</a>
							</li>-->
						</ul>
						<div class="tab-content">
							<div class="tab-pane active" id="introduction">
								<div class="introductionBoxleft">
									<p>${goods.goods_explain}</p>

								</div>
								<div class="introductionBoxright">
									<img src="img/cartoon.png"/>
								</div>
							</div>
							<#--<div class="tab-pane" id="comment">
								<div class="commentBox">
									<div class="eachComment">
										<div class="commentBoxleft"><img src="img/09.jpg"/></div>
										<div class="commentBoxright">
											<div class="commentBoxname"><a href="#">骆驼祥子</a></div>
											<div class="commentBoxmain">书很新，对于初学Javascript的我来说帮助很大。店主人也很好有问必答，耐心解答了我所有问题。</div>
										</div>
									</div>

									<div class="eachComment">
										<div class="commentBoxleft"><img src="img/09.jpg"/></div>
										<div class="commentBoxright">
											<div class="commentBoxname"><a href="#">骆驼祥子</a></div>
											<div class="commentBoxmain">书很新，对于初学Javascript的我来说帮助很大。店主人也很好有问必答，耐心解答了我所有问题。</div>
										</div>
									</div>

									<div class="eachComment">
										<div class="commentBoxleft"><img src="img/09.jpg"/></div>
										<div class="commentBoxright">
											<div class="commentBoxname"><a href="#">骆驼祥子</a></div>
											<div class="commentBoxmain">书很新，对于初学Javascript的我来说帮助很大。店主人也很好有问必答，耐心解答了我所有问题。</div>
										</div>
									</div>
								</div>
							</div>-->
						</div>
					</div>
				</div>
			</div>
		</div>

	</body><script type=text/javascript>$(document).ready(function() {
	var curid = 0;
	$(".sPic .info td").click(function() {
		var n = $(".chanegecolor").attr('name');
		$(".sPic .info tr").eq(n).find("td").removeClass("current");
		$(this).addClass("current");
		curid = $(this).index();
		$(".bigPic .info").animate({
			"scrollLeft": curid * 226
		})
	})

	$(".bigPic a.btnright").click(function() {
		var n = $(".chanegecolor").attr('name');
		curid++;
		if (curid > $(".sPic .info tr").eq(n).find("td").size() - 1) {
			alert("已经是最后一张了！");
			curid = $(".sPic .info tr").eq(n).find("td").size() - 1;
		} else {
			$(".bigPic .info").animate({
				"scrollLeft": curid * 226
			})
		}
		$(".sPic .info tr").eq(n).find("td").removeClass("current");
		$(".sPic .info tr").eq(n).find("td").eq(curid).addClass("current");
	});

	$(".sPic a.btnleft").click(function() {
		$(".sPic .info").animate({
			"scrollLeft": "-=80"
		})
	});

	$(".sPic a.btnright").click(function() {
		$(".sPic .info").animate({
			"scrollLeft": "+=80"
		})
	});

});</script>
</html>
