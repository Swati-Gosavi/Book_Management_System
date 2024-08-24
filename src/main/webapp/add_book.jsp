<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Book</title>
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
            color: #fff; /* Set the navbar link color to white */
        }

        .nav-link:hover {
            color: #ccc; /* Optional: lighter color on hover */
        }

        #addBook {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            padding: 30px;
            margin-top: 40px;
        }

        h2 {
            color: #007bff;
        }

        label {
            font-weight: bold;
            color: #495057;
        }

        .form-control {
            border-radius: 8px;
            margin-bottom: 20px;
        }

        button.btn-primary {
            background-color: #007bff;
            border: none;
            padding: 10px 20px;
            font-size: 18px;
        }

        button.btn-primary:hover {
            background-color: #0056b3; /* Slightly darker shade on hover */
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
                <a class="nav-link" href="booklist.jsp">Book List</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="index.jsp">Home</a>
            </li>
        </ul>
    </div>
</nav>

<!-- Add Book Form -->
<div class="container mt-4" id="addBook" style="max-width: 600px;">
    <h2 class="mb-4">Add New Book</h2>
    <form action="AddBookServlet" method="post">
        <div class="form-group">
            <label for="title">Title</label>
            <input type="text" class="form-control" id="title" name="title" placeholder="Enter Book Title" required>
        </div>
        <div class="form-group">
            <label for="author">Author</label>
            <input type="text" class="form-control" id="author" name="author" placeholder="Enter Author Name" required>
        </div>
        <div class="form-group">
            <label for="price">Price</label>
            <input type="number" class="form-control" id="price" name="price" step="0.01" placeholder="Enter Book Price" required>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>

 <!-- Footer -->
	<div class="footer" style="margin-top:9.9%;">
	<footer>
	    <p>&copy; 2024 Book Management System. All Rights Reserved | Design by 
	        <a href="https://www.linkedin.com/in/swati-gosavi" target="_blank">Swati Gosavi</a>
	    </p>
	</footer>
	</div>

<!-- Bootstrap JS and Popper.js -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
