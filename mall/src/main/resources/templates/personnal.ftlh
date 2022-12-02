<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<title>个人中心</title>
		<link rel="stylesheet" type="text/css" href="css/animate.css" />
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="css/css.css" />
		<link rel="stylesheet" type="text/css" href="css/details&personnal.css" />
		<link rel="stylesheet" type="text/css" href="css/browse.css" />
		<link rel="shortcut icon" href="favicon.ico" />
		<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
	</head>

	<body>
		<header class="userList">
			<div class="innerBox">
				<#--<ul class="left">

				</ul>-->
				<ul class="right">
					<li>
						<a href="index?user_id=${user.user_id}">首页</a>
					</li>
					<li>
						<a href="javascript:location.reload();">个人中心</a>
					</li>

					<li>
						<a href="queryCart?user_id=${user.user_id}">订单中心</a>
					</li>

				</ul>
			</div>
		</header>

		<nav>
			<div class="innerBox">
				<ul>
					<li>
						<a href="index?user_id=${user.user_id}">首页</a>
					</li>
					<li>
						<a href="queryType?user_id=${user.user_id}">分类</a>
					</li>
					<li >
						<a href="queryCart?user_id=${user.user_id}">订单中心</a>
					</li>
					<li class="active">
						<a href="javascript:location.reload();">个人中心</a>
					</li>
				</ul>
			</div>
		</nav>
		<div class="container">
			<div class="innerBox">
				<div class="personnalHead">个人中心</div>
				<div class="personnalBody panel">
					<div class="tabbable tabs-left clearfix">
						<div class="personnalBodyleft">
							<div class="personnalnavPic"><img src="" /></div>
							<div class="personnalnavBody">
								<ul id="myTab1" class="nav nav-tabs">
									<li class="active">
										<a href="#myTabMessae" data-toggle="tab">个人信息</a>
									</li>

									<#--<li>
										<a href="#myTabMoney" data-toggle="tab">我的钱包</a>
									</li>-->
									<li>
										<a href="#myTabAdvice" data-toggle="tab">反馈信息</a>
									</li>
								</ul>
							</div>
						</div>
						<div id="myTabContent" class="tab-content">
							<div class="personnalBodyright tab-pane fade active in" id="myTabMessae">
								<div class="personnalMainhead"></div>
								<div class="messageBox">
									<div class="messageBoxleft">
										<div class="messageBoxhead"><img src="img/09.jpg" /></div>
										<div class="messageBoxheadright">

												<div class="messageBoxname">昵称：${user.user_name}</div>


											<div class="savelevel">会员等级:<img src="img/icons/save.png" /><img src="img/icons/save.png" /></div>
											<div class="savelevel">安全等级：<img src="img/icons/save.png" /><img src="img/icons/save.png" /><img src="img/icons/save.png" /></div>
										</div>
									</div>
									<div class="WalletBoxright">
										<ul>
											<li>
												<a href="#">
													<div class="Walletbalance Walleticon"><img src="img/icons/like.png" /></div>我的团长</a>
											</li>
											<#--<li>
												<a href="#">
													<div class="icondiv"><img src="img/icons/focus.png" /></div>关注卖家</a>
											</li>-->
											<li>
												<a href="#">
													<div class="Walletbalance Walleticon"><img src="img/icons/card.png" /></div>
													我的订单
												</a>
											</li>
											<#--<li>
												<a href="#">
													<div class="icondiv"><img src="img/icons/adress.png" /></div>我的地址</a>
											</li>-->
										</ul>
									</div>
								</div>
							</div>





							<div class="personnalBodyright tab-pane fade" id="myTabAdvice">
								<div class="personnalMainheadimg"><img src="img/headpic.png" /></div>
								<div class="adivceBox">
									<div class="modal-content">
										<div class="modal-body">
											<p class="adviceTitle">欢迎都对我们提出任何方面的建议和意见！！</p>
											<div class="row">
												<div class="col-xs-6">
													<input type="text" class="form-control" placeholder="姓名">
												</div>
												<div class="col-xs-6">
													<input type="text" class="form-control" placeholder="邮箱">
												</div>
											</div>
											<div class="row">
												<div class="col-xs-12">
													<textarea class="form-control advicetextarea" placeholder="请写下您的宝贵意见" rows="3"></textarea>
												</div>
											</div>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-danger">发送</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="personnalFoot"> </div>
			</div>
		</div>
		<footer>
			<div class="promise">
				<div class="innerBox ">
					<ul>
						<li>
							<a href="#"><img src="img/icons/user.png" />卖家实名认证</a>
						</li>
						<li>
							<a href="#"><img src="img/icons/epay.png" />支付宝担保交易</a>
						</li>
						<li>
							<a href="#"><img src="img/icons/team.png" />专业团队支持</a>
						</li>
						<li>
							<a href="#"><img src="img/icons/sina.png" />官方微博</a>
						</li>
					</ul>
				</div>
			</div>
			<div class="innerBox footerNavBox">
				<div class="footerNav">
					<ul>

						<li>
							<a href="#">版权所有©</a>
						</li>

					</ul>
				</div>


			</div>
		</footer>

		<script type="text/javascript">
			$(function() {
				$("#waitSend").hide();
				$(".btn-danger").click(function() {
					alert("购买成功");
					$("#waitPay").hide();
					$("#waitSend").show();
				});
			});
		</script>
	</body>

</html>