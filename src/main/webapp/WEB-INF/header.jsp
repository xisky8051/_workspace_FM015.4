<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
</head>
<body>
	<header class="header style7">
		<div class="top-bar">
			<div class="container">
				<div class="top-bar-left">
					<div class="header-message" onclick="autoInputKeyword();">等待下一個人，接手我的寶物</div>
				</div>
				<div class="top-bar-right">
					<ul class="header-user-links">
						<li>
							<c:choose>
								<c:when test="${ not userStatus }">
									<a class="btn btn-light" href="<c:url value="/login" />">登入</a>
								</c:when>
								<c:otherwise>
									Hello, <span style="color: #FAD689; font-size: 24px">${ userName }</span>  (${userEmail})<a class="btn btn-light" href="<c:url value="/logout" />">登出</a>
								</c:otherwise>
							</c:choose> 
							<a class="btn btn-light" href="<c:url value="/register" />">註冊</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="main-header">
				<div class="row">
					<div
						class="col-lg-3 col-sm-4 col-md-3 col-xs-7 col-ts-12 header-element">
						<div class="logo">
							<a href="index.html"> <img src="<c:url value="/assets/images/logo.png" />"
								alt="img">
							</a>
						</div>
					</div>
					<div class="col-lg-7 col-sm-8 col-md-6 col-xs-5 col-ts-12">
						<div class="block-search-block">
							<form class="form-search form-search-width-category" action="<c:url value="/exchanges"/>" method="get">
								<div class="form-content">
									<div class="category">
										<select title="cate" data-placeholder="All Categories"
											class="chosen-select" tabindex="2">
											<option value="exchange">換物</option>
											<option value="gift">贈物</option>
											<option value="wish">求物</option>
											<option value="buy">購物</option>
										</select>
									</div>
									<div class="inner">
										<input id="message" type="text" class="input" name="s" value="${ keyword }"
											placeholder="輸入搜尋">
									</div>
									<button id="submit" class="btn-search" type="submit">
										<span class="icon-search"></span>
									</button>
								</div>
							</form>
						</div>
					</div>
					<div class="col-lg-2 col-sm-12 col-md-3 col-xs-12 col-ts-12">
						<div class="header-control">
							<div class="block-minicart mini-cart block-header dropdown">
								<a href="javascript:void(0);" class="shopcart-icon"
									data-cleric="dropdown"> Cart <span class="count"> 0
								</span>
								</a>
								<div class="no-product submenu">
									<p class="text">
										你有 <span> 0 件商品 </span> 在你的購物車中
									</p>
								</div>
							</div>
							<div class="block-account block-header dropdown">
								<a href="<c:url value="/memberindex" />" data-cleric="dropdown"> <span
									class="flaticon-user"></span>
								</a>
								<div class="header-account submenu">
									<div class="header-user-form-tabs">
										<ul class="tab-link">
											<li class="active"><a data-toggle="tab"
												aria-expanded="true" href="#header-tab-login">登入</a></li>
											<li><a data-toggle="tab" aria-expanded="true"
												href="#header-tab-rigister">註冊</a></li>
										</ul>
										<div class="tab-container">
											<div id="header-tab-login" class="tab-panel active">
												<form method="post" class="login form-login">
													<p class="form-row form-row-wide">
														<input type="email" class="input-text" placeholder="電子信箱">
													</p>
													<p class="form-row form-row-wide">
														<input type="password" class="input-text" placeholder="密碼">
													</p>
													<p class="form-row">
														<label class="form-checkbox"> <input
															type="checkbox" class="input-checkbox"> <span>
																記住我 </span>
														</label> <input type="submit" class="button" value="登入">
													</p>
													<p class="lost_password">
														<a href="#">忘記密碼?</a>
													</p>
												</form>
											</div>
											<div id="header-tab-rigister" class="tab-panel">
												<form method="post" class="register form-register">
													<p class="form-row form-row-wide">
														<input type="email" placeholder="Email" class="input-text">
													</p>
													<p class="form-row form-row-wide">
														<input id="message" type="search" class="input" name="search"
											value="" placeholder="輸入搜尋">
													</p>
													<button id="submit" disabled class="btn-search" type="submit" style="background-color:#7366665e">
										<span class="icon-search"></span>
									</button>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
							<a class="menu-bar mobile-navigation menu-toggle" href="#"> <span></span>
								<span></span> <span></span>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="header-nav-container">
			<div class="container">
				<div class="header-nav-wapper main-menu-wapper">
					<div class="vertical-wapper block-nav-categori">
						<div class="block-title">
							<span class="icon-bar"> <span></span> <span></span> <span></span>
							</span> <span class="text">FM015.4</span>
						</div>
						<div class="block-content verticalmenu-content">
							<ul class="nav-vertical vertical-menu clone-mobile-menu">
								<li class="menu-item"><a title="News" href="#"
									class="menu-item-title">最新消息與公告</a></li>
								<li class="menu-item"><a title="gifts" href="gifts.html"
									class="menu-item-title">贈物</a></li>
								<li class="menu-item"><a title="exchanges"
									href="exchanges.html" class="menu-item-title">換物</a></li>
								<li class="menu-item"><a title="wishes" href="wishes.html"
									class="menu-item-title">求物</a></li>
								<li class="menu-item"><a title="buy" href="buy.html"
									class="menu-item-title">購物</a></li>
							</ul>
						</div>
					</div>
					<div class="header-nav">
						<div class="container-wapper">
							<ul class="clone-mobile-menu nav main-menu " id="menu-main-menu">
								<li class="menu-item"><a href="index.html"
									class="menu-item-title" title="Home">首頁</a></li>
								<li class="menu-item menu-item-has-children"><a href="#"
									class="menu-item-title" title="Shop">我的寶物</a> <span
									class="toggle-submenu"></span>
									<ul class="submenu">
										<li class="menu-item"><a href="gifts.html">贈物</a></li>
										<li class="menu-item"><a href="exchanges.html">換物</a></li>
										<li class="menu-item"><a href="wishes.html">求物</a></li>
										<li class="menu-item"><a href="buy.html">購物</a></li>
									</ul></li>
								<li class="menu-item"><a href="news.html" class="menu-item-title" title="News">最新消息與公告</a></li>
								<li class="menu-item"><a href="<c:url value="/about" />" class="menu-item-title" title="About">關於我們</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<div class="header-device-mobile">
		<div class="wapper">
			<div class="item mobile-logo">
				<div class="logo">
					<a href="#"> <img src="assets/images/logo.png" alt="img">
					</a>
				</div>
			</div>
			<div class="item item mobile-search-box has-sub">
				<a href="#"> <span class="icon"> <i class="fa fa-search"
						aria-hidden="true"></i>
				</span>
				</a>
				<div class="block-sub">
					<a href="#" class="close"> <i class="fa fa-times"
						aria-hidden="true"></i>
					</a>
					<div class="header-searchform-box">
						<form class="header-searchform">
							<div class="searchform-wrap">
								<input type="text" class="search-input" placeholder="輸入搜尋">
								<input type="submit" class="submit button" value="搜尋">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		function toggleButton() {
			if (messageInputElement.value) {
				submitButtonElement.removeAttribute('disabled');
				submitButtonElement.removeAttribute('style');
			} else {
				// submitButtonElement.setAttribute('disabled', 'true');
				submitButtonElement.setAttribute('style', 'background-color:#7366665e');
				alert("搜尋欄裡不能為空");
			}
		}

		var messageInputElement = document.getElementById('message');
		var submitButtonElement = document.getElementById('submit');

		messageInputElement.addEventListener('keyup', toggleButton);
		messageInputElement.addEventListener('change', toggleButton);
		
		function autoInputKeyword() {
			document.getElementById("message").value = "二手";
			toggleButton();
		}
		
	</script>

</body>
</html>