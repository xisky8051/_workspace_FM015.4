<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
<title>待人接物 FM015.4 - 聯絡我們</title>
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

</head>

<body class="inblog-page">
	<jsp:include page="/WEB-INF/header3.jsp" />

	<!--可編輯個人首頁========================================-->
	<div class="container">

		<div class="personal_announcement" style="width: 100%;">
			<h2>海綿寶寶 的個人首頁</h2>
			<p>
				我是喜好環保綠產品的上班族，獲贈者用全家寄出者請3日完成轉帳<br> 超過3日未轉帳者，將取消索取並列入拒絕往來戶
				獲贈請不吝留感謝言並列入下次贈物的考量，謝謝！
			</p>
		</div>


		<div class="row_a" style="display: flex;">
			<div class="side_select_menu" style="width: 20%; padding-left: 3rem;">
				<form class="form-inline my-2 my-lg-0">
					<!-- 					<input class="form-control mr-sm-6 side_search_box" type="search" -->
					<!-- 						placeholder="Search" aria-label="Search"> -->
					<!-- <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button> -->
				</form>


			</div>


			<!--maincontent==========================================-->
			<div class="item_section">

				<!--換物中================================================-->
				<div class="row_a" style="">
					<div class="item_condi h3" style="padding-left: 2rem;">自己的物品</div>

					<div class="card_container" style="display: flex; width: 100%;">
						<c:forEach items="${ memberIndexs }" var="memberIndex"
							varStatus="status">
							<div class="card"
								style="width: 18rem; border: 1px solid black; width: 30%; margin: 2rem; padding: 1rem;">
								<a href="#"> <img class="card-img-top"
									src="<c:url value="/assets/images/${ memberIndex.imgUrl }" />"
									alt="Card image cap">
								</a>
								<div class="card-body">
									<h3 class="card-title">${ memberIndex.name }</h3>
									<p class="item_amount">商品數量：${ memberIndex.amount }</p>
									<p class="item_number">商品編號：${ memberIndex.orderId }</p>
									<div style="display: flex; justify-content: space-around;">
										<c:if test="${memberIndex.id == 1}">
											<a href="<c:url value='memberindex1/${memberIndex.id}' />"
												class="btn btn-primary">5人登記</a>
											<a href="#" class="btn btn-success">編輯物品</a>
										</c:if>
										<c:if test="${memberIndex.id == 2}">
											<a href="<c:url value='memberindex1/${memberIndex.id}' />"
												class="btn btn-primary">7人登記</a>
											<a href="#" class="btn btn-success">編輯物品</a>
										</c:if>
										<c:if test="${memberIndex.id == 3}">
											<a href="<c:url value='memberindex1/${memberIndex.id}' />"
												class="btn btn-primary">10人登記</a>
											<a href="#" class="btn btn-success">編輯物品</a>
										</c:if>


									</div>
								</div>
							</div>
						</c:forEach>

					</div>

					<div class="moreinfo">
<!-- 						<a href="#" style="padding-left: 90%;">更多資訊...</a> -->
					</div>

				</div>

				<div class="row_a" style="">

					<div class="item_condi h3" style="padding-left: 2rem;">登記的物品</div>

					<div class="card_container" style="display: flex; width: 100%;">

						<c:forEach items="${ memberIndexs2 }" var="memberIndex"
							varStatus="status">
							<div class="card"
								style="width: 18rem; border: 1px solid black; width: 30%; margin: 2rem; padding: 1rem;">
								<a href="#"> <img class="card-img-top"
									src="<c:url value="/assets/images/${ memberIndex.imgUrl }" />"
									alt="Card image cap">
								</a>
								<div class="card-body">
									<h3 class="card-title">${ memberIndex.name }</h3>
									<p class="item_amount">商品數量：${ memberIndex.amount }</p>
									<p class="item_number">商品編號：${ memberIndex.orderId }</p>
									<div style="display: flex; justify-content: space-around;">
										<a href="/fm0154/productdetails/${ memberIndex.id }" class="btn btn-primary">瀏覽頁面</a> <a
											href="#" class="btn btn-success">取消登記</a>
									</div>
								</div>
							</div>
						</c:forEach>




					</div>

					<div class="moreinfo">
						<a href="#" style="padding-left: 90%;">更多資訊...</a>
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