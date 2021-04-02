<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	<link rel="stylesheet" href="assets/js/fancybox/source/jquery.fancybox.css">
	<link rel="stylesheet" href="assets/css/jquery.scrollbar.min.css">
	<link rel="stylesheet" href="assets/css/mobile-menu.css">
	<link rel="stylesheet" href="assets/fonts/flaticon/flaticon.css">
	<link rel="stylesheet" href="assets/css/style.css">
</head>

<body class="inblog-page">
	<jsp:include page="/WEB-INF/header3.jsp" />
	<div class="main-content main-content-login">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb-trail breadcrumbs">
						<ul class="trail-items breadcrumb">
							<li class="trail-item trail-begin">
								<a href="index.html">首頁</a>
							</li>
							<li class="trail-item trail-end active">
								驗證
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="content-area col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="site-main">
						<h3 class="custom_blog_title">
							驗證
						</h3>
						<div class="customer_login">
							<div class="row">
								<div class="col-lg-6 col-md-6 col-sm-12">
									<div class="login-item">
										<h5 class="title-login">
											註冊
											<a id="autoInput" style="display: inline-block; margin-left: 15px; color: #888;font-size: 16px; border: 1px solid #888;">自動輸入</a>
										</h5>
										<form id="registerForm" class="register" method="post" action="<c:url value="/registered"/>">
											<p class="form-row form-row-wide">
												<label class="text">暱稱</label> <input title="name"
													name="name" type="text" class="input-text">
											</p>
											<p class="form-row form-row-wide">
												<label class="text">電子信箱</label> <input title="email"
													name="email" type="email" class="input-text">
											</p>
											<p class="form-row form-row-wide">
												<label class="text">手機號碼</label> <input title="name"
													name="phone" type="text" class="input-text">
											</p>
											<p class="form-row form-row-wide">
												<label class="text">密碼</label> <input title="pass"
													name="password" type="password" class="input-text">
											</p>
											<p class="form-row form-row-wide">
												<label class="text">確認密碼</label> <input title="pass"
												name="password2" type="password" class="input-text">
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
		
		window.addEventListener(`load`,()=>{

			document.getElementById(`autoInput`).addEventListener(`click`,() => {
				autoFieldValue(`name`, `Zoe`);
				autoFieldValue(`email`, `p.8051.0308@gmail.com`);
				autoFieldValue(`phone`, `0921337521`);
				autoFieldValue(`password`, `Do!ng123`);
				autoFieldValue(`password2`, `Do!ng123`);
				document.getElementById(`cb2`).setAttribute(`checked`,`checked`);
			});

			const autoFieldValue = (fieldName, value) => {
				document.getElementsByName(fieldName)[0].value = value;
			};

		});

	</script>
</body>

</html>