<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
   <%@taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>简单通用表格 - 表格 - 统一开发平台 - UI库</title>
		<meta name="description" content="Restyling jQuery UI Widgets and Elements" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
		<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
		<link rel="stylesheet" href="assets/css/ace-fonts.css" />
		<link rel="stylesheet" href="assets/css/ace.min.css" id="main-ace-style" />
		<!--[if lte IE 9]>
			<link rel="stylesheet" href="assets/css/ace-part2.min.css" />
		<![endif]-->
		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->
		<script src="assets/js/ace-extra.min.js"></script>
		<!--[if lte IE 8]>
		<script src="assets/js/html5shiv.min.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
		<style type="text/css">
			.CSSearchTbl{ border:1px #008CD4 solid;}
			.CSSearchTbl thead{}
			.CSSearchTbl thead tr{}
			.CSSearchTbl thead tr th{  text-align:left; padding-left:10px;}
			.CSSearchTbl tbody{}
			.CSSearchTbl tbody tr{}
			.CSSearchTbl tbody tr td{  padding: 10px;}
			.CSSearchTbl tbody tr td.right{ text-align: left;}
			.CSSearchTbl tbody tr td.left{ text-align: right;}
			.table-responsive{ display: none;}
		</style>
<script type="text/javascript">
	function del(id){
		if(confirm("确定要删除吗?")){
				window.location.href="del.do?id="+id
			}}
	function udp(id){
		window.location.href="udp.do?id="+id
		}
</script>
</head>
<%-- <%Object obj = session.getAttribute("user");if(obj==null){response.sendRedirect("login.jsp");}%> --%>
<body class="no-skin">
		<!-- <form id="form"> -->
		<div class="main-container" id="main-container">
			<table class="table table-striped table-bordered table-hover"  id="tb">
			<thead>
						<tr>
							<!-- 	<td>id</td>
								<td>name</td>
								<td>age</td>
								<td>日期</td>
								<td>操作</td> -->
								<th class="center">
														<label class="position-relative">
															<input type="checkbox" class="ace" />
															<span class="lbl"></span>
														</label>
									</th>
													<th>部门编号</th>
													<th>部门名称</th>
													<th>部门位置</th>
													<th class="hidden-480">入职日期</th>
													<th class="hidden-480">操作</th>
						</tr>
				</thead>
				<tbody>
				<c:forEach var="person"  items="${persons}">
							<tr>
									<td><input type="checkbox" class="ace" />
											<label class="position-relative">
															<input type="checkbox" class="ace" />
															<span class="lbl"></span>
											</label>
									</td>
									<td>	${person.deptno}</td>
									<td>	${person.dname}</td>
									<td>	${person.loc}</td>
									 <td>  
									 <%-- 	<fmt:formatDate value="${person.date }"  type="date" pattern="yyyy-MM-dd"/> --%>
									 </td>
								<td>			
										<div>
														<button onclick="del(${person.deptno})" class="btn btn-xs btn-danger">
																	<i class="ace-icon fa fa-trash-o bigger-120"></i>
														</button>
														
														<button  onclick="udp(${person.deptno})"  class="btn btn-xs btn-info">
																		<i class="ace-icon fa fa-pencil bigger-120"></i>
														</button>
													
										</div>
								</td>
							</tr>
				</c:forEach>
				</tbody>
		</table>
		</div>
			<script type="text/javascript">
			window.jQuery || document.write("<script src='assets/js/jquery.min.js'>"+"<"+"/script>");
		</script>

		<!-- <![endif]-->

		<!--[if IE]>
		<script type="text/javascript">
		 window.jQuery || document.write("<script src='assets/js/jquery1x.min.js'>"+"<"+"/script>");
		</script>
		<![endif]-->
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="assets/js/bootstrap.min.js"></script>

		<script src="assets/js/jquery.dataTables.min.js"></script>
		<script src="assets/js/jquery.dataTables.bootstrap.js"></script>

		<!-- ace scripts -->
		<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>
		<script type="text/javascript">
			jQuery(function($) {
				$(document).on('click', 'th input:checkbox' , function(){
					var that = this;
					$(this).closest('table').find('tr > td:first-child input:checkbox')
					.each(function(){
						this.checked = that.checked;
						$(this).closest('tr').toggleClass('selected');
					});
				});
			})

		</script>
</body>
</html>