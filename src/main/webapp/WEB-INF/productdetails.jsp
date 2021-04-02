<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>待人接物 FM015.4 - 物品詳情</title>
<meta charset="UTF-8">
<meta http-equiv="X-UA-compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png"
	href="/fm0154/assets/images/favicon.png" />
<link
	href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="/fm0154/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="/fm0154/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="/fm0154/assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="/fm0154/assets/css/animate.min.css">
<link rel="stylesheet" href="/fm0154/assets/css/jquery-ui.css">
<link rel="stylesheet" href="/fm0154/assets/css/slick.css">
<link rel="stylesheet" href="/fm0154/assets/css/chosen.min.css">
<link rel="stylesheet" href="/fm0154/assets/css/pe-icon-7-stroke.css">
<link rel="stylesheet" href="/fm0154/assets/css/magnific-popup.min.css">
<link rel="stylesheet" href="/fm0154/assets/css/lightbox.min.css">
<link rel="stylesheet"
	href="/fm0154/assets/js/fancybox/source/jquery.fancybox.css">
<link rel="stylesheet"
	href="/fm0154/assets/css/jquery.scrollbar.min.css">
<link rel="stylesheet" href="/fm0154/assets/css/mobile-menu.css">
<link rel="stylesheet" href="/fm0154/assets/fonts/flaticon/flaticon.css">
<link rel="stylesheet" href="/fm0154/assets/css/style.css">

<link href='https://fonts.googleapis.com/css?family=Bungee Outline'
	rel='stylesheet' />
<link href='https://fonts.googleapis.com/css?family=Varela Round'
	rel='stylesheet' />
<!-- Use font awesome icons. -->
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<!-- Use firebase app and database. -->
<script src="https://www.gstatic.com/firebasejs/8.2.7/firebase-app.js"></script>
<script
	src="https://www.gstatic.com/firebasejs/8.2.7/firebase-database.js"></script>

<!-- The CSS and JS file must be declared after the things above-->

<!-- <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> -->
<script>
	var username = `${ userName }`; //哪個會員
	var databaseOnline = `${ItemDetails.name}/`; //第幾的文章
	var count = 0;
	var productName = `${ItemDetails.name}`;
</script>
<link rel="stylesheet" href="<c:url value="/assets/css/index.css" />" />
<script type="text/javascript"
	src="<c:url value="/assets/js/index.js" />"></script>

</head>

<body class="details-page">
	<jsp:include page="/WEB-INF/header3.jsp" />
	<div class="main-content main-content-details single right-sidebar">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb-trail breadcrumbs">
						<ul class="trail-items breadcrumb">
							<li class="trail-item trail-begin"><a href="index.html">首頁</a>
							</li>
							<li class="trail-item"><a href="#">物品詳情</a></li>
							<li class="trail-item trail-end active">${ItemDetails.name}</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row">
				<div
					class="content-area content-details col-lg-9 col-md-8 col-sm-12 col-xs-12">
					<div class="site-main">
						<div class="details-product">
							<div class="details-thumd">
								<div
									class="image-preview-container image-thick-box image_preview_container">
									<img id="img_zoom"
										data-zoom-image="<c:url value="/assets/images/${ ItemDetails.imgUrl[0] }" />"
										src="<c:url value="/assets/images/${ ItemDetails.imgUrl[0] }" />"
										alt="img"> <a href="#" class="btn-zoom open_qv"><i
										class="fa fa-search" aria-hidden="true"></i></a>
								</div>
								<div class="product-preview image-small product_preview">
									<div id="thumbnails" class="thumbnails_carousel owl-carousel"
										data-nav="true" data-autoplay="false" data-dots="false"
										data-loop="false" data-margin="10"
										data-responsive='{"0":{"items":3},"480":{"items":3},"600":{"items":3},"1000":{"items":3}}'>
										<!-- 										======================!!!! -->
										<c:forEach items="${ItemDetails.imgUrl}" var="ItemDetails"
											varStatus="status">
											<a href="#"
												data-image="<c:url value="/assets/images/${ ItemDetails }" />"
												data-zoom-image="<c:url value="/assets/images/${ ItemDetails }" />">
												<img src="<c:url value="/assets/images/${ ItemDetails }" />"
												data-large-image="<c:url value="/assets/images/${ ItemDetails }" />"
												alt="img">
											</a>
										</c:forEach>
										<!-- 										======================!!!! -->
										
<!-- 										<a href="#" data-image="/fm0154/assets/images/16-1.jpg" -->
<!-- 											data-zoom-image="/fm0154/assets/images/16-1.jpg"> <img -->
<!-- 											src="/fm0154/assets/images/16-1.jpg" -->
<!-- 											data-large-image="/fm0154/assets/images/16-1.jpg" alt="img"> -->
<!-- 										</a> <a href="#" data-image="/fm0154/assets/images/16-2.jpg" -->
<!-- 											data-zoom-image="/fm0154/assets/images/16-2.jpg"> <img -->
<!-- 											src="/fm0154/assets/images/16-2.jpg" -->
<!-- 											data-large-image="/fm0154/assets/images/16-2.jpg" alt="img"> -->
<!-- 										</a> <a href="#" data-image="/fm0154/assets/images/16-3.jpg" -->
<!-- 											data-zoom-image="/fm0154/assets/images/16-3.jpg"> <img -->
<!-- 											src="/fm0154/assets/images/16-3.jpg" -->
<!-- 											data-large-image="/fm0154/assets/images/16-3.jpg" alt="img"> -->
<!-- 										</a> -->
									</div>
								</div>
							</div>
							<div class="details-infor">
								<h1 class="product-title">${ItemDetails.name}</h1>
								<div class="availability">
									新舊程度: <a href="#">二手物品</a>
								</div>
								<div class="product-details-description">
									<ul>
										<li>胖嘟嘟的可愛海豹抱枕</li>
										<li>尺寸：60 (cm)</li>
										<li>材質：短毛絨 + PP棉填充</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="tab-details-product">
							<ul class="tab-link">
								<li class="active"><a data-toggle="tab"
									aria-expanded="true" href="#product-descriptions">詳細敘述</a></li>
								<li class=""><a data-toggle="tab" aria-expanded="true"
									href="#information">規則資訊</a></li>
								<li class=""><a data-toggle="tab" aria-expanded="true"
									href="#reviews">索取留言</a></li>
							</ul>
							<div class="tab-container">
								<div id="product-descriptions" class="tab-panel active">
									<p>
										胖嘟嘟的可愛海豹抱枕<br />圓滾滾的模樣還露出可愛微笑<br />療癒的外型完全被迷倒阿😍
									</p>
								</div>
								<div id="information" class="tab-panel">
									<table class="table table-bordered">
										<tr>
											<td>尺寸</td>
											<td>60 (cm)</td>
										</tr>
										<tr>
											<td>材質</td>
											<td>短毛絨 + PP棉填充</td>
										</tr>
									</table>
								</div>

								<div id="reviews" class="tab-panel">
									<div class="reviews-tab">
										<div class="comments">
											<h2 class="reviews-title" id="test1" style="font-weight:bold; font-size:20px">
												0 則留言索取 <span>${ItemDetails.name}</span>
											</h2>
											<!-- 											<ol class="commentlist"> -->
											<!-- 												<li class="conment"> -->
											<!-- 													<div class="conment-container"> -->
											<!-- 														<a href="#" class="avatar"> <img -->
											<!-- 															src="/fm0154/assets/images/avartar.png" alt="img"> -->
											<!-- 														</a> -->
											<!-- 														<div class="comment-text"> -->
											<!-- 															<p class="meta"> -->
											<!-- 																<strong class="author">JOKER</strong> <span>-</span> <span -->
											<!-- 																	class="time">三月 7, 2021</span> -->
											<!-- 															</p> -->
											<!-- 															<div class="description"> -->
											<!-- 																<p>想要跟你索取送給老媽，謝謝</p> -->
											<!-- 															</div> -->
											<!-- 														</div> -->
											<!-- 													</div> -->
											<!-- 												</li> -->
											<!-- 											</ol> -->
										</div>
										<div id="chatStart"></div>
										<!-- =================!!!! -->
										<div class="select">
											<select id="input_Select">
												<option selected disabled>請選擇你要登記的物品</option>
												<c:forEach items="${ItemDetails1}" var="news"
													varStatus="status">
													<option>${news.name}</option>
												</c:forEach>
											</select>
										</div>
										<!-- =================!!!! -->
									</div>
								</div>
							</div>
						</div>
						<div style="clear: left;"></div>
						<div class="related products product-grid">
							<h2 class="product-grid-title">相似物品</h2>
							<div class="owl-products owl-slick equal-container nav-center"
								data-slick='{"autoplay":false, "autoplaySpeed":1000, "arrows":true, "dots":false, "infinite":true, "speed":800, "rows":1}'
								data-responsive='[{"breakpoint":"2000","settings":{"slidesToShow":3}},{"breakpoint":"1200","settings":{"slidesToShow":2}},{"breakpoint":"992","settings":{"slidesToShow":2}},{"breakpoint":"480","settings":{"slidesToShow":1}}]'>
								<div class="product-item style-1">
									<div class="product-inner equal-element">
										<div class="product-top">
											<div class="flash">
												<span class="onnew"> <span class="text"> 新上架 </span>
												</span>
											</div>
										</div>
										<div class="product-thumb">
											<div class="thumb-inner">
												<a href="#"> <img
													src="/fm0154/assets/images/gift-01.jpg" alt="img">
												</a>
												<div class="thumb-group">
													<div class="yith-wcwl-add-to-wishlist">
														<div class="yith-wcwl-add-button">
															<a href="#">收藏</a>
														</div>
													</div>
													<a href="#" class="button quick-wiew-button">快速瀏覽</a>
												</div>
											</div>
										</div>
										<div class="product-info">
											<h5 class="product-name product_title">
												<a href="#">扭蛋 角落生物</a>
											</h5>
											<div class="group-info">
												<div class="price">
													<ins> 全新/ </ins>
													<ins> 2人關注 </ins>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="product-item style-1">
									<div class="product-inner equal-element">
										<div class="product-top">
											<div class="flash">
												<span class="onnew"> <span class="text"> 新上架 </span>
												</span>
											</div>
										</div>
										<div class="product-thumb">
											<div class="thumb-inner">
												<a href="#"> <img
													src="/fm0154/assets/images/gift-02.jpg" alt="img">
												</a>
												<div class="thumb-group">
													<div class="yith-wcwl-add-to-wishlist">
														<div class="yith-wcwl-add-button">
															<a href="#">收藏</a>
														</div>
													</div>
													<a href="#" class="button quick-wiew-button">快速瀏覽</a>
												</div>
											</div>
										</div>
										<div class="product-info">
											<h5 class="product-name product_title">
												<a href="#">扭蛋 遮眼海象</a>
											</h5>
											<div class="group-info">
												<div class="price">
													<ins> 全新/ </ins>
													<ins> 0人關注 </ins>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="product-item style-1">
									<div class="product-inner equal-element">
										<div class="product-top">
											<div class="flash">
												<span class="onnew"> <span class="text"> 新上架 </span>
												</span>
											</div>
										</div>
										<div class="product-thumb">
											<div class="thumb-inner">
												<a href="#"> <img
													src="/fm0154/assets/images/gift-03.jpg" alt="img">
												</a>
												<div class="thumb-group">
													<div class="yith-wcwl-add-to-wishlist">
														<div class="yith-wcwl-add-button">
															<a href="#">收藏</a>
														</div>
													</div>
													<a href="#" class="button quick-wiew-button">快速瀏覽</a>
												</div>
											</div>
										</div>
										<div class="product-info">
											<h5 class="product-name product_title">
												<a href="#">扭蛋 遮眼水獺</a>
											</h5>
											<div class="group-info">
												<div class="price">
													<ins> 全新/ </ins>
													<ins> 1人關注 </ins>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="product-item style-1">
									<div class="product-inner equal-element">
										<div class="product-top">
											<div class="flash">
												<span class="onnew"> <span class="text"> HOT </span>
												</span>
											</div>
										</div>
										<div class="product-thumb">
											<div class="thumb-inner">
												<a href="#"> <img
													src="/fm0154/assets/images/gift-05.jpg" alt="img">
												</a>
												<div class="thumb-group">
													<div class="yith-wcwl-add-to-wishlist">
														<div class="yith-wcwl-add-button">
															<a href="#">收藏</a>
														</div>
													</div>
													<a href="#" class="button quick-wiew-button">快速瀏覽</a>
												</div>
											</div>
										</div>
										<div class="product-info">
											<h5 class="product-name product_title">
												<a href="#">belif滿額禮 木質鏡子</a>
											</h5>
											<div class="group-info">
												<div class="price">
													<ins> 全新/ </ins>
													<ins> 1人關注 </ins>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div
					class="sidebar sidebar-details col-lg-3 col-md-4 col-sm-12 col-xs-12">
					<div class="wrapper-sidebar">
						<div class="widget widget-categories">
							<h3 class="widgettitle">分類</h3>
							<ul class="list-categories">
								<li><input type="checkbox" id="cb1"> <label
									for="cb1" class="label-text"> 新品上架 </label></li>
								<li><input type="checkbox" id="cb3"> <label
									for="cb3" class="label-text"> 二手物品 </label></li>
								<li><input type="checkbox" id="cb6"> <label
									for="cb6" class="label-text"> 玩具 </label></li>
							</ul>
						</div>
						<div class="widget widget-related-products">
							<h3 class="widgettitle">其他物品</h3>
							<div
								class="slider-related-products owl-slick nav-top-right equal-container"
								data-slick='{"autoplay":false, "autoplaySpeed":1000, "arrows":true, "dots":false, "infinite":true, "speed":800, "rows":1}'
								data-responsive='[{"breakpoint":"2000","settings":{"slidesToShow":1 }},{"breakpoint":"992","settings":{"slidesToShow":2}}]'>
								<div class="product-item style-1">
									<div class="product-inner equal-element">
										<div class="product-top">
											<div class="flash">
												<span class="onnew"> <span class="text"> 新上架 </span>
												</span>
											</div>
										</div>
										<div class="product-thumb">
											<div class="thumb-inner">
												<a href="#"> <img src="/fm0154/assets/images/exc-02.jpg"
													alt="img">
												</a>
												<div class="thumb-group">
													<div class="yith-wcwl-add-to-wishlist">
														<div class="yith-wcwl-add-button">
															<a href="#">收藏</a>
														</div>
													</div>
													<a href="#" class="button quick-wiew-button">快速瀏覽</a>
												</div>
											</div>
										</div>
										<div class="product-info">
											<h5 class="product-name product_title">
												<a href="#">淺藍色背面蕾絲牛仔外套</a>
											</h5>
											<div class="group-info">
												<div class="price">
													<ins> 二手/ </ins>
													<ins> 2人關注 </ins>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="product-item style-1">
									<div class="product-inner equal-element">
										<div class="product-top">
											<div class="flash">
												<span class="onnew"> <span class="text"> 新上架 </span>
												</span>
											</div>
										</div>
										<div class="product-thumb">
											<div class="thumb-inner">
												<a href="#"> <img src="/fm0154/assets/images/exc-03.jpg"
													alt="img">
												</a>
												<div class="thumb-group">
													<div class="yith-wcwl-add-to-wishlist">
														<div class="yith-wcwl-add-button">
															<a href="#">收藏</a>
														</div>
													</div>
													<a href="#" class="button quick-wiew-button">快速瀏覽</a>
												</div>
											</div>
										</div>
										<div class="product-info">
											<h5 class="product-name product_title">
												<a href="#">米白色皮革後背包</a>
											</h5>
											<div class="group-info">
												<div class="price">
													<ins> 二手/ </ins>
													<ins> 1人關注 </ins>
												</div>
											</div>
										</div>
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
	<script src="/fm0154/assets/js/jquery-1.12.4.min.js"></script>
	<script src="/fm0154/assets/js/jquery.plugin-countdown.min.js"></script>
	<script src="/fm0154/assets/js/jquery-countdown.min.js"></script>
	<script src="/fm0154/assets/js/bootstrap.min.js"></script>
	<script src="/fm0154/assets/js/owl.carousel.min.js"></script>
	<script src="/fm0154/assets/js/magnific-popup.min.js"></script>
	<script src="/fm0154/assets/js/isotope.min.js"></script>
	<script src="/fm0154/assets/js/jquery.scrollbar.min.js"></script>
	<script src="/fm0154/assets/js/jquery-ui.min.js"></script>
	<script src="/fm0154/assets/js/mobile-menu.js"></script>
	<script src="/fm0154/assets/js/chosen.min.js"></script>
	<script src="/fm0154/assets/js/slick.js"></script>
	<script src="/fm0154/assets/js/jquery.elevateZoom.min.js"></script>
	<script src="/fm0154/assets/js/jquery.actual.min.js"></script>
	<script src="/fm0154/assets/js/fancybox/source/jquery.fancybox.js"></script>
	<script src="/fm0154/assets/js/lightbox.min.js"></script>
	<script src="/fm0154/assets/js/owl.thumbs.min.js"></script>
	<script src="/fm0154/assets/js/jquery.scrollbar.min.js"></script>
	<script src="/fm0154/assets/js/frontend-plugin.js"></script>
	<script src="/fm0154/assets/js/w3.js"></script>
	<script>
		includeHTML();
	</script>



</body>

</html>