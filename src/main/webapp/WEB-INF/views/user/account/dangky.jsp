<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>

<html>
<head>
<meta charset="UTF-8">
<title>Đăng Ký Tài khoản</title>
</head>
<body>

	<h3> Login</h3>	
	<hr class="soft"/>
	
	<div class="row">
		<div class="span4">
			<div class="well">
	
			<h5>CREATE YOUR ACCOUNT</h5><br/>
			Enter your e-mail address to create an account.<br/><br/><br/>
			<form:form action="dang-ky" method="POST" modelAttribute="user">  

			  <div class="control-group">
				<label class="control-label" for="inputEmail">E-mail </label>
				<div class="controls">
				 <form:input type="text"  path="user" />  
				</div>
				<label class="control-label" for="inputEmail">Mật Khẩu</label>
				<div class="controls">
				 <form:input type="password" path="password" />  
				</div>
				<label class="control-label" for="inputEmail">Họ và tên</label>
				<div class="controls">
				  <form:input type="text" path="display_name" />    
				</div>
				<label class="control-label" for="inputEmail">Địa chỉ</label>
				<div class="controls">
				   <form:input type="text"  path="address" />  
				</div>
			  </div>
			  <div class="controls">
			  <button type="submit" class="btn block">Create Your Account</button>
			  </div>
			  <div class="control-group">
				<div class="controls">
				  <button type="submit" class="defaultBtn">Đăng Ký Thành Viên</button> 
				</div>
			  </div>
			</form:form>
		</div>
		</div>
		<div class="span1"> &nbsp;</div>
		<div class="span4">
			<div class="well">
			<h5>Đăng Nhập: </h5>
			<form:form action="dang-nhap" method="POST" modelAttribute="user">  
			  <div class="control-group">
				<label class="control-label" for="inputEmail">Tài Khoản</label>
				<div class="controls">
				 <form:input type="text" path="user" />  
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label" for="inputPassword">Password</label>
				<div class="controls">
				 <form:input type="password" path="password" />  
				</div>
			  </div>
			  <div class="control-group">
				<div class="controls">
				 <button  type="submit" class="defaultBtn">Dang Nhap</a></button> 
				</div>
			  </div>
			</form:form>
		</div>
		</div>
	</div>	
	
</div>
</div>
</body>
</html>