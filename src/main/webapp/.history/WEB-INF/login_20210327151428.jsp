<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>待人接物 FM015.4 - 登入</title>
<meta charset="UTF-8">
<meta http-equiv="X-UA-compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="assets/images/favicon.png" />
<link
	href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="assets/css/animate.min.css">
<link rel="stylesheet" href="assets/css/jquery-ui.css">
<link rel="stylesheet" href="assets/css/slick.css">
<link rel="stylesheet" href="assets/css/chosen.min.css">
<link rel="stylesheet" href="assets/css/pe-icon-7-stroke.css">
<link rel="stylesheet" href="assets/css/magnific-popup.min.css">
<link rel="stylesheet" href="assets/css/lightbox.min.css">
<link rel="stylesheet"
	href="assets/js/fancybox/source/jquery.fancybox.css">
<link rel="stylesheet" href="assets/css/jquery.scrollbar.min.css">
<link rel="stylesheet" href="assets/css/mobile-menu.css">
<link rel="stylesheet" href="assets/fonts/flaticon/flaticon.css">
<link rel="stylesheet" href="assets/css/style.css">
<style type="text/css">
	.fastlogin {
		display: inline;
		margin-right: 10px;
		margin-bottom: 5px;
		border: 1px solid #ccc; 
	}
</style>
</head>

<body class="inblog-page">
	<jsp:include page="/WEB-INF/header.jsp" />
	<div class="main-content main-content-login">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb-trail breadcrumbs">
						<ul class="trail-items breadcrumb">
							<li class="trail-item trail-begin"><a href="index.html">首頁</a>
							</li>
							<li class="trail-item trail-end active">驗證</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="content-area col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="site-main">
						<h3 class="custom_blog_title">驗證</h3>
						<div class="customer_login">
							<div class="row">
								<div class="col-lg-6 col-md-6 col-sm-12">
									<div class="login-item">
										<h5 class="title-login">登入</h5>
										<form class="login" action="" method="post">
											<div class="social-account">
												<h6 class="title-social">使用社交帳號登入</h6>
												<a href="#" class="mxh-item facebook"> <i
													class="icon fa fa-facebook-square" aria-hidden="true"></i>
													<span class="text">FACEBOOK</span>
												</a> <a href="#" class="mxh-item twitter"> <i
													class="icon fa fa-twitter" aria-hidden="true"></i> <span
													class="text">TWITTER</span>
												</a>
											</div>
											<p class="form-row form-row-wide">
												<label class="text" style="display: inline; margin-right: 20px;">電子信箱</label> 
												<span id="user1" class="fastlogin">Wendy</span>
												<span id="user2" class="fastlogin">鮭魚</span>
												<span id="user3" class="fastlogin">海綿寶寶</span>
												<span id="user4" class="fastlogin">管理員</span>
												<input title="username" name="email" type="text" class="input-text" style="margin-top: 5px; display: inline-block;"> 
											</p>
											<p class="form-row form-row-wide">
												<label class="text">密碼</label> <input title="password"
													type="password" class="input-text">
											</p>
											<p class="lost_password">
												<span class="inline"> <input type="checkbox" id="cb1">
													<label for="cb1" class="label-text">記住我</label>
												</span> <a href="#" class="forgot-pw">忘記密碼?</a>
											</p>
											<p class="form-row">
												<input type="submit" class="button-submit" value="登入">
											</p>
										</form>
									</div>
								</div>
								<div class="col-lg-6 col-md-6 col-sm-12">
									<div class="login-item">
										<h5 class="title-login">註冊</h5>
										<form class="register">
											<p class="form-row form-row-wide">
												<label class="text">電子信箱</label> <input id="userInputEmail" title="email"
													type="email" class="input-text">
											</p>
											<p class="form-row form-row-wide">
												<label class="text">帳號</label> <input title="name"
													type="text" class="input-text">
											</p>
											<p class="form-row form-row-wide">
												<label class="text">密碼</label> <input id="userInputPassword" title="pass"
													type="password" class="input-text">
											</p>
											<p class="form-row">
												<span class="inline"> <input type="checkbox" id="cb2">
													<label for="cb2" class="label-text">我同意 <span>遵守本網站的服務條款</span></label>
												</span>
											</p>
											<p class="">
												<input type="submit" class="button-submit" value="註冊">
											</p>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/footer.jsp" />
	<script src="assets/js/jquery-1.12.4.min.js"></script>
	<script src="assets/js/jquery.plugin-countdown.min.js"></script>
	<script src="assets/js/jquery-countdown.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/owl.carousel.min.js"></script>
	<script src="assets/js/magnific-popup.min.js"></script>
	<script src="assets/js/isotope.min.js"></script>
	<script src="assets/js/jquery.scrollbar.min.js"></script>
	<script src="assets/js/jquery-ui.min.js"></script>
	<script src="assets/js/mobile-menu.js"></script>
	<script src="assets/js/chosen.min.js"></script>
	<script src="assets/js/slick.js"></script>
	<script src="assets/js/jquery.elevateZoom.min.js"></script>
	<script src="assets/js/jquery.actual.min.js"></script>
	<script src="assets/js/fancybox/source/jquery.fancybox.js"></script>
	<script src="assets/js/lightbox.min.js"></script>
	<script src="assets/js/owl.thumbs.min.js"></script>
	<script src="assets/js/jquery.scrollbar.min.js"></script>
	<script src="assets/js/frontend-plugin.js"></script>
	<script src="assets/js/w3.js"></script>
	<script>
		includeHTML();
	</script>
	<script>
		window.onload = () => {
			function user_click(user) {
				let email = document.getElementById(`userInputEmail`);
				let password = document.getElementById(`userInputPassword`);
				switch(user){
					case 1:
						email.value = "wendy.yang@gmail.com";
						password.value = "Do!ng123";
						break;
					case 2:
						email.value = "wendy.yang@gmail.com";
						password.value = "Do!ng123";
						break;
					case 3:
						email.value = "wendy.yang@gmail.com";
						password.value = "Do!ng123";
						break;
					case 4:
						email.value = "wendy.yang@gmail.com";
						password.value = "Do!ng123";
						break;
				}
			}
		};
	</script>
</body>

</html>
