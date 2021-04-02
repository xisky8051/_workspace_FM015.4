<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>待人接物 FM015.4 - 首頁</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" sizes="32x32" href="assets/images/favicon.png" />
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

<body class="home">
    <jsp:include page="/WEB-INF/header3.jsp" />
    <div>
        <div class="fullwidth-template">
            <div class="home-slider-banner">
                <div class="container">
                    <div class="row10">
                        <div class="col-lg-8 silider-wrapp">
                            <div class="home-slider">
                                <div class="slider-owl owl-slick equal-container nav-center"
                                    data-slick='{"autoplay":true, "autoplaySpeed":9000, "arrows":false, "dots":true, "infinite":true, "speed":1000, "rows":1}'
                                    data-responsive='[{"breakpoint":"2000","settings":{"slidesToShow":1}}]'>
                                    <c:forEach items="${ news }" var="news" varStatus="status">
										<div class="slider-item style${ ((status.count % 3) == 0 ? 3 : (status.count % 3))  + 6 }">
										<div class="slider-inner equal-element" style="background-image: url(<c:url value="/assets/images/${ news.imgUrl}" />)"> 
												<div class="slider-infor">
													<h5 class="title-small">${ news.subtitle }</h5>
													<h3 class="title-big">${ news.title }</h3>
													<a href="<c:url value="/theNews?id=${ news.id }" />#" class="button btn-shop-product">查看詳情</a>
												</div>
											</div>
										</div>
									</c:forEach>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 banner-wrapp">
                            <div class="banner">
                                <div class="item-banner style7">
                                    <div class="inner">
                                        <div class="banner-content">
                                            <h3 class="title">新聞<br>001</h3>
                                            <div class="description">
                                                新聞事件<br>新聞事件
                                            </div>
                                            <a href="#" class="button btn-lets-do-it">察看詳情</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="banner">
                                <div class="item-banner style8">
                                    <div class="inner">
                                        <div class="banner-content">
                                            <h3 class="title">公告<br>001</h3>
                                            <div class="description">
                                                公告事件
                                            </div>
                                            <a href="#" class="button btn-lets-do-it">察看詳情</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="product produc-featured rows-space-65">
                <div class="container">
                    <h3 class="custommenu-title-blog">
                        最新上架
                    </h3>
                    <div class="owl-products owl-slick equal-container nav-center"
                        data-slick='{"autoplay":false, "autoplaySpeed":1000, "arrows":false, "dots":true, "infinite":false, "speed":800, "rows":1}'
                        data-responsive='[{"breakpoint":"2000","settings":{"slidesToShow":4}},{"breakpoint":"1200","settings":{"slidesToShow":3}},{"breakpoint":"992","settings":{"slidesToShow":2}},{"breakpoint":"480","settings":{"slidesToShow":1}}]'>
                        <div class="product-item style-5">
                            <div class="product-inner equal-element">
                                <div class="product-top">
                                    <div class="flash">
                                        <span class="onnew">
                                            <span class="text">
                                                HOT
                                            </span>
                                        </span>
                                    </div>
                                </div>
                                <div class="product-thumb">
                                    <div class="thumb-inner">
                                        <a href="#">
                                            <img src="assets/images/product-1.jpg" alt="img">
                                        </a>
                                        <div class="thumb-group">
                                            <div class="yith-wcwl-add-to-wishlist">
                                                <div class="yith-wcwl-add-button">
                                                    <a href="#">收藏</a>
                                                </div>
                                            </div>
                                            <a href="#" class="button quick-wiew-button">快速瀏覽</a>
                                            <div class="loop-form-add-to-cart">
                                                <button class="single_add_to_cart_button button">放入購物車</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-count-down">
                                        <div class="countdown" data-y="2020" data-m="10" data-w="4" data-d="10"
                                            data-h="20" data-i="20" data-s="60"></div>
                                    </div>
                                </div>
                                <div class="product-info">
                                    <h5 class="product-name product_title">
                                        <a href="#">手工原木木筷-台灣檜木 免費刻字</a>
                                    </h5>
                                    <div class="group-info">
                                        <div class="stars-rating">
                                            <div class="star-rating">
                                                <span class="star-3"></span>
                                            </div>
                                            <div class="count-star">
                                                (3)
                                            </div>
                                        </div>
                                        <div class="price">
                                            <del>
                                                $399
                                            </del>
                                            <ins>
                                                $298
                                            </ins>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="product-item style-5">
                            <div class="product-inner equal-element">
                                <div class="product-top">
                                    <div class="flash">
                                        <span class="onnew">
                                            <span class="text">
                                                HOT
                                            </span>
                                        </span>
                                    </div>
                                </div>
                                <div class="product-thumb">
                                    <div class="thumb-inner">
                                        <a href="#">
                                            <img src="assets/images/product-2.jpg" alt="img">
                                        </a>
                                        <div class="thumb-group">
                                            <div class="yith-wcwl-add-to-wishlist">
                                                <div class="yith-wcwl-add-button">
                                                    <a href="#">收藏</a>
                                                </div>
                                            </div>
                                            <a href="#" class="button quick-wiew-button">快速瀏覽</a>
                                            <div class="loop-form-add-to-cart">
                                                <button class="single_add_to_cart_button button">放入購物車</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-count-down">
                                        <div class="countdown" data-y="2020" data-m="9" data-w="2" data-d="30"
                                            data-h="20" data-i="60" data-s="60"></div>
                                    </div>
                                </div>
                                <div class="product-info">
                                    <h5 class="product-name product_title">
                                        <a href="#">夫妻筷/夫婦箸</a>
                                    </h5>
                                    <div class="group-info">
                                        <div class="stars-rating">
                                            <div class="star-rating">
                                                <span class="star-3"></span>
                                            </div>
                                            <div class="count-star">
                                                (3)
                                            </div>
                                        </div>
                                        <div class="price">
                                            <del>
                                                $1299
                                            </del>
                                            <ins>
                                                $990
                                            </ins>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="product-item style-5">
                            <div class="product-inner equal-element">
                                <div class="product-top">
                                    <div class="flash">
                                        <span class="onnew">
                                            <span class="text">
                                                9折
                                            </span>
                                        </span>
                                    </div>
                                </div>
                                <div class="product-thumb">
                                    <div class="thumb-inner">
                                        <a href="#">
                                            <img src="assets/images/product-3.jpg" alt="img">
                                        </a>
                                        <div class="thumb-group">
                                            <div class="yith-wcwl-add-to-wishlist">
                                                <div class="yith-wcwl-add-button">
                                                    <a href="#">收藏</a>
                                                </div>
                                            </div>
                                            <a href="#" class="button quick-wiew-button">快速瀏覽</a>
                                            <div class="loop-form-add-to-cart">
                                                <button class="single_add_to_cart_button button">放入購物車</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-count-down">
                                        <div class="countdown" data-y="2020" data-m="12" data-w="1" data-d="24"
                                            data-h="20" data-i="50" data-s="60"></div>
                                    </div>
                                </div>
                                <div class="product-info">
                                    <h5 class="product-name product_title">
                                        <a href="#">環保自帶杯</a>
                                    </h5>
                                    <div class="group-info">
                                        <div class="stars-rating">
                                            <div class="star-rating">
                                                <span class="star-3"></span>
                                            </div>
                                            <div class="count-star">
                                                (3)
                                            </div>
                                        </div>
                                        <div class="price">
                                            <del>
                                                $780
                                            </del>
                                            <ins>
                                                $702
                                            </ins>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="product-item style-5">
                            <div class="product-inner equal-element">
                                <div class="product-top">
                                    <div class="flash">
                                        <span class="onnew">
                                            <span class="text">
                                                95折
                                            </span>
                                        </span>
                                    </div>
                                </div>
                                <div class="product-thumb">
                                    <div class="thumb-inner">
                                        <a href="#">
                                            <img src="assets/images/product-4.jpg" alt="img">
                                        </a>
                                        <div class="thumb-group">
                                            <div class="yith-wcwl-add-to-wishlist">
                                                <div class="yith-wcwl-add-button">
                                                    <a href="#">收藏</a>
                                                </div>
                                            </div>
                                            <a href="#" class="button quick-wiew-button">快速瀏覽</a>
                                            <div class="loop-form-add-to-cart">
                                                <button class="single_add_to_cart_button button">放入購物車</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-count-down">
                                        <div class="countdown" data-y="2020" data-m="7" data-w="3" data-d="20"
                                            data-h="10" data-i="10" data-s="20"></div>
                                    </div>
                                </div>
                                <div class="product-info">
                                    <h5 class="product-name product_title">
                                        <a href="#">白熊刺繡米白飲料杯袋 杯套</a>
                                    </h5>
                                    <div class="group-info">
                                        <div class="stars-rating">
                                            <div class="star-rating">
                                                <span class="star-3"></span>
                                            </div>
                                            <div class="count-star">
                                                (3)
                                            </div>
                                        </div>
                                        <div class="price">
                                            <del>
                                                $220
                                            </del>
                                            <ins>
                                                $209
                                            </ins>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="product-item style-5">
                            <div class="product-inner equal-element">
                                <div class="product-top">
                                    <div class="flash">
                                        <span class="onnew">
                                            <span class="text">
                                                85折
                                            </span>
                                        </span>
                                    </div>
                                </div>
                                <div class="product-thumb">
                                    <div class="thumb-inner">
                                        <a href="#">
                                            <img src="assets/images/product-5.jpg" alt="img">
                                        </a>
                                        <div class="thumb-group">
                                            <div class="yith-wcwl-add-to-wishlist">
                                                <div class="yith-wcwl-add-button">
                                                    <a href="#">收藏</a>
                                                </div>
                                            </div>
                                            <a href="#" class="button quick-wiew-button">快速瀏覽</a>
                                            <div class="loop-form-add-to-cart">
                                                <button class="single_add_to_cart_button button">放入購物車</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-count-down">
                                        <div class="countdown" data-y="2020" data-m="9" data-w="2" data-d="30"
                                            data-h="20" data-i="60" data-s="60"></div>
                                    </div>
                                </div>
                                <div class="product-info">
                                    <h5 class="product-name product_title">
                                        <a href="#">手工皂任選三塊 搭配瀝水皂盤</a>
                                    </h5>
                                    <div class="group-info">
                                        <div class="stars-rating">
                                            <div class="star-rating">
                                                <span class="star-3"></span>
                                            </div>
                                            <div class="count-star">
                                                (3)
                                            </div>
                                        </div>
                                        <div class="price">
                                            <del>
                                                $1,010
                                            </del>
                                            <ins>
                                                $859
                                            </ins>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="product-item style-5">
                            <div class="product-inner equal-element">
                                <div class="product-top">
                                    <div class="flash">
                                        <span class="onnew">
                                            <span class="text">
                                                HOT
                                            </span>
                                        </span>
                                    </div>
                                </div>
                                <div class="product-thumb">
                                    <div class="thumb-inner">
                                        <a href="#">
                                            <img src="assets/images/product-6.jpg" alt="img">
                                        </a>
                                        <div class="thumb-group">
                                            <div class="yith-wcwl-add-to-wishlist">
                                                <div class="yith-wcwl-add-button">
                                                    <a href="#">收藏</a>
                                                </div>
                                            </div>
                                            <a href="#" class="button quick-wiew-button">快速瀏覽</a>
                                            <div class="loop-form-add-to-cart">
                                                <button class="single_add_to_cart_button button">放入購物車</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-count-down">
                                        <div class="countdown" data-y="2020" data-m="9" data-w="2" data-d="30"
                                            data-h="20" data-i="60" data-s="60"></div>
                                    </div>
                                </div>
                                <div class="product-info">
                                    <h5 class="product-name product_title">
                                        <a href="#">自行車</a>
                                    </h5>
                                    <div class="group-info">
                                        <div class="stars-rating">
                                            <div class="star-rating">
                                                <span class="star-3"></span>
                                            </div>
                                            <div class="count-star">
                                                (3)
                                            </div>
                                        </div>
                                        <div class="price">
                                            <del>
                                                $1800
                                            </del>
                                            <ins>
                                                $1200
                                            </ins>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tabs  default rows-space-40">
                <div class="container">
                    <div class="tab-head">
                        <ul class="tab-link">
                            <li class="active">
                                <a data-toggle="tab" aria-expanded="true" href="#bestseller">贈物</a>
                            </li>
                            <li class="">
                                <a data-toggle="tab" aria-expanded="true" href="#new_arrivals">換物</a>
                            </li>
                            <li class="">
                                <a data-toggle="tab" aria-expanded="true" href="#top-rated">求物</a>
                            </li>
                        </ul>
                    </div>
                    <div class="tab-container">
                        <div id="bestseller" class="tab-panel active">
                            <div class="product">
                                <ul class="row list-products auto-clear equal-container product-grid">
                                    <li class="product-item  col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
                                        <div class="product-inner equal-element">
                                            <div class="product-top">
                                                <div class="flash">
                                                    <span class="onnew">
                                                        <span class="text">
                                                            新上架
                                                        </span>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="product-thumb">
                                                <div class="thumb-inner">
                                                    <a href="#">
                                                        <img src="assets/images/gift-01.jpg" alt="img">
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
                                                        <ins>
                                                            全新/
                                                        </ins>
                                                        <ins>
                                                            2人關注
                                                        </ins>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li
                                        class="product-item product-type-variable col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
                                        <div class="product-inner equal-element">
                                            <div class="product-top">
                                                <div class="flash">
                                                    <span class="onnew">
                                                        <span class="text">
                                                            新上架
                                                        </span>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="product-thumb">
                                                <div class="thumb-inner">
                                                    <a href="#">
                                                        <img src="assets/images/gift-02.jpg" alt="img">
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
                                                        <ins>
                                                            全新/
                                                        </ins>
                                                        <ins>
                                                            0人關注
                                                        </ins>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li
                                        class="product-item product-type-variable col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
                                        <div class="product-inner equal-element">
                                            <div class="product-top">
                                                <div class="flash">
                                                    <span class="onnew">
                                                        <span class="text">
                                                            新上架
                                                        </span>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="product-thumb">
                                                <div class="thumb-inner">
                                                    <a href="#">
                                                        <img src="assets/images/gift-03.jpg" alt="img">
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
                                                        <ins>
                                                            全新/
                                                        </ins>
                                                        <ins>
                                                            1人關注
                                                        </ins>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li
                                        class="product-item product-type-variable col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
                                        <div class="product-inner equal-element">
                                            <div class="product-top">
                                                <div class="flash">
                                                    <span class="onnew">
                                                        <span class="text">
                                                            已送出
                                                        </span>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="product-thumb">
                                                <div class="thumb-inner">
                                                    <a href="#">
                                                        <img src="assets/images/gift-04.jpg" alt="img">
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
                                                    <a href="#">棉麻上衣</a>
                                                </h5>
                                                <div class="group-info">
                                                    <div class="price">
                                                        <ins>
                                                            二手/
                                                        </ins>
                                                        <ins>
                                                            1人關注
                                                        </ins>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="product-item  col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
                                        <div class="product-inner equal-element">
                                            <div class="product-top">
                                                <div class="flash">
                                                    <span class="onnew">
                                                        <span class="text">
                                                            新上架
                                                        </span>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="product-thumb">
                                                <div class="thumb-inner">
                                                    <a href="#">
                                                        <img src="assets/images/gift-05.jpg" alt="img">
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
                                                        <ins>
                                                            全新/
                                                        </ins>
                                                        <ins>
                                                            1人關注
                                                        </ins>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li
                                        class="product-item product-type-variable col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
                                        <div class="product-inner equal-element">
                                            <div class="product-top">
                                                <div class="flash">
                                                    <span class="onnew">
                                                        <span class="text">
                                                            新上架
                                                        </span>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="product-thumb">
                                                <div class="thumb-inner">
                                                    <a href="#">
                                                        <img src="assets/images/gift-06.jpg" alt="img">
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
                                                    <a href="#">咖啡色平光眼鏡</a>
                                                </h5>
                                                <div class="group-info">
                                                    <div class="price">
                                                        <ins>
                                                            全新/
                                                        </ins>
                                                        <ins>
                                                            0人關注
                                                        </ins>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li
                                        class="product-item product-type-variable col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
                                        <div class="product-inner equal-element">
                                            <div class="product-top">
                                                <div class="flash">
                                                    <span class="onnew">
                                                        <span class="text">
                                                            新上架
                                                        </span>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="product-thumb">
                                                <div class="thumb-inner">
                                                    <a href="#">
                                                        <img src="assets/images/gift-07.jpg" alt="img">
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
                                                    <a href="#">零錢袋</a>
                                                </h5>
                                                <div class="group-info">
                                                    <div class="price">
                                                        <ins>
                                                            全新/
                                                        </ins>
                                                        <ins>
                                                            0人關注
                                                        </ins>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="product-item  col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
                                        <div class="product-inner equal-element">
                                            <div class="product-top">
                                                <div class="flash">
                                                    <span class="onnew">
                                                        <span class="text">
                                                            新上架
                                                        </span>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="product-thumb">
                                                <div class="thumb-inner">
                                                    <a href="#">
                                                        <img src="assets/images/gift-08.jpg" alt="img">
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
                                                    <a href="#">黃色條紋針織長袖上衣 F碼</a>
                                                </h5>
                                                <div class="group-info">
                                                    <div class="price">
                                                        <ins>
                                                            全新/
                                                        </ins>
                                                        <ins>
                                                            1人關注
                                                        </ins>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div id="new_arrivals" class="tab-panel">
                            <div class="product">
                                <ul class="row list-products auto-clear equal-container product-grid">
                                    <li class="product-item  col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
                                        <div class="product-inner equal-element">
                                            <div class="product-top">
                                                <div class="flash">
                                                    <span class="onnew">
                                                        <span class="text">
                                                            新上架
                                                        </span>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="product-thumb">
                                                <div class="thumb-inner">
                                                    <a href="#">
                                                        <img src="assets/images/exc-01.jpg" alt="img">
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
                                                    <a href="#">黑色筆袋</a>
                                                </h5>
                                                <div class="group-info">
                                                    <div class="price">
                                                        <ins>
                                                            二手/
                                                        </ins>
                                                        <ins>
                                                            1人關注
                                                        </ins>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li
                                        class="product-item product-type-variable col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
                                        <div class="product-inner equal-element">
                                            <div class="product-top">
                                                <div class="flash">
                                                    <span class="onnew">
                                                        <span class="text">
                                                            新上架
                                                        </span>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="product-thumb">
                                                <div class="thumb-inner">
                                                    <a href="#">
                                                        <img src="assets/images/exc-02.jpg" alt="img">
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
                                                        <ins>
                                                            二手/
                                                        </ins>
                                                        <ins>
                                                            2人關注
                                                        </ins>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li
                                        class="product-item product-type-variable col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
                                        <div class="product-inner equal-element">
                                            <div class="product-top">
                                                <div class="flash">
                                                    <span class="onnew">
                                                        <span class="text">
                                                            新上架
                                                        </span>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="product-thumb">
                                                <div class="thumb-inner">
                                                    <a href="#">
                                                        <img src="assets/images/exc-03.jpg" alt="img">
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
                                                        <ins>
                                                            二手/
                                                        </ins>
                                                        <ins>
                                                            1人關注
                                                        </ins>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li
                                        class="product-item product-type-variable col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
                                        <div class="product-inner equal-element">
                                            <div class="product-top">
                                                <div class="flash">
                                                    <span class="onnew">
                                                        <span class="text">
                                                            已交換
                                                        </span>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="product-thumb">
                                                <div class="thumb-inner">
                                                    <a href="#">
                                                        <img src="assets/images/exc-04.jpg" alt="img">
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
                                                    <a href="#">博物館主題大富翁桌遊</a>
                                                </h5>
                                                <div class="group-info">
                                                    <div class="price">
                                                        <ins>
                                                            二手/
                                                        </ins>
                                                        <ins>
                                                            7人關注
                                                        </ins>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="product-item  col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
                                        <div class="product-inner equal-element">
                                            <div class="product-top">
                                                <div class="flash">
                                                    <span class="onnew">
                                                        <span class="text">
                                                            新上架
                                                        </span>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="product-thumb">
                                                <div class="thumb-inner">
                                                    <a href="#">
                                                        <img src="assets/images/exc-05.jpg" alt="img">
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
                                                    <a href="#">化妝包 收納袋</a>
                                                </h5>
                                                <div class="group-info">
                                                    <div class="price">
                                                        <ins>
                                                            全新/
                                                        </ins>
                                                        <ins>
                                                            4人關注
                                                        </ins>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li
                                        class="product-item product-type-variable col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
                                        <div class="product-inner equal-element">
                                            <div class="product-top">
                                                <div class="flash">
                                                    <span class="onnew">
                                                        <span class="text">
                                                            新上架
                                                        </span>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="product-thumb">
                                                <div class="thumb-inner">
                                                    <a href="#">
                                                        <img src="assets/images/exc-06.jpg" alt="img">
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
                                                    <a href="#">限量版樂天小熊無尾熊娃娃 吊飾收藏玩偶</a>
                                                </h5>
                                                <div class="group-info">
                                                    <div class="price">
                                                        <ins>
                                                            全新/
                                                        </ins>
                                                        <ins>
                                                            3人關注
                                                        </ins>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li
                                        class="product-item product-type-variable col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
                                        <div class="product-inner equal-element">
                                            <div class="product-top">
                                                <div class="flash">
                                                    <span class="onnew">
                                                        <span class="text">
                                                            已交換
                                                        </span>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="product-thumb">
                                                <div class="thumb-inner">
                                                    <a href="#">
                                                        <img src="assets/images/exc-07.jpg" alt="img">
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
                                                    <a href="#">編織包</a>
                                                </h5>
                                                <div class="group-info">
                                                    <div class="price">
                                                        <ins>
                                                            二手/
                                                        </ins>
                                                        <ins>
                                                            1人關注
                                                        </ins>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="product-item  col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
                                        <div class="product-inner equal-element">
                                            <div class="product-top">
                                                <div class="flash">
                                                    <span class="onnew">
                                                        <span class="text">
                                                            新上架
                                                        </span>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="product-thumb">
                                                <div class="thumb-inner">
                                                    <a href="#">
                                                        <img src="assets/images/exc-08.jpg" alt="img">
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
                                                    <a href="#">輕便型陽傘</a>
                                                </h5>
                                                <div class="group-info">
                                                    <div class="price">
                                                        <ins>
                                                            全新/
                                                        </ins>
                                                        <ins>
                                                            1人關注
                                                        </ins>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div id="top-rated" class="tab-panel">
                            <div class="product">
                                <ul class="row list-products auto-clear equal-container product-grid">
                                    <li class="product-item  col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
                                        <div class="product-inner equal-element">
                                            <div class="product-top">
                                                <div class="flash">
                                                    <span class="onnew">
                                                        <span class="text">
                                                            長期
                                                        </span>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="product-thumb">
                                                <div class="thumb-inner">
                                                    <a href="#">
                                                        <img src="assets/images/wish-01.jpg" alt="img">
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
                                                    <a href="#">徵求民生用品-幫助弱勢家庭</a>
                                                </h5>
                                                <div class="group-info">
                                                    <div class="price">
                                                        <ins>
                                                            長期/
                                                        </ins>
                                                        <ins>
                                                            3人援手
                                                        </ins>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li
                                        class="product-item product-type-variable col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
                                        <div class="product-inner equal-element">
                                            <div class="product-top">
                                                <div class="flash">
                                                    <span class="onnew">
                                                        <span class="text">
                                                            長期
                                                        </span>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="product-thumb">
                                                <div class="thumb-inner">
                                                    <a href="#">
                                                        <img src="assets/images/wish-02.jpg" alt="img">
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
                                                    <a href="#">偏鄉學校調味品大募集</a>
                                                </h5>
                                                <div class="group-info">
                                                    <div class="price">
                                                        <ins>
                                                            長期/
                                                        </ins>
                                                        <ins>
                                                            9人援手
                                                        </ins>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li
                                        class="product-item product-type-variable col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
                                        <div class="product-inner equal-element">
                                            <div class="product-top">
                                                <div class="flash">
                                                    <span class="onnew">
                                                        <span class="text">
                                                            達成
                                                        </span>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="product-thumb">
                                                <div class="thumb-inner">
                                                    <a href="#">
                                                        <img src="assets/images/wish-03.jpg" alt="img">
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
                                                    <a href="#">松山區兒少社區關懷據點-無線網卡及網路線</a>
                                                </h5>
                                                <div class="group-info">
                                                    <div class="price">
                                                        <ins>
                                                            需求4/
                                                        </ins>
                                                        <ins>
                                                            4人援手
                                                        </ins>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li
                                        class="product-item product-type-variable col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
                                        <div class="product-inner equal-element">
                                            <div class="product-top">
                                                <div class="flash">
                                                    <span class="onnew">
                                                        <span class="text">
                                                            中壢
                                                        </span>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="product-thumb">
                                                <div class="thumb-inner">
                                                    <a href="#">
                                                        <img src="assets/images/wish-04.jpg" alt="img">
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
                                                    <a href="#">【"袋"受飢兒過好年】愛心食品徵求</a>
                                                </h5>
                                                <div class="group-info">
                                                    <div class="price">
                                                        <ins>
                                                            需求320/
                                                        </ins>
                                                        <ins>
                                                            277人援手
                                                        </ins>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="product-item  col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
                                        <div class="product-inner equal-element">
                                            <div class="product-top">
                                                <div class="flash">
                                                    <span class="onnew">
                                                        <span class="text">
                                                            萬華
                                                        </span>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="product-thumb">
                                                <div class="thumb-inner">
                                                    <a href="#">
                                                        <img src="assets/images/wish-05.jpg" alt="img">
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
                                                    <a href="#">中正萬華區身心障礙者資源中心-奶粉(不限品牌)</a>
                                                </h5>
                                                <div class="group-info">
                                                    <div class="price">
                                                        <ins>
                                                            需求30/
                                                        </ins>
                                                        <ins>
                                                            17人援手
                                                        </ins>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li
                                        class="product-item product-type-variable col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
                                        <div class="product-inner equal-element">
                                            <div class="product-top">
                                                <div class="flash">
                                                    <span class="onnew">
                                                        <span class="text">
                                                            新莊
                                                        </span>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="product-thumb">
                                                <div class="thumb-inner">
                                                    <a href="#">
                                                        <img src="assets/images/wish-06.jpg" alt="img">
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
                                                    <a href="#">新莊區兒少社區關懷據點-求贈木吉他袋</a>
                                                </h5>
                                                <div class="group-info">
                                                    <div class="price">
                                                        <ins>
                                                            需求5/
                                                        </ins>
                                                        <ins>
                                                            2人援手
                                                        </ins>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li
                                        class="product-item product-type-variable col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
                                        <div class="product-inner equal-element">
                                            <div class="product-top">
                                                <div class="flash">
                                                    <span class="onnew">
                                                        <span class="text">
                                                            清水
                                                        </span>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="product-thumb">
                                                <div class="thumb-inner">
                                                    <a href="#">
                                                        <img src="assets/images/wish-07.jpg" alt="img">
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
                                                    <a href="#">身心障礙烘焙坊物資募集</a>
                                                </h5>
                                                <div class="group-info">
                                                    <div class="price">
                                                        <ins>
                                                            需求135/
                                                        </ins>
                                                        <ins>
                                                            32人援手
                                                        </ins>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="product-item  col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
                                        <div class="product-inner equal-element">
                                            <div class="product-top">
                                                <div class="flash">
                                                    <span class="onnew">
                                                        <span class="text">
                                                            長期
                                                        </span>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="product-thumb">
                                                <div class="thumb-inner">
                                                    <a href="#">
                                                        <img src="assets/images/wish-08.jpg" alt="img">
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
                                                    <a href="#">社團法人臺東縣弱勢者關懷協會-食材</a>
                                                </h5>
                                                <div class="group-info">
                                                    <div class="price">
                                                        <ins>
                                                            長期/
                                                        </ins>
                                                        <ins>
                                                            331人援手
                                                        </ins>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="blog-wraap default">
                <div class="container">
                    <h3 class="custommenu-title-blog">
                        最新消息
                    </h3>
                    <div class="blog default">
                        <div class="owl-slick equal-container nav-center"
                            data-slick='{"autoplay":false, "autoplaySpeed":1000, "arrows":false, "dots":true, "infinite":true, "speed":800, "rows":1}'
                            data-responsive='[{"breakpoint":"2000","settings":{"slidesToShow":3}},{"breakpoint":"1200","settings":{"slidesToShow":3}},{"breakpoint":"992","settings":{"slidesToShow":2}},{"breakpoint":"768","settings":{"slidesToShow":2}},{"breakpoint":"481","settings":{"slidesToShow":1}}]'>
                            <div class="blog-item equal-element layout1">
                                <div class="post-thumb">
                                    <a href="<c:url value="/theNews?id=1" />">
                                        <img src="assets/images/slider-blog-thumb-1.jpg" alt="img">
                                    </a>
                                </div>
                                <div class="blog-info">
                                    <div class="blog-meta">
                                        <div class="post-date">
                                            三月 10, 09:14 上午
                                        </div>
                                    </div>
                                    <h2 class="blog-title">
                                        <a href="<c:url value="/theNews?id=1" />">紙餐具應回收 回收處理量足夠</a>
                                    </h2>
                                    <div class="main-info-post">
                                        <p class="des">
                                            行政院環境保護署為源頭減量，持續推動少用一次性產品，並加強紙餐具回收分類，執行成效顯著提升，相關說明如下
                                        </p>
                                        <a class="readmore" href="<c:url value="/theNews?id=1" />">察看詳情</a>
                                    </div>
                                </div>
                            </div>
                            <div class="blog-item equal-element layout1">
                                <div class="post-thumb">
                                    <a href="<c:url value="/theNews?id=3" />">
                                        <img src="assets/images/slider-blog-thumb-2.jpg" alt="img">
                                    </a>
                                </div>
                                <div class="blog-info">
                                    <div class="blog-meta">
                                        <div class="post-date">
                                            三月 10, 09:14 上午
                                        </div>
                                    </div>
                                    <h2 class="blog-title">
                                        <a href="<c:url value="/theNews?id=2" />">訂定固定污染源有害空氣污染物專法，降低環境健康危害</a>
                                    </h2>
                                    <div class="main-info-post">
                                        <p class="des">
                                            環保署於110年2月26日訂定發布「固定污染源有害空氣污染物排放標準」（以下簡稱有害標準），優先納管22項物種
                                        </p>	
                                        <a class="readmore" href="<c:url value="/theNews?id=2" />">察看詳情</a>
                                    </div>
                                </div>
                            </div>
                            <div class="blog-item equal-element layout1">
                                <div class="post-thumb">
                                    <div class="video-blog">
                                        <figure>
                                            <img src="assets/images/slider-blog-thumb-3.jpg" alt="img" width="370"
                                                height="280">
                                        </figure>
                                    </div>
                                </div>
                                <div class="blog-info">
                                    <div class="blog-meta">
                                        <div class="post-date">
                                            三月 10, 09:14 上午
                                        </div>
                                    </div>
                                    <h2 class="blog-title">
                                        <a href="<c:url value="/theNews?id=3" />">地下水污染場址改善有成 環保署解除110年度首例含氯工廠整治場址列管</a>
                                    </h2>
                                    <div class="main-info-post">
                                        <p class="des">
                                            生達化學製藥股份有限公司二廠地下水污染整治場址改善有成，地下水污染物「氯乙烯」、「1,2-二氯乙烷」、「二氯甲烷」及「甲苯」
                                        </p>
                                        <a class="readmore" href="<c:url value="/theNews?id=3" />">察看詳情</a>
                                    </div>
                                </div>
                            </div>
                            <div class="blog-item equal-element layout1">
                                <div class="post-thumb">
                                    <a href="<c:url value="/theNews?id=3" />">
                                        <img src="assets/images/slider-blog-thumb-4.jpg" alt="img">
                                    </a>
                                </div>
                                <div class="blog-info">
                                    <div class="blog-meta">
                                        <div class="post-date">
                                            三月 10, 09:14 上午
                                        </div>
                                    </div>
                                    <h2 class="blog-title">
                                        <a href="<c:url value="/theNews?id=3" />">福牛提燈鴻運照 電池回收多管道</a>
                                    </h2>
                                    <div class="main-info-post">
                                        <p class="des">
                                            初一早、初二早…十五元宵暝，從初一到十五都算是農曆春節連續節慶，賞花燈、鬧元宵是另一個高潮，不少機關團體及企業順應元宵觀光節的來臨
                                        </p>
                                        <a class="readmore" href="<c:url value="/theNews?id=3" />">察看詳情</a>
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
    	let key = ${ sessionScope.register };
    	switch(key) {
			case 1:
				alert(`註冊資料無誤，請至信箱檢查驗證信並點擊驗證連結，以完成註冊`);
				break;
			case 3:
				alert(`註冊已完成`);
				break;
		}   	
    </script>
</body>
</body>

</html>