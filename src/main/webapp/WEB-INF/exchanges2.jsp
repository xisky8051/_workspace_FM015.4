<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<!DOCTYPE html>
		<html lang="en">

		<head>
			<title>待人接物 FM015.4 - 贈物</title>
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

		<body class="productsgrid-page">
			<jsp:include page="/WEB-INF/header3.jsp" />
			<div class="main-content main-content-product no-sidebar">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<div class="breadcrumb-trail breadcrumbs">
								<ul class="trail-items breadcrumb">
									<li class="trail-item trail-begin"><a href="index.html">首頁</a>
									</li>
									<li class="trail-item trail-end active">換物</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="content-area shop-grid-content full-width col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="site-main">
								<h3 class="custom_blog_title">換物</h3>
								<div class="shop-top-control">
									<form class="filter-choice select-form">
										<span class="title">排序依</span> <select title="sort-by" data-placeholder="依照最新上架"
											class="chosen-select">
											<option value="1">依照最新上架</option>
											<option value="2">依照熱門程度</option>
											<option value="3">全新物品</option>
											<option value="4">二手物品</option>
										</select>
									</form>
									<div class="grid-view-mode">
										<div class="inner">
											<a href="#" class="modes-mode mode-list"> <span></span> <span></span>
											</a> <a href="#" class="modes-mode mode-grid  active"> <span></span>
												<span></span> <span></span> <span></span>
											</a>
										</div>
									</div>
								</div>
								<ul class="row list-products auto-clear equal-container product-grid">
<!-- 									============================================================= -->
									<jsp:useBean id="random" class="java.util.Random" scope="application" />
									<c:forEach items="${Item}" var="i" varStatus="status">
										<c:if test="${keyword == '二手'}">
											<li
												class="product-item  col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
												<div class="product-inner equal-element">
													<div class="product-top">
														<div class="flash">
															<span class="onnew"> <span class="text"> 新上架 </span>
															</span>
														</div>
													</div>
													<div class="product-thumb">
														<div class="thumb-inner">
															<a href="<c:url value="/productdetails/${ i.id }"/>"> <img src="<c:url value="/assets/images/${ i.imgUrl[0] }"/>"
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
															<a href="<c:url value="/productdetails/${ i.id }"/>">${i.name}</a>
														</h5>
														<div class="group-info">
															<div class="price">
																<ins> 二手/ </ins>
																<ins> ${ i.id == 16  ? 7 : random.nextInt(2)}人關注 </ins>
															</div>
														</div>
													</div>
												</div>
											</li>
											</c:if>
									</c:forEach>
									<c:forEach items="${Item2}" var="i" varStatus="status">
										<c:if test="${keyword != '二手'}">
											<li
												class="product-item  col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
												<div class="product-inner equal-element">
													<div class="product-top">
														<div class="flash">
															<span class="onnew"> <span class="text"> 新上架 </span>
															</span>
														</div>
													</div>
													<div class="product-thumb">
														<div class="thumb-inner">
															<a href="<c:url value="/productdetails/${ i.id }"/>"> <img src="<c:url value="/assets/images/${ i.imgUrl[0] }"/>"
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
															<a href="<c:url value="/productdetails/${ i.id }"/>">${i.name}</a>
														</h5>
														<div class="group-info">
															<div class="price">
																<ins> 二手/ </ins>
																<ins> ${ i.id == 16  ? 7 : random.nextInt(2)}人關注 </ins>
															</div>
														</div>
													</div>
												</div>
											</li>
											</c:if>
									</c:forEach>
								</ul>
								<div class="pagination clearfix style2">
									<div class="nav-link">
										<a href="#" class="page-numbers"><i class="icon fa fa-angle-left"
												aria-hidden="true"></i></a> <a href="#" class="page-numbers current">1</a> <a
											href="#" class="page-numbers">2</a> <a href="#"
											class="page-numbers">3</a> <a href="#" class="page-numbers"><i
												class="icon fa fa-angle-right" aria-hidden="true"></i></a>
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
		</body>

		</html>