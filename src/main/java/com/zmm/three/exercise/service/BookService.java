package com.zmm.three.exercise.service;

import java.util.List;
import com.alibaba.fastjson.JSONObject;
import com.zmm.three.exercise.entity.Book;

public interface BookService {
	// 获取全部图书
	List<Book> findAllBook();

	// 新增图书
	int saveBook(Book book);

	// 根据Id查询图书
	Book fidnBookById(int id);

	// 修改图书
	int modifyBook(Book book);

	// 删除图书
	int removeBook(int id);
	
	// 批量删除图书
	int removeBookList(String ids);

	// 分页展示图书
	List<Book> findBookByPage(JSONObject jsonObject);

	// 获取总数
	int totalBooks();

	// 搜索分页
	List<Book> findBookBySearchByPage(JSONObject jsonObject);

	// 搜索后的总数
	int totalSearchBook(JSONObject jsonObject);
	
	JSONObject getDateJson(JSONObject jsonObject);
	
	JSONObject getSearchDateJson(JSONObject jsonObject);

}
