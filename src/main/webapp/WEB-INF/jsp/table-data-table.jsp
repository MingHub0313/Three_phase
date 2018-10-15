<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta name="description"
	content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
<!-- Twitter meta-->
<meta property="twitter:card" content="summary_large_image">
<meta property="twitter:site" content="@pratikborsadiya">
<meta property="twitter:creator" content="@pratikborsadiya">
<!-- Open Graph Meta-->
<meta property="og:type" content="website">
<meta property="og:site_name" content="Vali Admin">
<meta property="og:title" content="Vali - Free Bootstrap 4 admin theme">
<meta property="og:url"
	content="http://pratikborsadiya.in/blog/vali-admin">
<meta property="og:image"
	content="http://pratikborsadiya.in/blog/vali-admin/hero-social.png">
<meta property="og:description"
	content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
<title>Data Table - Vali Admin</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Main CSS-->
<link rel="stylesheet" type="text/css" href="css/main.css">
<!-- <link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet"> -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap3-dialog/1.35.0/css/bootstrap-dialog.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.css">

<link
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/css/bootstrapValidator.min.css"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css"
	rel="stylesheet">

<!-- Font-icon css-->
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body class="app sidebar-mini rtl">
	<!-- Navbar-->
	<header class="app-header">
		<a class="app-header__logo" href="index.jsp">Vali</a>
		<!-- Sidebar toggle button-->
		<a class="app-sidebar__toggle" href="#" data-toggle="sidebar"
			aria-label="Hide Sidebar"></a>
		<!-- Navbar Right Menu-->
		<ul class="app-nav">
			<li class="app-search"><input class="app-search__input"
				type="search" placeholder="Search">
				<button class="app-search__button">
					<i class="fa fa-search"></i>
				</button></li>
			<!--Notification Menu-->
			<li class="dropdown"><a class="app-nav__item" href="#"
				data-toggle="dropdown" aria-label="Show notifications"><i
					class="fa fa-bell-o fa-lg"></i></a>
				<ul class="app-notification dropdown-menu dropdown-menu-right">
					<li class="app-notification__title">You have 4 new
						notifications.</li>
					<div class="app-notification__content">
						<li><a class="app-notification__item" href="javascript:;"><span
								class="app-notification__icon"><span
									class="fa-stack fa-lg"><i
										class="fa fa-circle fa-stack-2x text-primary"></i><i
										class="fa fa-envelope fa-stack-1x fa-inverse"></i></span></span>
								<div>
									<p class="app-notification__message">Lisa sent you a mail</p>
									<p class="app-notification__meta">2 min ago</p>
								</div></a></li>
						<li><a class="app-notification__item" href="javascript:;"><span
								class="app-notification__icon"><span
									class="fa-stack fa-lg"><i
										class="fa fa-circle fa-stack-2x text-danger"></i><i
										class="fa fa-hdd-o fa-stack-1x fa-inverse"></i></span></span>
								<div>
									<p class="app-notification__message">Mail server not
										working</p>
									<p class="app-notification__meta">5 min ago</p>
								</div></a></li>
						<li><a class="app-notification__item" href="javascript:;"><span
								class="app-notification__icon"><span
									class="fa-stack fa-lg"><i
										class="fa fa-circle fa-stack-2x text-success"></i><i
										class="fa fa-money fa-stack-1x fa-inverse"></i></span></span>
								<div>
									<p class="app-notification__message">Transaction complete</p>
									<p class="app-notification__meta">2 days ago</p>
								</div></a></li>
						<div class="app-notification__content">
							<li><a class="app-notification__item" href="javascript:;"><span
									class="app-notification__icon"><span
										class="fa-stack fa-lg"><i
											class="fa fa-circle fa-stack-2x text-primary"></i><i
											class="fa fa-envelope fa-stack-1x fa-inverse"></i></span></span>
									<div>
										<p class="app-notification__message">Lisa sent you a mail</p>
										<p class="app-notification__meta">2 min ago</p>
									</div></a></li>
							<li><a class="app-notification__item" href="javascript:;"><span
									class="app-notification__icon"><span
										class="fa-stack fa-lg"><i
											class="fa fa-circle fa-stack-2x text-danger"></i><i
											class="fa fa-hdd-o fa-stack-1x fa-inverse"></i></span></span>
									<div>
										<p class="app-notification__message">Mail server not
											working</p>
										<p class="app-notification__meta">5 min ago</p>
									</div></a></li>
							<li><a class="app-notification__item" href="javascript:;"><span
									class="app-notification__icon"><span
										class="fa-stack fa-lg"><i
											class="fa fa-circle fa-stack-2x text-success"></i><i
											class="fa fa-money fa-stack-1x fa-inverse"></i></span></span>
									<div>
										<p class="app-notification__message">Transaction complete</p>
										<p class="app-notification__meta">2 days ago</p>
									</div></a></li>
						</div>
					</div>
					<li class="app-notification__footer"><a href="#">See all
							notifications.</a></li>
				</ul></li>
			<!-- User Menu-->
			<li class="dropdown"><a class="app-nav__item" href="#"
				data-toggle="dropdown" aria-label="Open Profile Menu"><i
					class="fa fa-user fa-lg"></i></a>
				<ul class="dropdown-menu settings-menu dropdown-menu-right">
					<li><a class="dropdown-item" href="page-user.jsp"><i
							class="fa fa-cog fa-lg"></i> Settings</a></li>
					<li><a class="dropdown-item" href="page-user.jsp"><i
							class="fa fa-user fa-lg"></i> Profile</a></li>
					<li><a class="dropdown-item" href="page-login.jsp"><i
							class="fa fa-sign-out fa-lg"></i> Logout</a></li>
				</ul></li>
		</ul>
	</header>
	<!-- Sidebar menu-->
	<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
	<aside class="app-sidebar">
		<div class="app-sidebar__user">
			<img class="app-sidebar__user-avatar"
				src="https://s3.amazonaws.com/uifaces/faces/twitter/jsa/48.jpg"
				alt="User Image">
			<div>
				<p class="app-sidebar__user-name">John Doe</p>
				<p class="app-sidebar__user-designation">Frontend Developer</p>
			</div>
		</div>
		<ul class="app-menu">
			<li><a class="app-menu__item" href="index.jsp"><i
					class="app-menu__icon fa fa-dashboard"></i><span
					class="app-menu__label">Dashboard</span></a></li>
			<li class="treeview"><a class="app-menu__item" href="#"
				data-toggle="treeview"><i class="app-menu__icon fa fa-laptop"></i><span
					class="app-menu__label">UI Elements</span><i
					class="treeview-indicator fa fa-angle-right"></i></a>
				<ul class="treeview-menu">
					<li><a class="treeview-item" href="bootstrap-components.jsp"><i
							class="icon fa fa-circle-o"></i> Bootstrap Elements</a></li>
					<li><a class="treeview-item"
						href="https://fontawesome.com/v4.7.0/icons/" target="_blank"
						rel="noopener"><i class="icon fa fa-circle-o"></i> Font Icons</a></li>
					<li><a class="treeview-item" href="ui-cards.jsp"><i
							class="icon fa fa-circle-o"></i> Cards</a></li>
					<li><a class="treeview-item" href="widgets.jsp"><i
							class="icon fa fa-circle-o"></i> Widgets</a></li>
				</ul></li>
			<li><a class="app-menu__item" href="charts.jsp"><i
					class="app-menu__icon fa fa-pie-chart"></i><span
					class="app-menu__label">Charts</span></a></li>
			<li class="treeview"><a class="app-menu__item" href="#"
				data-toggle="treeview"><i class="app-menu__icon fa fa-edit"></i><span
					class="app-menu__label">Forms</span><i
					class="treeview-indicator fa fa-angle-right"></i></a>
				<ul class="treeview-menu">
					<li><a class="treeview-item" href="form-components.jsp"><i
							class="icon fa fa-circle-o"></i> Form Components</a></li>
					<li><a class="treeview-item" href="form-custom.jsp"><i
							class="icon fa fa-circle-o"></i> Custom Components</a></li>
					<li><a class="treeview-item" href="form-samples.jsp"><i
							class="icon fa fa-circle-o"></i> Form Samples</a></li>
					<li><a class="treeview-item" href="form-notifications.jsp"><i
							class="icon fa fa-circle-o"></i> Form Notifications</a></li>
				</ul></li>
			<li class="treeview is-expanded"><a class="app-menu__item"
				href="#" data-toggle="treeview"><i
					class="app-menu__icon fa fa-th-list"></i><span
					class="app-menu__label">Tables</span><i
					class="treeview-indicator fa fa-angle-right"></i></a>
				<ul class="treeview-menu">
					<li><a class="treeview-item" href="table-basic.jsp"><i
							class="icon fa fa-circle-o"></i> Basic Tables</a></li>
					<li><a class="treeview-item active" href="table-data-table"><i
							class="icon fa fa-circle-o"></i> Data Tables</a></li>
				</ul></li>
			<li class="treeview"><a class="app-menu__item" href="#"
				data-toggle="treeview"><i class="app-menu__icon fa fa-file-text"></i><span
					class="app-menu__label">Pages</span><i
					class="treeview-indicator fa fa-angle-right"></i></a>
				<ul class="treeview-menu">
					<li><a class="treeview-item" href="blank-page.jsp"><i
							class="icon fa fa-circle-o"></i> Blank Page</a></li>
					<li><a class="treeview-item" href="page-login.jsp"><i
							class="icon fa fa-circle-o"></i> Login Page</a></li>
					<li><a class="treeview-item" href="page-lockscreen.jsp"><i
							class="icon fa fa-circle-o"></i> Lockscreen Page</a></li>
					<li><a class="treeview-item" href="page-user.jsp"><i
							class="icon fa fa-circle-o"></i> User Page</a></li>
					<li><a class="treeview-item" href="page-invoice.jsp"><i
							class="icon fa fa-circle-o"></i> Invoice Page</a></li>
					<li><a class="treeview-item" href="page-calendar.jsp"><i
							class="icon fa fa-circle-o"></i> Calendar Page</a></li>
					<li><a class="treeview-item" href="page-mailbox.jsp"><i
							class="icon fa fa-circle-o"></i> Mailbox</a></li>
					<li><a class="treeview-item" href="page-error.jsp"><i
							class="icon fa fa-circle-o"></i> Error Page</a></li>
				</ul></li>
		</ul>
	</aside>
	<main class="app-content">
	<div class="app-title">
		<div>
			<h1>
				<i class="fa fa-th-list"></i> Data Table
			</h1>
			<p>Table to display analytical data effectively</p>
		</div>
		<ul class="app-breadcrumb breadcrumb side">
			<li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
			<li class="breadcrumb-item">Tables</li>
			<li class="breadcrumb-item active"><a href="#">Data Table</a></li>
		</ul>
	</div>
	<!-- <div class="container text-center">
		<button type="button" class="btn btn-primary" data-toggle="modal"
			data-target="#myModal">新增图书</button>
		
	</div> -->

	<div class="row">
		<div class="col-md-12">
			<div class="tile">
				<div class="tile-body">
					<div id="toolbar" class="btn-group">
						<button class="btn btn-primary" data-target="#myModal"
							data-toggle="modal" id="btn_add">新增图书</button>
						<button class="btn btn-danger" id="btn_delete">删除图书</button>
					</div>
					<span id="returnMessage" class="glyphicon"> </span>
					<table id="mytable"></table>
				</div>
			</div>
		</div>
	</div>
	<div class="modal-body">
	<form action="#" method="post" id="myBook" onsubmit="return false">
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title" id="myModalLabel" align="left">新增图书</h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label for="txt_departmentname">图书名称</label> <input type="text"
								name="name" class="form-control" id="name" placeholder="图书名称">
						</div>
						<div class="form-group">
							<label for="txt_parentdepartment">作者</label> <input type="text"
								name="author" class="form-control" id="author" placeholder="作者">
						</div>
						<div class="form-group">
							<label for="txt_statu">出版社</label> <input type="text"
								name="publish" class="form-control" id="publish"
								placeholder="出版社">
						</div>
						<div class="form-group">
							<label for="txt_statu">出版日期</label> <input type="date"
								name="publishdate" class="form-control" id="publishdate"
								placeholder="出版日期" />
						</div>
						<div class="form-group">
							<label for="txt_statu">页数</label> <input type="text" name="page"
								class="form-control" id="page" placeholder="页数">
						</div>
						<div class="form-group">
							<label for="txt_statu">价格</label> <input type="text" name="price"
								class="form-control" id="price" placeholder="价格">
						</div>
						<div class="form-group">
							<label for="txt_statu">内容</label> <input type="text"
								name="content" class="form-control" id="content"
								placeholder="内容">
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">
							<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭
						</button>
						<button type="submit" id="submitBtn" class="btn btn-primary"
							data-dismiss="modal">
							<span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>保存
						</button>
					</div>
				</div>
			</div>
		</div>
	</form>
	</div>
	<div class="modal-body">
	<form action="#" method="post" id="updateBook" onsubmit="return false">
		<div class="modal fade" id="myUpdateModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title" id="myModalLabel" align="left">修改图书</h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<input type="hidden" id="u_id" name="id" /> <label
								for="txt_departmentname">图书名称</label> <input type="text"
								name="name"  class="form-control" id="u_name"
								placeholder="图书名称" />
						</div>
						<div class="form-group">
							<label for="txt_parentdepartment">作者</label> <input type="text"
								name="author" class="form-control"
								id="u_author" placeholder="作者" />
						</div>
						<div class="form-group">
							<label for="txt_statu">出版社</label> <input type="text"
								name="publish"  class="form-control"
								id="u_publish" placeholder="出版社" />
						</div>
						<div class="form-group">
							<label for="txt_statu">出版日期</label> <input type="date"
								name="publishdate"
								class="form-control" id="u_publishdate" placeholder="出版日期" />
						</div>
						<div class="form-group">
							<label for="txt_statu">页数</label> <input type="text" name="page"
								class="form-control"  id="u_page"
								placeholder="页数" />
						</div>
						<div class="form-group">
							<label for="txt_statu">价格</label> <input type="text" name="price"
								class="form-control" id="u_price"
								placeholder="价格" />
						</div>
						<div class="form-group">
							<label for="txt_statu">内容</label> <input type="text"
								name="content"  class="form-control"
								id="u_content" placeholder="内容" />
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">
							<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭
						</button>
						<button type="submit" id="submitUpdate" class="btn btn-primary"
							onclick="update()" data-dismiss="modal">
							<span class="glyphicon glyphicon-floppy-disk"></span>修改
						</button>
					</div>
				</div>
			</div>
		</div>
	</form>
	</div>
	</main>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/app-jquery-dialog.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/main.js"></script>
	<script src="js/plugins/pace.min.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap3-dialog/1.35.0/js/bootstrap-dialog.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/locale/bootstrap-table-zh-CN.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/js/bootstrapValidator.min.js"></script>
	<script type="text/javascript">
		var $table;
		var selectionIds ;
		var selectionIds = [];	//保存选中ids
		$(function() {
			//初始化表格
			//<input type="checkbox" name="btSelectAll">
			$table=$("#mytable")
					.bootstrapTable(
							{
								columns : [
										{	
											field: 'select',
											title: '全选',
											checkbox : true
										},
										{
											field : 'id',
											title : '编号',
											align: "center",//水平
										},
										{
											field : 'name',
											title : '图书名称',
											align: "center",//水平
										},
										{
											field : 'author',
											title : '作者',
											align: "center",//水平
										},
										{
											field : 'publishdate',
											title : '出版日期',
											align: "center",//水平
										},
										{
											field : 'price',
											title : '价格',
											align: "center",//水平
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
												var e = '<a href="javascript:void(0)" mce_href="#" onclick="edit(\''
														+ row.id
														+ '\')" data-target="#myUpdateModal" data-toggle="modal">编辑</a> ';
												var d = '<a href="javascript:void(0)" mce_href="#" onclick="del(\''
														+ row.id
														+ '\')">删除</a> ';
												return e + d;
											}
										} ],
								url : 'show',
								//请求方式
								method : 'post',
								toolbar : '#toolbar',
								//是否显示行间隔色
								striped : true,
								//是否启用点击选中行
								//每一行的唯一标识，一般为主键列
								uniqueId : "id",
								//刷新按钮
								showRefresh : true,
								//打开搜索框
								search : true,
								//按回车键后进行搜索
								searchOnEnterKey : true,
								//开启分页功能
								pagination : true,
								//第一次加载第一页
								pageNumber : 1,
								//每页显示条数
								pageSize : 5,
								pageList : [ 5, 8, 16, 32 ], //可供选择的每页的行数（*）
				                detailView:true,
				                detailFormatter:function(index, row) {
				                	var htm;
				                    htm = '图书名：'+row.name+'<br/>'+'作者：'+row.author+'<br/>'+'价格:'+row.price+'<br/>'+'页数：'+row.page+'<br/>'+'出版社：'+row.publish+'<br/>'+'简介：'+row.content;
				                    return htm;//返回视图
				                },
				                clickToSelect:true,
				                maintainSelected:true,
				                responseHandler:responseHandler, //在渲染页面数据之前执行的方法，此配置很重要!!!!!!
				                //singleSelect:true,
				                rowStyle:function (row, index) {
				                    return {
				                        css: {"color":"#009688"}
				                    };
				                },
								sidePagination : 'server', //分页方式：默认客户端分页，修改为服务端分页
							});
			//选中事件操作数组---分页多选
			union= function(array,ids){
				$.each(ids, function (i, id) {
					if($.inArray(id,array)==-1){
						array[array.length] = id;
						}
					});
				//alert(array);
				return array;
			};
			//取消选中事件操作数组
		    var difference = function(array,ids){
			    	$.each(ids, function (i, id) {
			    		 var index = $.inArray(id,array);
			    		 if(index!=-1){
			    			 array.splice(index, 1);
			    		 }
			    	 });
			    	return array;
			};
			var _ = {"union":union,"difference":difference};
			//绑定选中事件、取消事件、全部选中、全部取消
				$table.on('check.bs.table check-all.bs.table uncheck.bs.table uncheck-all.bs.table', function (e, rows) {
			        var ids = $.map(!$.isArray(rows) ? [rows] : rows, function (row) {
			                 return row.id;
			        });
		             func = $.inArray(e.type, ['check', 'check-all']) > -1 ? 'union' : 'difference';
		             selectionIds = _[func](selectionIds, ids);	
		     	});
			});
		var form = $('#myBook');
		var formupdate = $('#updateBook');
		$(function() {
			form.bootstrapValidator({
				message : 'This value is not valid',
				feedbackIcons : {
					valid : 'glyphicon glyphicon-ok',
					invalid : 'glyphicon glyphicon-remove',
					validating : 'glyphicon glyphicon-refresh'
				},
				fields : {
					name : {
						message : '图书名称验证失败',
						validators : {
							notEmpty : {
								message : '图书名称不能为空'
							},
							stringLength : {
								min : 2,
								max : 18,
								message : '图书名称必须在2到18位之间'
							},
							//ajax验证。server result:{"valid",true or false} 向服务发送当前input name值，获得一个json数据。例表示正确：{"valid",true}
							remote : {
								url : 'checkNameExists.do',//验证地址
								message: '图书名已经存在,请更换',//提示消息
								delay :  2000,//每输入一个字符，就发ajax请求，服务器压力还是太大，设置2秒发送一次ajax（默认输入一个字符，提交一次，服务器压力太大）
								type: 'POST'//请求方式
								
							}
						}
					},
					author : {
						message : '作者验证失败',
						validators : {
							notEmpty : {
								message : '作者不能为空'
							}
						}
					},
					publish : {
						message : '出版社验证失败',
						validators : {
							notEmpty : {
								message : '出版社不能为空'
							}
						}
					},
					publishdate : {
						message : '出版日期验证失败',
						validators : {
							notEmpty : {
								message : '出版日期不能为空'
							},
							date :{
								format : "yyyy/MM/dd",
								message : "出版日期格式不正确"
							}
						}
					},
					page : {
						message : '页数验证失败',
						validators : {
							notEmpty : {
								message : '页数不能为空'
							},
							numeric : {
								message : "必须是数值"
							}
						}
					},
					price : {
						message : '价格验证失败',
						validators : {
							notEmpty : {
								message : '价格不能为空'
							},
							numeric : {
								message : "必须是数值"
							}
						}
					}
				}
			});
			formupdate.bootstrapValidator({
				message : 'This value is not valid',
				feedbackIcons : {
					valid : 'glyphicon glyphicon-ok',
					invalid : 'glyphicon glyphicon-remove',
					validating : 'glyphicon glyphicon-refresh'
				},
				fields : {
					name : {
						message : '图书名称验证失败',
						validators : {
							notEmpty : {
								message : '图书名称不能为空'
							},
							stringLength : {
								min : 2,
								max : 18,
								message : '图书名称必须在2到18位之间'
							},
							//ajax验证。server result:{"valid",true or false} 向服务发送当前input name值，获得一个json数据。例表示正确：{"valid",true}
							remote : {
								url : 'checkNameExists.do',//验证地址
								message: '图书名已经存在,请更换',//提示消息
								delay :  2000,//每输入一个字符，就发ajax请求，服务器压力还是太大，设置2秒发送一次ajax（默认输入一个字符，提交一次，服务器压力太大）
								type: 'POST'//请求方式
								
							}
						}
					},
					author : {
						message : '作者验证失败',
						validators : {
							notEmpty : {
								message : '作者不能为空'
							}
						}
					},
					publish : {
						message : '出版社验证失败',
						validators : {
							notEmpty : {
								message : '出版社不能为空'
							}
						}
					},
					publishdate : {
						message : '出版日期验证失败',
						validators : {
							notEmpty : {
								message : '出版日期不能为空'
							},
							date :{
								format : "yyyy/MM/dd",
								message : "出版日期格式不正确"
							}
						}
					},
					page : {
						message : '页数验证失败',
						validators : {
							notEmpty : {
								message : '页数不能为空'
							},
							numeric : {
								message : "必须是数值"
							}
						}
					},
					price : {
						message : '价格验证失败',
						validators : {
							notEmpty : {
								message : '价格不能为空'
							},
							numeric : {
								message : "必须是数值"
							}
						}
					}
				}
			});
		});
		$("#submitBtn").click(function() {
			//进行表单验证
	        var bv = form.data('bootstrapValidator');
	        bv.validate();
	        if(bv.isValid()){
	        	console.log(form.serialize());
	            //发送ajax请求
	            $.ajax({
	            	url : '${pageContext.request.contextPath}/add.do',
	            	async : false,//同步，会阻塞操作
	                type : 'GET',//PUT DELETE POST
	                data : form.serialize(),
	                complete: function (msg) {
	                    console.log('完成了');
	                },
	                success: function (result) {
	                	window.location.reload();
	                	alert("新增成功!");
	                }, error: function () {
	                    $("#returnMessage").hide().html('<label class="label label-danger">新增失败!</label>').show(3000);
	                }
	            })
	        }
		});
		
		$("#submitUpdate").click(function() {
			//进行表单验证
	        var bv = formupdate.data('bootstrapValidator');
	        bv.validate();
	        if(bv.isValid()){
	        	console.log(form.serialize());
	            //发送ajax请求
	            $.ajax({
	            	url : '${pageContext.request.contextPath}/add.do',
	            	async : false,//同步，会阻塞操作
	                type : 'GET',//PUT DELETE POST
	                data : form.serialize(),
	                complete: function (msg) {
	                    console.log('完成了');
	                },
	                success: function (result) {
	                	window.location.reload();
	                	alert("修改成功!");
	                }, error: function () {
	                    $("#returnMessage").hide().html('<label class="label label-danger">修改失败!</label>').show(3000);
	                }
	            })
	        }
		});
		function update() {
			var $param = $("#updateBook").serialize();
			$.ajax({
				data : $param,
				dataType : "text",
				async : false,
				cache : false,
				url : "${pageContext.request.contextPath}/update.do",
				success : function(rec) {
					if (rec == "1") {
						alert("修改图书成功");
						document.getElementById("updateBook").reset();
						$("#mytable").bootstrapTable('refresh');
					}
				}
			});
		}

		function del(id) {
			if (confirm("确认要删除选择的数据吗？")) {
				var param = {
					"id" : id
				};
				$.ajax({
					data : param,//无论是字符串还是Json字符串都可以传递到后台
					dataType : "json",
					type : "post",
					url : "${pageContext.request.contextPath}/delete.do",
					success : function(rec) {
						if (rec == "1") {
							alert("删除成功");
							$("#mytable").bootstrapTable('refresh');
						}
					}
				});
			}
		}
		function edit(id) {
			var param = {
				"id" : id
			};
			$.ajax({
				data : param,//无论是字符串还是Json字符串都可以传递到后台
				dataType : "json",
				type : "post",
				//async : false,
				//cache : false,
				url : "${pageContext.request.contextPath}/findBook.do",
			}).done(function(data){
				console.log(data);
				//alert(data.name);
				//var book=eval(data);//change the JSON string to javascript object
				//console.log(book);
				$("#u_id").val(data.id);
				$("#u_name").val(data.name);
				$("#u_author").val(data.author);
				$("#u_price").val(data.price);
				$("#u_publish").val(data.publish);
				$("#u_page").val(data.page);
				$("#u_publishdate").val(data.publishdate);
				$("#u_content").val(data.content);
			});
		}
		$("#btn_delete").click(function() {
			var rows = $("#mytable").bootstrapTable('getSelections');
			//alert(rows);
		    if (rows.length== 0) {
		        alert("请先选择要删除的记录!");
		        return;
		    }
		    var ids = '';
		    for (var i = 0; i < rows.length; i++) {
		        ids += rows[i]['id'] + ",";
		    }
		    ids = ids.substring(0, ids.length - 1);
		    //alert(selectionIds);
		    //alert(ids);
		    deleteBook(selectionIds);
		});
		//删除
		function deleteBook(ids) {
		    var msg = "您真的确定要删除吗？";
		    if (confirm(msg) == true) {
		        $.ajax({
		            url: "deletelist.do",
		            type: "post",
		            data: {
		                ids: ids
		            },
		            success: function (data) {
		            	if (data == "ok") {
							alert("批量删除成功");
							$("#mytable").bootstrapTable('refresh');
						}
		            }
		        });
		    }
		}
		//表格分页之前处理多选框数据
		function responseHandler(res) {
		      $.each(res.rows, function (i, row) {
		          row.checkStatus = $.inArray(row.id, selectionIds) != -1;	//判断当前行的数据id是否存在与选中的数组，存在则将多选框状态变为true
		      });
		      //alert(res);
		      return res;
		}	
	</script>
	<!-- Google analytics script-->
	<script type="text/javascript">
		if (document.location.hostname == 'pratikborsadiya.in') {
			(function(i, s, o, g, r, a, m) {
				i['GoogleAnalyticsObject'] = r;
				i[r] = i[r] || function() {
					(i[r].q = i[r].q || []).push(arguments)
				}, i[r].l = 1 * new Date();
				a = s.createElement(o), m = s.getElementsByTagName(o)[0];
				a.async = 1;
				a.src = g;
				m.parentNode.insertBefore(a, m)
			})(window, document, 'script',
					'//www.google-analytics.com/analytics.js', 'ga');
			ga('create', 'UA-72504830-1', 'auto');
			ga('send', 'pageview');
		}
	</script>
</body>
</html>