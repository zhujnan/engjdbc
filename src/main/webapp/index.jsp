<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
	<title>首页 - 统一开发平台 - UI库</title>
		<meta name="description" content="This is page-header (.page-header &gt; h1)" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
		<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
		<link rel="stylesheet" href="assets/css/ace.min.css" id="main-ace-style" />
		<!--[if lte IE 9]>
			<link rel="stylesheet" href="assets/css/ace-part2.min.css" />
		<![endif]-->
		<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
		<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
</head>
<body class="no-skin">
     <!--[if !IE]> -->
			<script type="text/javascript">
				window.jQuery || document.write("<script src='assets/js/jquery.min.js'>"+"<"+"/script>");
			</script>
		<div id="navbar" class="navbar navbar-default">
							<div class="navbar-container" id="navbar-container">
								<button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler">
									<span class="sr-only">Toggle sidebar</span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
								</button>
								<!-- /section:basics/sidebar.mobile.toggle -->
								<div class="navbar-header pull-left">
									<!-- #section:basics/navbar.layout.brand -->
									<a href="index.html" class="navbar-brand">
										<small>
											<img src="assets/avatars/logo.png" alt="" />
										</small>
									</a>
								</div>
								<!-- /section:basics/navbar.dropdown -->
							</div><!-- /.navbar-container -->
		</div>
		<div class="main-container" id="main-container">
			<div id="sidebar" class="sidebar responsive">
					<ul class="nav nav-list">
											<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-list"></i>
							<span class="menu-text"> 表格 </span>
							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
							<li class="">
								<a href="main.do" target="fname">
									<i class="menu-icon fa fa-caret-right"></i>
									所有人员页面
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="#">
									<i class="menu-icon fa fa-caret-right"></i>
									jqGrid插件表格
								</a>

								<b class="arrow"></b>
							</li>
						</ul>
					</li>
					</ul>
			</div>
			<div class="main-content">
			       		<div class="breadcrumbs" id="breadcrumbs">
									<ul class="breadcrumb">
										<li>
											<i class="ace-icon fa fa-home home-icon"></i>
											<a href="index.html">UI库首页</a>
										</li>
									</ul><!-- /.breadcrumb -->
									<div class="nav-search" id="nav-search">
										<form class="form-search">
											<span class="input-icon">
												<input type="text"  placeholder="请输入关键字 ..."  class="nav-search-input" id="nav-search-input" autocomplete="off" />
												<i class="ace-icon fa fa-search nav-search-icon"></i>
											</span>
										</form>
									</div><!-- /.nav-search -->
				       	</div>
						<div class="page-content">
								<div class="page-content-area" >
								 <iframe  name="fname"   frameborder="0"  
								 				style="margin-left:0px ;" width=90% height="540px"   scrolling="no"
												 src="welcome.jsp">
								 </iframe>
							</div>
			</div>
			<div class="footer">
					<div class="footer-inner">
					<!-- #section:basics/footer -->
					<div class="footer-content">
						<span class="bigger-120">
							 统一开发平台-UI库 &copy; 2014
						</span>
					</div>
				</div>
			</div>
			</div>
			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
			</a>
		</div>
		<script type="text/javascript">
				window.jQuery || document.write("<script src='assets/js/jquery.min.js'>"+"<"+"/script>");
			</script>
     <script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="assets/js/bootstrap.min.js"></script>
		<!--[if lte IE 8]>
		  <script src="assets/js/excanvas.min.js"></script>
		<![endif]-->
		<script src="assets/js/jquery-ui.custom.min.js"></script>
		<script src="assets/js/jquery.ui.touch-punch.min.js"></script>
		<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>
     
</body>
</html>