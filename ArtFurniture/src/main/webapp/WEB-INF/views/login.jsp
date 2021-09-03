
<!-- sử dụng tiếng việt, tàu,... -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
	<!-- Breadcrumb Area Start -->
	<div class="breadcrumb-area bg-dark">
		<div class="container">
			<nav aria-label="breadcrumb">
				<ul class="breadcrumb">
					<li class="breadcrumb-item"><a href="/index">Home</a></li>
					<li class="breadcrumb-item active" aria-current="page">Login</li>
				</ul>
			</nav>
		</div>
	</div>
	<!-- Breadcrumb Area End -->
	<!-- Account Area Start -->
	<div class="my-account-area ptb-80">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-12 col-sm-12">
					
					<form method="POST" action="/perform_login">
						<div class="form-fields">
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />

							<c:if test="${not empty param.login_error}">
								<div class="alert alert-danger" role="alert">Login attempt
									was not successful, try again!!!</div>
							</c:if>
							<h2>Login</h2>
							<p>
								<label for="reg-email" class="important">Username</label> <input
									type="text" name="username" class="form-control"
									placeholder="Username" id="reg-email">
							</p>
							<p>
								<label for="reg-pass" class="important">Password</label> <input
									type="password" name="password" class="form-control"
									placeholder="Password" id="reg-pass">
							</p>
						</div>
						<div class="form-action">
							<button type="submit">Login</button>
							<h4 class="text-center">
								<a href="/account">Create an account</a>
							</h4>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- Account Area End -->
	<!-- Footer Area Start -->
	<jsp:include page="/WEB-INF/views/user/layout/footer.jsp"></jsp:include>
	<!-- Footer Area End -->

	<!-- all js here -->
	<jsp:include page="/WEB-INF/views/user/layout/js.jsp"></jsp:include>
</body>
</html>
