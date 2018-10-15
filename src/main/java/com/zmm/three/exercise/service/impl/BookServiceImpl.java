package com.zmm.three.exercise.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import com.alibaba.fastjson.JSONObject;
import com.zmm.three.exercise.entity.Book;
import com.zmm.three.exercise.mapper.BookMapper;
import com.zmm.three.exercise.service.BookService;

@Service
@Transactional(isolation=Isolation.READ_COMMITTED,propagation=Propagation.REQUIRED)
public class BookServiceImpl implements BookService {
	
	@Autowired
	BookMapper bookMapper;

	@Transactional(readOnly=true)
	public List<Book> findAllBook() {
		return bookMapper.selectAllBook();
	}

	public int saveBook(Book book) {
		return bookMapper.addBook(book);
	}

	public Book fidnBookById(int id) {
		return bookMapper.getBookById(id);
	}

	public int modifyBook(Book book) {
		return bookMapper.updateBook(book);
	}

	public int removeBook(int id) {
		return bookMapper.deleteBook(id);
	}

	@Transactional(readOnly=true)
	public List<Book> findBookByPage(JSONObject jsonObject) {
		return bookMapper.selectBookByPage(jsonObject);
	}

	public int totalBooks() {
		return bookMapper.totalBooks();
	}

	@Transactional(readOnly=true)
	public List<Book> findBookBySearchByPage(JSONObject jsonObject) {
		return bookMapper.selectBookBySearchByPage(jsonObject);
	}

	public int totalSearchBook(JSONObject jsonObject) {
		return bookMapper.totalSearchBook(jsonObject);
	}
	
	public JSONObject getDateJson(JSONObject jsonObject) {
		List<Book> bookByPage = bookMapper.selectBookByPage(jsonObject);
		int total=totalBooks();
		jsonObject.put("rows", bookByPage);
		jsonObject.put("total", total);
		System.out.println(jsonObject.get("rows")+","+jsonObject.get("total"));
		return jsonObject;
	}

	public JSONObject getSearchDateJson(JSONObject jsonObject) {
		List<Book> bookByPage = bookMapper.selectBookBySearchByPage(jsonObject);
		int total=totalSearchBook(jsonObject);
		jsonObject.put("rows", bookByPage);
		jsonObject.put("total", total);
		System.out.println(jsonObject.get("rows")+","+jsonObject.get("total"));
		return jsonObject;
	}

	public int removeBookList(String ids) {
		String[] ss=ids.split(",");
		int count=0;
		for (String id : ss) {
			removeBook(Integer.parseInt(id));
			count++;
		}
		return count;
	}
}
