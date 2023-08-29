<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - BookEworm</title>
    <%@include file="beautify/beautify.jsp"%>
</head>
<body>
    <%@include file="beautify/navbar.jsp"%>

    <div class="container mt-4">
        <h2 class="mb-3">Contact Us</h2>
        <p>If you have any questions or feedback, please feel free to contact us using the form below:</p>

        <form action="contact-submit" method="post">
            <div class="mb-3">
                <label for="name" class="form-label">Name</label>
                <input type="text" class="form-control" id="name" name="name" required>
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" id="email" name="email" required>
            </div>
            <div class="mb-3">
                <label for="message" class="form-label">Message</label>
                <textarea class="form-control" id="message" name="message" rows="4" required></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>

    <%@include file="beautify/footer.jsp"%>
</body>
</html>
