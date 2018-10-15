package com.zmm.three.exercise.entity;

import java.util.List;

public class Page<T> {

	// 1.总图书数
	private int totalCount;

	// 2.一页展示几条
	private int pageCount;

	// 3.总页数

	private int totalPage;

	// 4.当期页数

	private int currentPage;

	// 5.集合

	private List<T> books;

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public List<T> getBooks() {
		return books;
	}

	public void setBooks(List<T> books) {
		this.books = books;
	}

}
