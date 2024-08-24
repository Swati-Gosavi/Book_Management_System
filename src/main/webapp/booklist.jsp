<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.entity.Book" %>
<%@ page import="com.dao.BookDao" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book List - Book Management System</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }

        .navbar {
            background-color: #343a40;
        }

        .navbar-brand {
            font-size: 1.5rem;
            color: #fff;
        }

        .nav-link {
            color: #fff;
        }

        .nav-link:hover {
            color: #ccc;
        }

        .container {
            background-color: #ffffff;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            margin-top: 40px;
        }

        h2 {
            color: #007bff;
            text-align: center;
            margin-bottom: 30px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 12px;
            border-bottom: 1px solid #ddd;
            text-align: left;
        }

        th {
            background-color: #007bff;
            color: #ffffff;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        .button, .delete-btn {
            display: inline-block;
            padding: 8px 16px;
            font-size: 14px;
            color: #ffffff;
            text-decoration: none;
            border-radius: 4px;
            transition: background-color 0.3s;
        }

        .button {
            background-color: #007bff;
        }

        .button:hover {
            background-color: #0056b3;
        }

        .delete-btn {
            background-color: #ff6b6b;
            border: none;
            cursor: pointer;
        }

        .delete-btn:hover {
            background-color: #c0392b;
        }

        footer {
		    background-color: #343a40; /* Dark background for footer */
		    color: #ffffff; /* White text color */
		    text-align: center; /* Centered text */
		    padding: 5px 0; /* Padding for spacing */
		    margin-top: 20px; /* Space above the footer */
		}
		
		footer a {
		    color: #ffffff; /* White color for the link */
		    text-decoration: none; /* No underline */
		    transition: color 0.3s; /* Smooth transition on hover */
		}
		
		footer a:hover {
		    color: #ccc; /* Light gray color on hover */
		}
        
        
        
    </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="#">Book Management System</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
        <ul class="nav">
        	<li class="nav-item">
                <a class="nav-link" href="add_book.jsp">Add Book</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="index.jsp">Home</a>
            </li>
            
        </ul>
    </div>
</nav>

<!-- Main Content Container -->
<div class="container">
    <h2>Library Book List</h2>
    <table class="table table-hover">
        <thead>
            <tr>
                <th>Book ID</th>
                <th>Title</th>
                <th>Author</th>
                <th>Price</th>
                <th>Action</th> <!-- Column for Actions -->
            </tr>
        </thead>
        <tbody>
            <%
                BookDao bookDao = new BookDao();
                List<Book> books = bookDao.getBooks(); 
                for (Book book : books) {
            %>
            <tr>
                <td><%= book.getBid() %></td>
                <td><%= book.getTitle() %></td>
                <td><%= book.getAuthor() %></td>
                <td>Rs <%= book.getPrice() %></td>
                <td>
                    <a href="update_book.jsp?bookId=<%= book.getBid() %>" class="button">Edit</a>
                    <form action="DeleteBookServlet" method="post" style="display:inline;">
                        <input type="hidden" name="bookId" value="<%= book.getBid() %>">
                        <button type="submit" class="delete-btn">Delete</button>
                    </form>
                </td>
            </tr>
            <% } %>
        </tbody>
    </table>
</div>

<!-- Footer -->
<footer>
    <p>&copy; 2024 Book Management System. All Rights Reserved | Design by 
        <a href="https://www.linkedin.com/in/swati-gosavi" target="_blank">Swati Gosavi</a>
    </p>
</footer>


<!-- Include Bootstrap JS and Popper.js -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
