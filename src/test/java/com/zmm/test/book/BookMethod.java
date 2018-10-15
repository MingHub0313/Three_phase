package com.zmm.test.book;

import java.util.List;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import com.alibaba.fastjson.JSONObject;
import com.zmm.three.exercise.entity.Book;
import com.zmm.three.exercise.service.BookService;

@RunWith(value=SpringJUnit4ClassRunner.class)
@ContextConfiguration(value={"classpath:applicationContext.xml"})
public class BookMethod {
	
	@Autowired
	BookService bookService;
	
	// 获取全部图书
	@Test
	public void findBookAll() {
		List<Book> allBook = bookService.findAllBook();
		for (Book book: allBook) {
			System.out.println(book.getName()+","+book.getPrice()+","+book.getAuthor());
		}
	}
	
	// 分页展示图书
	@Test
	public void findPageBook() {
		JSONObject jsonObject=new JSONObject();
		List<Book> bookByPage = bookService.findBookByPage(jsonObject);
		for (Book book: bookByPage) {
			System.out.println(book.getName()+","+book.getPrice()+","+book.getAuthor());
		}
	}
	
	// 获取总数
	@Test
	public void totalBooks() {
		int i = bookService.totalBooks();
		System.out.println("一共有"+i+"条数据");
	}
	
	
	// 搜索后的总数
	@Test
	public void totalSearchBook() {
		JSONObject jsonObject=new JSONObject();
		int i = bookService.totalSearchBook(jsonObject);
		System.out.println("一共有"+i+"条数据");
	}
	
	//搜索分页
	@Test
	public void selectBookBySearchByPage() {
		JSONObject jsonObject=new JSONObject();
		jsonObject.put("name", "与");
		jsonObject.put("firstIndex", 0);
		jsonObject.put("maxResult", 2);
		List<Book> bookBySearchByPage = bookService.findBookBySearchByPage(jsonObject);
		for (Book book: bookBySearchByPage) {
			System.out.println(book.getName()+","+book.getPrice()+","+book.getAuthor());
		}
	}
	
}
