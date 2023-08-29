<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BookEworm Admin Panel</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <!-- Custom CSS -->
    <style>
        /* ... Your existing styles ... */
    </style>
</head>
<body>
    <header>
        <!-- ... Your existing header ... -->
    </header>

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="#">BookEworm Admin Panel</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="/admin/users">Manage Users</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/admin/books">Manage Books</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/admin/orders">View Orders</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/admin/analytics">View Analytics</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/admin/promotions">Manage Promotions</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/admin/inventory">Manage Inventory</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/admin/settings">Manage Settings</a>
                    </li>
                    <!-- Add more links for other administrative tasks as needed -->
                </ul>
            </div>
        </div>
    </nav>

    <div class="container">
        <h1>Welcome to BookEworm Admin Panel</h1>
        <p>Hello Admin! This is the admin panel for managing BookEworm online bookstore.</p>
        <p>Use the links above to perform various administrative tasks.</p>
    </div>

    <footer class="footer">
        <div class="container text-center">
            <p>© 2023 BookEworm Online Bookstore. All rights reserved.</p>
        </div>
    </footer>

    <!-- Bootstrap JS (Optional if you need to use Bootstrap's JavaScript components) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
