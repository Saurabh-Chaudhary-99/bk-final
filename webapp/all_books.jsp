<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Books - BookEworm</title>
    <%@include file="beautify/beautify.jsp"%>
    <!-- Include your custom CSS styles here -->
</head>
<body>
    <%@include file="beautify/navbar.jsp"%>

    <div class="container mt-4">
        <h2 class="mb-3">All Books</h2>
        <div class="row">
            <%-- Loop through the list of books and generate HTML for each book --%>
            <% for (Book book : listOfBooks) { %>
                <div class="col-md-4">
                    <div class="card mb-3">
                        <div class="card-body">
                            <h5 class="card-title"><%= book.getTitle() %></h5>
                            <p class="card-text"><%= book.getAuthor() %></p>
                            <img src="<%= book.getCoverImage() %>" alt="Book Cover" class="img-fluid">
                        </div>
                        <div class="card-footer">
                            <a href="#" class="btn btn-danger btn-sm"><i class="fa-solid fa-cart-shopping"></i> Add to Cart</a>
                            <a href="#" class="btn btn-danger btn-sm">View Details</a>
                            <a href="#" class="btn btn-danger btn-sm">$<%= book.getPrice() %></a>
                        </div>
                    </div>
                </div>
            <% } %>
        </div>
    </div>

    <%@include file="beautify/footer.jsp"%>
</body>
</html>
