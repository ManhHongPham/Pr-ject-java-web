
<!-- sử dụng tiếng việt, tàu,... -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!-- SPRING FORM -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

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
	<div class="breadcrumb-area bg-dark">
		<div class="container">
			<nav aria-label="breadcrumb">
				<ul class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">Home</a></li>
					<li class="breadcrumb-item active" aria-current="page">Cart</li>
				</ul>
			</nav>
		</div>
	</div>
	<!-- Breadcrumb Area End -->

	<div class="cart-main-area ptb-80">
		<div class="container">



			<form action="${base }/cart/paymnet" method="post">
				<h2>Your Bag</h2>
				<h3>
					Price Total:<span><fmt:setLocale value="vi_VN"
							scope="session" /> <fmt:formatNumber value="${totalprice }"
							type="currency" /></span>
				</h3>
				<div class="cart-table table-responsive">
					<table>
						<thead>
							<tr>
								<th class="p-edit">ordinal Number</th>
								<th class="p-image">Image</th>
								<th class="p-name">Product Name</th>
								<th class="p-amount">Unit Price</th>
								<th class="p-quantity">Qty</th>
								<th class="p-quantity">Delete</th>

							</tr>
						</thead>

						<tbody>
							<c:forEach items="${cart.cartItems}" var="item" varStatus="loop">

								<tr>
									<td class="p-edit">${loop.index +1}</td>
									<td class="p-image"><img
										style="width: 50px; height: 50px;"
										src="${base }/upload/${item.avatarProduct }" alt="" /></td>
									<td class="p-name"><a href="product-details.html"> </a>${item.productName }</td>
									<td class="p-amount"><fmt:setLocale value="vi_VN"
											scope="session" /> <fmt:formatNumber
											value="${item.priceUnit }" type="currency" /></td>

									<td class="p-quantity"><input maxlength="12" type="text"
										value="${item.quanlity }" name="quantity"></td>



									<td class="p-quantity">
										<button type="button"
											onclick="DeleteItemInCart(${item.productId})">delete</button>
									</td>
								</tr>


							</c:forEach>

						</tbody>
					</table>
				</div>
				<div class="all-cart-buttons">
					<button class="button" type="button">
						<a href="${base }/shop"><span>Continue Shopping</span> </a>
					</button>

				</div>


			</form>
			<c:choose>
				<c:when test="${isLogined }">
					<div class="my-account-area ptb-80">
						<div class="container">
							<div class="row">
								<div class="col-lg-6 col-md-12 col-sm-12">
									<form action="${base }/cart/paymnet" method="post">
										<div class="form-fields">
											<h2>SHIPPING INFORMATION</h2>
											<p>
												<label for="reg-email" class="important">Customer
													Name</label> <input type="text" id="reg-email" name="fullName"
													placeholder="${userLogined.userName }">
											</p>
											<p>
												<label for="reg-email" class="important">Email
													address</label> <input type="text" id="reg-email" name="email"
													placeholder="${userLogined.email }">
											</p>
											<p>
												<label for="reg-email" class="important"> Address</label> <input
													type="text" id="reg-email" name="address">
											</p>
											<p>
												<label for="reg-pass" class="important">Phone Number</label>
												<input type="number" id="reg-pass" name="tel">
											</p>

										</div>

										<div class="form-action">
											<button type="submit">Payment</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</c:when>
				<c:otherwise>
					<div class="my-account-area ptb-80">
						<div class="container">
							<div class="row">
								<div class="col-lg-6 col-md-12 col-sm-12">
									<form action="${base }/cart/paymnet" method="post">
										<div class="form-fields">
											<h2>SHIPPING INFORMATION</h2>
											<p>
												<label for="reg-email" class="important">Customer
													Name</label> <input type="text" id="reg-email" name="fullName">
											</p>
											<p>
												<label for="reg-email" class="important">Email
													address</label> <input type="text" id="reg-email" name="email">
											</p>
											<p>
												<label for="reg-email" class="important"> Address</label> <input
													type="text" id="reg-email" name="address">
											</p>
											<p>
												<label for="reg-pass" class="important">Phone Number</label>
												<input type="number" id="reg-pass" name="tel">
											</p>

										</div>

										<div class="form-action">
											<button type="submit">Payment</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</c:otherwise>
			</c:choose>

		</div>
	</div>
	<!-- Cart Main Area End -->



	<!-- Footer Area Start -->
	<jsp:include page="/WEB-INF/views/user/layout/footer.jsp"></jsp:include>
	<!-- Footer Area End -->

	<!-- all js here -->
	<jsp:include page="/WEB-INF/views/user/layout/js.jsp"></jsp:include>

	<script type="text/javascript">
		function DeleteItemInCart(productId) {
			// javascript object.
			var data = {};
			data["productId"] = productId;
			$.ajax({
				url : "/cart_delete",
				type : "post",
				contentType : "application/json",
				data : JSON.stringify(data),

				dataType : "json",
				success : function(jsonResult) {
					$("#totalItemsInCart").html(jsonResult.totalItems);
					alert('Successful');
					location.reload();
				},
				error : function(jqXhr, textStatus, errorMessage) { // error callback 

				}
			});
		}
	</script>
</body>
</html>
