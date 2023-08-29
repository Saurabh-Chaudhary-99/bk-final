<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BookEworm</title>
<%@include file="beautify/beautify.jsp"%>
<style type="text/css">
.back-img {
	background: url("images/bookstore.jpg");
	height: 60vh;
	width: 100%;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
</head>
<body>
	<%@include file="beautify/navbar.jsp"%>
	<div class="container-fluid back-img"></div>
	<div class="container">
		<h3 class="text-center">Recent Books</h3>
		<div class="row">
			<div class="col-md-4">
				<div class="card mb-3">
					<div class="card-body">
						<h5 class="card-title">Past is RisingL</h5>
						<p class="card-text">Kathryne</p>
						<img src="book/er .jpg" alt="Book Cover"
							class="img-fluid">
					</div>
					<div class="card-footer">
						<a href="#" class="btn btn-danger btn-sm"><i
							class="fa-solid fa-cart-shopping"></i> Add to Cart</a> <a href="#"
							class="btn btn-danger btn-sm">View Details</a> <a href="#"
							class="btn btn-danger btn-sm">$399</a>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card mb-3">
					<div class="card-body">
						<h5 class="card-title">WILL</h5>
						<p class="card-text">Mark Manson</p>
						<img src="book/book-cover-will.png" alt="Book Cover"
							class="img-fluid">
					</div>
					<div class="card-footer">
						<a href="#" class="btn btn-danger btn-sm"><i
							class="fa-solid fa-cart-shopping"></i> Add to Cart</a> <a href="#"
							class="btn btn-danger btn-sm">View Details</a> <a href="#"
							class="btn btn-danger btn-sm">$399</a>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card mb-3">
					<div class="card-body">
						<h5 class="card-title">Third Book</h5>
						<p class="card-text">Mark Manson</p>
						<img src="book/book-cover-subtle-art.png" alt="Book Cover"
							class="img-fluid">
					</div>
					<div class="card-footer">
						<a href="#" class="btn btn-danger btn-sm"><i
							class="fa-solid fa-cart-shopping"></i> Add to Cart</a> <a href="#"
							class="btn btn-danger btn-sm">View Details</a> <a href="#"
							class="btn btn-danger btn-sm">$299</a>
					</div>
				</div>
			</div>
		</div>

	</div class="text-center mt-1">
	<a href="" class="btn btn-danger btn-dark">View All</a>
	</div>

<%@ include file="beautify/footer.jsp" %>



	</div>
</body>
</html>

