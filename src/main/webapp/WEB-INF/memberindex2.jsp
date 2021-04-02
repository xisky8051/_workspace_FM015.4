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
<link rel="icon" type="image/png" href="/fm0154/assets/images/favicon.png" />
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
<link rel="stylesheet" href="/fm0154/assets/css/jquery.scrollbar.min.css">
<link rel="stylesheet" href="/fm0154/assets/css/mobile-menu.css">
<link rel="stylesheet" href="/fm0154/assets/fonts/flaticon/flaticon.css">
<link rel="stylesheet" href="/fm0154/assets/css/style.css">

<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=ZCOOL+QingKe+HuangYou&display=swap" rel="stylesheet">

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
					<div class="item_condi h3" ><h3 class="card-title" 
					style="font-family: 'ZCOOL QingKe HuangYou', cursive; font-size:49px">${memberIndexs1.name }</h3></div>

					<div class="card_container" style="display: flex; width: 100%;">
							<div class="card" style="border:none"
								style="width: 18rem; border: 1px solid black; width: 30%; margin: 2rem; padding: 1rem;">
								<a href="#"> <img class="card-img-top" 
									src="<c:url value="/assets/images/16-1.jpg" />"
									alt="Card image cap">
								</a>
								<div class="card-body">

								</div>
							</div>
					</div>

					<div class="moreinfo">
<!-- 						<a href="#" style="padding-left: 90%;">更多資訊...</a> -->
					</div>

				</div>

				<div class="row_a" style="">

					<div class="item_condi h3" style="padding-left: 2rem;">8人已登記您的物品</div>

					<div class="card_container" style="display: flex; width: 100%;">

						<c:forEach items="${ memberIndexs2 }" var="memberIndex" varStatus="status">
							<div class="card"
								style="width: 18rem; border: 1px solid black; width: 30%; margin: 2rem; padding: 1rem;">
								<a href="#"> <img class="card-img-top"
									src="<c:url value="/assets/images/${ memberIndex.imgUrl[0] }" />"
									alt="Card image cap">
								</a>
								<div class="card-body">
									<h3 class="card-title">${ memberIndex.name }</h3>
<%-- 									<p class="item_amount">商品數量：${ memberIndex.amount }</p> --%>
<%-- 									<p class="item_number">商品編號：${ memberIndex.orderId }</p> --%>
									<div style="display: flex; justify-content: space-around;">
										<a href="/fm0154/productdetails/${ memberIndex.id }" class="btn btn-primary">瀏覽頁面</a> <a
											href="#" class="btn btn-success">確認登記</a>
									</div>
								</div>
							</div>
							<c:if test="${ (status.count % 4) == 0 }">
								<br />
							</c:if>
						</c:forEach>




					</div>

					<div class="moreinfo">
<!-- 						<a href="#" style="padding-left: 90%;">更多資訊...</a> -->
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
	<script type="text/javascript">
		window.onload = () => {
			alert(`換易交易已完成\n您的物品：圓滾滾海豹抱枕\n對方的物品：哈利波特限量口罩`);
		};
	</script>
</body>

</html>