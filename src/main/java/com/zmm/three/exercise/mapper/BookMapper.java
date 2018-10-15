package com.zmm.three.exercise.mapper;

import java.util.List;
import com.alibaba.fastjson.JSONObject;
import com.zmm.three.exercise.entity.Book;



public interface BookMapper {

	// 获取全部图书
	public List<Book> selectAllBook();

	// 新增图书
	public int addBook(Book book);

	// 根据Id查询图书
	public Book getBookById(int id);

	// 修改图书
	public int updateBook(Book book);

	// 删除图书
	public int deleteBook(int id);
	
	// 批量删除图书
	public int deleteBookList(String ids);
	
	// 分页展示图书
	public List<Book> selectBookByPage(JSONObject jsonObject);

	// 获取总数
	public int totalBooks();

	// 搜索分页
	public List<Book> selectBookBySearchByPage(JSONObject jsonObject);

	// 搜索后的总数
	public int totalSearchBook(JSONObject jsonObject);

}
