<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Book Management - Dashboard</title>
  <!-- Include Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <!-- Include Font Awesome for Icons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
  <style>
    body {
      background: url('books.jpg') no-repeat center center fixed;
      background-size: cover;
      height: 100vh;
      margin: 0;
      display: flex;
      align-items: flex-start;
      justify-content: flex-start;
      color: #fff;
      font-family: 'Arial', sans-serif; /* Change font for the entire page */
    }

    .navbar {
      background-color: #3c4f6c;
      padding: 10px;
      border-radius: 0;
      margin: 0;
      width: 100%;
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    .navbar-brand {
      font-size: 24px;
      font-weight: bold;
      color: #fff;
    }

    .nav-link {
      color: #fff;
    }

    .nav-item {
      margin-right: 10px;
    }

    .content {
      text-align: center;
      padding: 20px;
      margin-top: 50px;
    }

    .welcome-message {
      color: #000000; /* Change color for the welcome message */
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

  <div class="container-fluid">
    <!-- Navigation Bar -->
    <nav class="navbar">
      <div class="navbar-brand">Book Management System</div>
      <ul class="nav">
        <li class="nav-item">
          <a class="nav-link" href="add_book.jsp"><i class="fas fa-book"></i> Add Book</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="booklist.jsp"><i class="fas fa-list"></i> View Books</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="update_book.jsp"><i class="fas fa-edit"></i> Update Book</a>
        </li>
       
        
      </ul>
    </nav>
    

    <!-- Content Area -->
    <div class="content">
     <b> <h1 class="welcome-message">Welcome to Book Management System</h1></b>
    </div>
    
    <!-- Footer -->
	<div class="footer" style="margin-top:31%;">
	<footer>
	    <p>&copy; 2024 Book Management System. All Rights Reserved | Design by 
	        <a href="https://www.linkedin.com/in/swati-gosavi" target="_blank">Swati Gosavi</a>
	    </p>
	</footer>
	</div>
  </div>
  
	  

  <!-- Include Bootstrap JS and Popper.js -->
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>
</html>
