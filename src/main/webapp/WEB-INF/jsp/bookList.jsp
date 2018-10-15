<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>图书列表</title>
<link rel="stylesheet" type="text/css" href="../Css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="../Css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css" href="../Css/style.css" />
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.css">
</head>
<body>
	<p class="search_p">
		<label for="search_name">图书名：</label> <input type="text"
			class="form-control" id="search_name" name="name">
	</p>
	<div class="col-md-8">
		<div class="tile">
			<div class="tile-body">
				<table id="mytable"></table>
			</div>
		</div>
	</div>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/Js/jquery.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.js"></script>
	<script type="text/javascript">
		$(function() {
			//初始化表格
			$("#mytable")
					.bootstrapTable(
							{
								columns : [
										{
											field : 'id',
											title : '编号'
										},
										{
											field : 'name',
											title : '图书名称'
										},
										{
											field : 'publishdate',
											title : '出版日期'
										},
										{
											field : 'price',
											title : '价格'
										},
										{
											field : 'content',
											title : '简介'
										},
										{
											title : '操作',
											field : 'id',
											align : 'center',
											formatter : function(value, row,
													index) {
												var e = '<a href="#" mce_href="#" onclick="edit(\''
														+ row.id
														+ '\')">编辑</a> ';
												var d = '<a href="#" mce_href="#" onclick="del(\''
														+ row.id
														+ '\')">删除</a> ';
												return e + d;
											}
										} ],
								url : 'lists',
								//请求方式
								method : 'post',
								//是否显示行间隔色
								striped : true,
								//打开搜索框
								search : true,
								//按回车键后进行搜索
								searchOnEnterKey : true,
								//开启分页功能
								pagination : true,
								//第一次加载第一页
								pageNumber : 1,
								//每页显示条数
								pageSize : 2,
								//分页方式：默认客户端分页，修改为服务端分页
								sidePagination : 'server',
							});
		});
	</script>
</body>

</html>