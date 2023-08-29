<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - BookEworm</title>
    <%@include file="beautify/beautify.jsp"%>
    <style>
        body {
            background-color: #f8f9fa;
            display: flex;
            flex-direction: column;
            min-height: 100vh; /* Set the minimum height of the viewport */
            margin: 0;
        }

        .about-container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .about-heading {
            font-size: 28px;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .about-paragraph {
            font-size: 16px;
            line-height: 1.6;
            margin-bottom: 15px;
        }

        .footer {
            margin-top: auto; /* Push the footer to the bottom */
            background-color: #343a40;
            color: white;
            padding: 20px 0;
            text-align: center;
        }
    </style>
</head>
<body>
    <%@include file="beautify/navbar.jsp"%>

    <div class="container mt-4 about-container">
        <h2 class="about-heading">About Us</h2>
        <p class="about-paragraph">Welcome to BookEworm - your online bookstore for the latest and greatest reads!</p>
        <p class="about-paragraph">At BookEworm, we are passionate about books and reading. Our mission is to provide a wide selection of books across various genres to satisfy every reader's taste.</p>
        <p class="about-paragraph">Whether you're looking for bestsellers, classics, or hidden gems, we've got you covered. Our team of book enthusiasts carefully curates our collection to ensure you have access to quality literature.</p>
        <p class="about-paragraph">Thank you for choosing BookEworm as your go-to source for books. Happy reading!</p>
    </div>
    
    

    <div class="footer">
        <p>&copy; 2023 BookEworm. All rights reserved.</p>
    </div>
</body>
</html>
