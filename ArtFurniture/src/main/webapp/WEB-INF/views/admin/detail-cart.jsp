<!-- sử dụng tiếng việt, tàu,... -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!-- SPRING FORM -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!-- TagLibs -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="au theme template">
<meta name="author" content="Hau Nguyen">
<meta name="keywords" content="au theme template">

<jsp:include page="/WEB-INF/views/admin/layout/summernote.jsp"></jsp:include>

<jsp:include page="/WEB-INF/views/admin/layout/variables.jsp"></jsp:include>
<!-- Title Page-->
<title>Dashboard</title>

<!-- Fontfaces CSS-->
<jsp:include page="/WEB-INF/views/admin/layout/css.jsp"></jsp:include>
</head>

<body class="animsition">
	<div class="page-wrapper">
		<!-- HEADER MOBILE-->
		<!-- MENU SIDEBAR-->
		<jsp:include page="/WEB-INF/views/admin/layout/header-and-menu.jsp"></jsp:include>
		<!-- PAGE CONTAINER-->

		<!-- HEADER DESKTOP-->

		<!-- MAIN CONTENT-->
		<div class="page-container">
			<!-- HEADER DESKTOP-->
			<jsp:include page="/WEB-INF/views/admin/layout/page-content.jsp"></jsp:include>
			<div class="main-content">
				<div class="section__content section__content--p30">
					<div class="container-fluid">
						<div class="row">
							<div class="col-lg-6">
								<div class="card">
									<div class="card-header">
										<strong>Detail informaion</strong>
									</div>
									<div class="card-body card-block">
										<sf:form action="${base}/admin/detail_cart" method="post"
											enctype="multipart/form-data" class="form-horizontal"
											modelAttribute="saleOrder">


											<sf:hidden path="id" />
											<!-- dung chung cho việc chỉnh sửa và ad sp, mapping in  -->

											<div class="row form-group">
												<div class="col col-md-3">
													<label class=" form-control-label">information cart</label>
												</div>
											</div>
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="text-input" class=" form-control-label">customer
														name </label>
												</div>
												<div class="col-12 col-md-9">
													<sf:input type="text" id="text-input" name="text-input"
														placeholder="Text" class="form-control"
														path="customerName" />
												</div>
											</div>
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="text-input" class=" form-control-label">email</label>
												</div>
												<div class="col-12 col-md-9">
													<sf:input type="text" id="email-input" name="email-input"
														placeholder="text" class="form-control"
														path="customerEmail" />
												</div>
											</div>
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="text-input" class=" form-control-label">phone
													</label>

												</div>
												<div class="col-12 col-md-9">
													<sf:input type="text" id="password-input"
														name="password-input" placeholder="text"
														class="form-control" path="customerPhone" />
												</div>
											</div>

											<div class="row form-group">
												<div class="col col-md-3">
													<label for="textarea-input" class=" form-control-label">address
													</label>
												</div>
												<div class="col-12 col-md-9">
													<sf:input type="text" id="password-input"
														name="password-input" placeholder="text"
														class="form-control" path="customerAddress" />
												</div>
											</div>

											<div class="row form-group">
												<div class="col col-md-3">
													<label for="textarea-input" class=" form-control-label">total
														price: <fmt:setLocale value="vi_VN" scope="session" /> <fmt:formatNumber
															value="${saleOrder.getTotal_price() }" type="currency" />

													</label>

												</div>

											</div>


											<div class="card-footer">
												<button type="submit" class="btn btn-primary btn-sm">
													<i class="fa fa-dot-circle-o"></i> Save cart
												</button>
												<button type="reset" class="btn btn-danger btn-sm">
													<i class="fa fa-ban"></i> Reset
												</button>
											</div>
										</sf:form>


									</div>
								</div>

							</div>
						</div>

						<div class="row" style="width: 500px;">
							<div class="col-md-12">
								<!-- DATA TABLE-->
								<div class="table-responsive m-b-40">
									<table class="table table-borderless table-data3">
										<thead>
											<tr>
												<th>product name</th>
												<th>qty</th>
												<th>price</th>



											</tr>
										</thead>
										<tbody>
											<c:forEach items="${cart }" var="c">
												<tr>
													<td>${c.product.title}</td>
													<td>${c.quality }</td>
													<td><fmt:setLocale value="vi_VN" scope="session" /> <fmt:formatNumber
															value="${c.product.price }" type="currency" /></td>



												</tr>
											</c:forEach>


										</tbody>
									</table>
								</div>
								<!-- END DATA TABLE                  -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- END MAIN CONTENT-->
	<!-- END PAGE CONTAINER-->


	<!-- Jquery JS-->
	<jsp:include page="/WEB-INF/views/admin/layout/js.jsp"></jsp:include>

	<script>
		$('#detail_description').summernote(
				{
					placeholder : 'detail...',
					tabsize : 2,
					height : 120,
					toolbar : [ [ 'style', [ 'style' ] ],
							[ 'font', [ 'bold', 'underline', 'clear' ] ],
							[ 'color', [ 'color' ] ],
							[ 'para', [ 'ul', 'ol', 'paragraph' ] ],
							[ 'table', [ 'table' ] ],
							[ 'insert', [ 'link', 'picture', 'video' ] ],
							[ 'view', [ 'fullscreen', 'codeview', 'help' ] ] ]
				});
	</script>
</body>

</html>
<!-- end document-->
