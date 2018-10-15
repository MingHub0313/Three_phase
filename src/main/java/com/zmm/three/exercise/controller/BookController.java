package com.zmm.three.exercise.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.alibaba.fastjson.JSONObject;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.zmm.three.exercise.entity.Book;
import com.zmm.three.exercise.service.BookService;

@Controller
public class BookController {

	@Autowired
	BookService bookService;
	
	@RequestMapping(value = "/",method = RequestMethod.GET)
    public String index(){
        return "index";
    }

	@RequestMapping(value = "/{path}", method = RequestMethod.GET)
	public String toPage(@PathVariable String path) {
		return path;
	}

	@RequestMapping(value = "/show", method = RequestMethod.POST)
	public @ResponseBody JSONObject goList(@RequestBody JSONObject jsonObject) {
		
		//System.out.println(map);//{search=, order=asc, offset=0, limit=2}
		Object object = jsonObject.get("search");
		System.out.println("===========jsonObject============"+object);
		JSONObject dateJson =new JSONObject();
		if(object==null) {
			dateJson= bookService.getDateJson(jsonObject);
		}else{
			dateJson=bookService.getSearchDateJson(jsonObject);
		}
		return dateJson;
	}

	// 先获取需要修改的Book信息
	@RequestMapping(value="/findBook", method = RequestMethod.POST)
	public @ResponseBody Book findUpdateBook(int id,HttpServletResponse resposne) {
		Book book = bookService.fidnBookById(id);
		System.out.println("查询成功"+book.getName());
		return book;
	}
	
	//验证图书名是否存在
	@RequestMapping("/checkNameExists.do")
	public @ResponseBody String checkNameValid(@RequestParam String name) {
		boolean result = true;
		List<Book> bookList=bookService.findAllBook();
		for (Book book : bookList) {
			if(book.getName().equals(name)) {
				 result = false;
				 break;
			}
		}
		Map<String, Boolean> map = new HashMap<String, Boolean>();
        map.put("valid", result);
        ObjectMapper mapper = new ObjectMapper();
        String resultString = "";
        try {
            resultString = mapper.writeValueAsString(map);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        return resultString;
	}

	// 执行修改Book语句
	@RequestMapping("/update.do")
	public void toUpdateBook(Book book,HttpServletResponse resposne) {
		System.out.println("===================图书信息修改"+book+"=====================");
		int i = bookService.modifyBook(book);
		if(i>0) {
			try {
				resposne.getWriter().print(i);//返回1
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

	@RequestMapping("/delete.do")
	public void toDeleteBook(int id,HttpServletResponse resposne) {
		// 删除完成后到列表页面
		int i = bookService.removeBook(id);
		try {
			resposne.getWriter().print(i);//返回1
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	@RequestMapping("/deletelist.do")
	@ResponseBody
	public String deleteUserList(String ids) {
		int i = bookService.removeBookList(ids);
		if(i>0) {
			return "ok";
		}else {
			return "false";
		}
	}
	
	@RequestMapping("/add.do")
	public void toAddBook(Book book,HttpServletResponse resposne) {
		System.out.println("===================图书信息"+book+"=====================");
		int i = bookService.saveBook(book);
		if(i>0) {
			try {
				resposne.getWriter().print(i);//返回1
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
}
