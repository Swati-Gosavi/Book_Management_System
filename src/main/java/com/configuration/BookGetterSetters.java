package com.configuration;

import java.util.List;

import com.dao.BookDao;
import com.entity.Book;

public class BookGetterSetters {

	private BookDao bookDao = new BookDao();
	
	private static List<Book> booklist;
	
	public static List<Book> getBooklist(){
		return booklist;
	}
	
	public static void setBooklist(List<Book> booklist){
		BookGetterSetters.booklist = booklist;
	}
}
