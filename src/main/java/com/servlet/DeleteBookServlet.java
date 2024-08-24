package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.BookDao;

public class DeleteBookServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private BookDao bookDao = new BookDao();

    public DeleteBookServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String bookIdParam = request.getParameter("bookId");
            if (bookIdParam != null) {
                int id = Integer.parseInt(bookIdParam);
                bookDao.deleteBook(id);
            }
            response.sendRedirect("booklist.jsp");
        } catch (NumberFormatException e) {
            // Log the error and redirect to an error page or show an error message
            response.sendRedirect("error.jsp");
        }
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
