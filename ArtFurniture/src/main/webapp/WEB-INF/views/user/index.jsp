
<!-- sử dụng tiếng việt, tàu,... -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!-- TagLibs -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Artfurniture - Premium eCommerce Template</title>

<jsp:include page="/WEB-INF/views/user/layout/variables.jsp"></jsp:include>

<!-- variable -->
<link href="/user/layout/variables.jsp">

<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="user/assets/img/favicon.png">

<!-- all css here -->
<jsp:include page="/WEB-INF/views/user/layout/css.jsp"></jsp:include>
</head>
<body>
	<!--[if lte IE 9]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. 
            Please <a href="https://browsehappy.com/">upgrade your browser</a> 
            to improve your experience and security.</p>
        <![endif]-->

	<!-- Header Area Start -->
	<jsp:include page="/WEB-INF/views/user/layout/header.jsp"></jsp:include>
	<!-- Header Area End -->
	<!-- Slider Area Start -->
	<div class="slider-area">
		<div class="slider-wrapper owl-carousel carousel-style-dot">
			<div class="single-slide"
				style="background-image: url('user/assets/img/slider/1.jpg');">
				<div class="container">
					<div class="slider-banner">
						<h1>Collection</h1>
						<h2>Lamps light Color</h2>
						<p>
							Eikon is made of certified wood and a lampshade that is attached<br>simply
							with the help of magnets.
						</p>
						<a href="/shop" class="banner-btn">Shop now</a>
					</div>
				</div>
			</div>
			<div class="single-slide slide-two"
				style="background-image: url('user/assets/img/slider/2.jpg');">
				<div class="container">
					<div class="slider-banner">
						<h1>inimalist design</h1>
						<h2>Lounge Chairs</h2>
						<p>
							Doko Demo is a minimalist design created by<br>Copenhagen-based
							designer CZYK
						</p>
						<a href="/shop" class="banner-btn">Shop now</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Slider Area End -->
	<!-- Banner Area Start -->
	<div class="banner-area pt-90">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-3">
					<a class="banner-image" href="/shop"><img
						src="user/assets/img/banner/1.jpg" alt=""></a>
				</div>
				<div class="col-lg-6 col-md-6">
					<a class="banner-image" href="/shop"><img
						src="user/assets/img/banner/2.jpg" alt=""></a>
				</div>
				<div class="col-lg-3 col-md-3">
					<a class="banner-image" href="/shop"><img
						src="user/assets/img/banner/3.jpg" alt=""></a>
				</div>
			</div>
		</div>
	</div>
	<!-- Banner Area End -->
	<!-- Product Area Start -->
	<div class="product-area text-center pt-90 pb-85">
		<div class="container">
			<div class="section-title">
				<span>new shop item</span>
				<h2>
					<span>Nightstands</span>
				</h2>
			</div>
		</div>
		<div class="container">
			<div class="custom-row">
				<div class="product-carousel owl-carousel carousel-style-one">
					<c:forEach items="${ product}" var="p">
						
						<div class="custom-col">
							<div class="product-item">
								<div class="product-image-hover">
									<a href="${base }/product-details1/${p.getSeo()}"> <img
										style="width: 250px; height: 250px;" class="primary-image"
										src="${base }/upload/${p.avatar}" alt="">
									</a>
									<div class="product-hover">
										<button>
											<i class="icon icon-FullShoppingCart"></i>
										</button>
										<a href="wishlist.htnl"><i class="icon icon-Heart"></i></a> <a
											href="wishlist.htnl"><i class="icon icon-Files"></i></a>
									</div>
								</div>
								<div class="product-text">
									<h4>
										<a href="/product-details1?id=${p.id}">${p.title }</a>
									</h4>
									<div class="product-price">
										<span><fmt:setLocale value="vi_VN" scope="session" />
											<fmt:formatNumber value="${p.price }" type="currency" /></span>
									</div>
								</div>
							</div>
						</div>
						
					</c:forEach>


				</div>
			</div>
		</div>
	</div>
	<!-- Product Area End -->
	<!-- Banner Area Start -->
	<div class="banner-area">
		<div class="container">
			<div class="row grid">
				<div class="col-md-3 grid-item">
					<a class="banner-image" href="/shop"> <img
						src="user/assets/img/banner/4.jpg" alt=""> <span
						class="banner-hover-text">Chair collection</span>
					</a>
				</div>
				<div class="col-md-3 grid-item">
					<a class="banner-image" href="/shop"> <img
						src="user/assets/img/banner/5.jpg" alt=""> <span
						class="banner-hover-text">Lighting collection</span>
					</a>
				</div>
				<div class="col-md-3 grid-item">
					<a class="banner-image" href="/shop"> <img
						src="user/assets/img/banner/6.jpg" alt=""> <span
						class="banner-hover-text">HOME ACCESSORIES</span>
					</a>
				</div>
				<div class="col-md-3 grid-item">
					<a class="banner-image" href="/shop"> <img
						src="user/assets/img/banner/7.jpg" alt=""> <span
						class="banner-hover-text">Black Hanging Chair</span>
					</a>
				</div>
				<div class="col-md-3 grid-item">
					<a class="banner-image" href="/shop"> <img
						src="user/assets/img/banner/9.jpg" alt=""> <span
						class="banner-hover-text">COFFEE &amp; SIDE TABLES</span>
					</a>
				</div>
				<div class="col-md-3 grid-item">
					<a class="banner-image" href="/shop"> <img
						src="user/assets/img/banner/8.jpg" alt=""> <span
						class="banner-hover-text">sofa collection</span>
					</a>
				</div>
			</div>
		</div>
	</div>
	<!-- Banner Area End -->
	<!-- Feature Product Area Start -->
	<!-- Banner Area Start -->
	<div class="banner-area">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<a class="banner-image" href="/shop"><img
						src="user/assets/img/banner/10.jpg" alt=""></a>
				</div>
				<div class="col-md-4">
					<a class="banner-image" href="/shop"><img
						src="user/assets/img/banner/11.jpg" alt=""></a>
				</div>
				<div class="col-md-4">
					<a class="banner-image" href="/shop"><img
						src="user/assets/img/banner/12.jpg" alt=""></a>
				</div>
			</div>
		</div>
	</div>
	<!-- Banner Area End -->

	<!-- Information Area Start -->
	<div class="information-area">
		<div class="container">
			<div class="information-wrapper ptb-60">
				<div class="row">
					<div class="col-md-3">
						<div class="single-information">
							<div class="s-info-img">
								<img src="user/assets/img/icon/shipping.png" alt="">
							</div>
							<div class="s-info-text">
								<h4>free shipping</h4>
								<span>Free shipping on all US order</span>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="single-information">
							<div class="s-info-img">
								<img src="user/assets/img/icon/online.png" alt="">
							</div>
							<div class="s-info-text">
								<h4>Online Support 24/7</h4>
								<span>Support online 24 hours a day</span>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="single-information">
							<div class="s-info-img">
								<img src="user/assets/img/icon/money.png" alt="">
							</div>
							<div class="s-info-text">
								<h4>Money Return</h4>
								<span>Back guarantee under 7 days</span>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="single-information">
							<div class="s-info-img">
								<img src="user/assets/img/icon/member.png" alt="">
							</div>
							<div class="s-info-text">
								<h4>Member Discount</h4>
								<span>Onevery order over $120.00</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Information Area End -->
	<!-- Footer Area Start -->
	<jsp:include page="/WEB-INF/views/user/layout/footer.jsp"></jsp:include>
	<!-- Footer Area End -->

	<!-- all js here -->
	<jsp:include page="/WEB-INF/views/user/layout/js.jsp"></jsp:include>
</body>
</html>
