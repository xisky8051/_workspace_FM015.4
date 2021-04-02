<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>待人接物 FM015.4 - 最新消息與公告</title>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="assets/images/favicon.png" />
	<link href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">
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
	<div class="main-content main-content-blog list right-sidebar">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb-trail breadcrumbs">
						<ul class="trail-items breadcrumb">
							<li class="trail-item trail-begin">
								<a href="index.html">首頁</a>
							</li>
							<li class="trail-item trail-end active">
								最新消息與公告
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="content-area content-blog col-lg-9 col-md-8 col-sm-12 col-xs-12">
					<div class="site-main">
						<h3 class="custom_blog_title">
							最新消息與公告
						</h3>
						<div class="blog-list list-style">
							<div class="blog-item">
								<div class="post-format">
									<a href="#">
										<img src="<c:url value="/assets/images/${ theNews.imgUrl }" />" alt="img">
										<br> 
										<%-- <img src="<c:url value="/assets/images/${fn:replace(theNews.imgUrl, '.jpg', '-2.jpg')}" />" alt="img"> --%>
									</a>

									

								</div>
								<div class="post-info">
									<div class="category-blog">
										<a href="#">${ theNews.title }</a>
									</div>
									<h3 class="post-title">
										<a href="#">${ theNews.subtitle }<span>[...]</span></a>
									</h3>
									<div class="main-info-post">
										<p class="des">
											${ theNews.content }
										</p>
									</div>
									<div class="author-view">
										<div class="author">
											<div class="avt">
												<img src="assets/images/avt-blog1.png" alt="img">
											</div>
											<h3 class="name">
												${ theNews.author }
											</h3>
										</div>
									</div>
								</div>
							</div>
	
						</div>						
					</div>
				</div>
				<div class="sidebar sidebar-blog col-lg-3 col-md-4 col-sm-12 col-xs-12">
					<div class="wrapper-sidebar">
						<div class="widget widget-socials">
							<h3 class="widgettitle">
								Follow us
							</h3>
							<div class="content-socials">
								<div class="social-list">
									<a href="#" target="_blank" class="social-item">
										<i class="fa fa-facebook-square" aria-hidden="true"></i>
									</a>
									<a href="#" target="_blank" class="social-item">
										<i class="fa fa-twitter" aria-hidden="true"></i>
									</a>
									<a href="#" target="_blank" class="social-item">
										<i class="fa fa-instagram" aria-hidden="true"></i>
									</a>
								</div>
							</div>
						</div>
						<div class="widget widget-categories">
							<h3 class="widgettitle">分類</h3>
							<ul class="list-categories">
								<li>
									<input type="checkbox" id="cb1">
									<label for="cb1" class="label-text">
										環保新聞
									</label>
								</li>
								<li>
									<input type="checkbox" id="cb2">
									<label for="cb2" class="label-text">
										環保資訊
									</label>
								</li>
								<li>
									<input type="checkbox" id="cb3">
									<label for="cb3" class="label-text">
										網站公告
									</label>
								</li>
							</ul>
						</div>
						<div class="widget widget-post">
							<h3 class="widgettitle">熱門文章</h3>
							<ul class="posts">
								<li class="widget-post-item">
									<div class="thumb-blog">
										<img src="assets/images/sidebar-post4.jpg" alt="img">
									</div>
									<div class="post-content">
										<div class="cat">
											<a href="#">廢棄物管理</a>
										</div>
										<h5 class="post-title"><a href="#">環保署公告「一次用塑膠吸管限制使用對象及實施方式」 <span>[...]</span></a></h5>
									</div>
								</li>
								<li class="widget-post-item">
									<div class="thumb-blog">
										<img src="assets/images/sidebar-post2.jpg" alt="img">
									</div>
									<div class="post-content">
										<div class="cat">
											<a href="#">大氣空氣</a>
										</div>
										<h5 class="post-title"><a href="#">訂定固定污染源有害空氣污染物專法 <span>[...]</span></a></h5>
									</div>
								</li>
								<li class="widget-post-item">
									<div class="thumb-blog">
										<img src="assets/images/sidebar-post3.jpg" alt="img">
									</div>
									<div class="post-content">
										<div class="cat">
											<a href="#">土壤及地下水</a>
										</div>
										<h5 class="post-title"><a href="#">地下水污染場址改善有成 <span>[...]</span></a></h5>
									</div>
								</li>

							</ul>
						</div>
						<div class="widget widget-tags">
							<h3 class="widgettitle">
								熱門標籤
							</h3>
							<ul class="tagcloud">
								<li class="tag-cloud-link">
									<a href="#">環保</a>
								</li>
								<li class="tag-cloud-link">
									<a href="#">污染</a>
								</li>
								<li class="tag-cloud-link">
									<a href="#">空污</a>
								</li>
								<li class="tag-cloud-link active">
									<a href="#">地下水</a>
								</li>
								<li class="tag-cloud-link">
									<a href="#">PM2.5</a>
								</li>
								<li class="tag-cloud-link">
									<a href="#">回收</a>
								</li>
								<li class="tag-cloud-link">
									<a href="#">循環</a>
								</li>
							</ul>
						</div>
						<div class="widget newsletter-widget">
							<div class="newsletter-form-wrap ">
								<h3 class="title">訂閱我們的電子報</h3>
								<div class="subtitle">
									等待下一個人，接手我的寶物
								</div>
								<input type="email" class="email" placeholder="輸入電子信箱">
								<button type="submit" class="button submit-newsletter">送出</button>
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