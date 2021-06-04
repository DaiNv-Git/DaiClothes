<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="preloder">
		<div class="loader"></div>
	</div>
	<!-- Header Section Begin -->
	<header class="header-section">
		<div class="header-top">
			<div class="container">
				<div class="ht-left">
					<div class="mail-service">
						<i class=" fa fa-envelope"></i> superweb@gmail.com
					</div>
					<div class="phone-service">
						<i class=" fa fa-phone"></i> +84 99.999.999
					</div>
				</div>
				<div class="ht-right">
					<a href='<c:url value="/dang-nhap"></c:url>' class="login-panel"><i class="fa fa-user"></i>Đăng
						nhập</a>
					<div class="top-social">
						<a href="#"><i class="ti-facebook"></i></a> <a href="#"><i
							class="ti-twitter-alt"></i></a> <a href="#"><i
							class="ti-linkedin"></i></a> <a href="#"><i class="ti-pinterest"></i></a>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="inner-header">
				<div class="row">
					<div class="col-lg-2 col-md-2">
						<div class="logo">
							<a href='<c:url value="/trang-chu"></c:url>'> <img
								src="<c:url value="/assets/user/img/logo.png"></c:url>" alt="">
							</a>
						</div>
					</div>
					<div class="col-lg-7 col-md-7">
						<div class="advanced-search">
							<button type="button" class="category-btn">Danh mục</button>
							<div class="input-group">
								<input type="text" placeholder="Nhập từ khóa">
								<button type="button">
									<i class="ti-search"></i>
								</button>
							</div>
						</div>
					</div>
					<div class="col-lg-3 text-right col-md-3">
						<ul class="nav-right">
							<li class="heart-icon"><a href="#"> <i
									class="icon_heart_alt"></i> <span>1</span>
							</a></li>
							<li class="cart-icon"><a href='<c:url value="/gio-hang"></c:url>'> <i
									class="icon_bag_alt"></i> <span><fmt:formatNumber>${TotalQuantyCart}</fmt:formatNumber> </span>
							</a>
								<div class="cart-hover">
									<div class="select-items">
										<table>
											<tbody>
												<c:forEach var="item" items="${Cart}">
												<tr>
													<td class="si-pic"><img
														src="<c:url value="/assets/user/img/products/${item.value.product.image}"></c:url>"
														alt="" width="100px"></td>
													<td class="si-text">
														<div class="product-selected">
															<p><fmt:formatNumber>${item.value.product.price}</fmt:formatNumber></p>
															<h6>${item.value.product.name}</h6>
														</div>
													</td>
												</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
									<div class="select-total">
										<span>Tổng giá:</span>
										<h5><fmt:formatNumber>${TotalPrice}</fmt:formatNumber></h5>
									</div>
									<div class="select-button">
										<a href="/gio-hang" class="primary-btn view-card">Giỏ hàng</a> <a
											href="#" class="primary-btn checkout-btn">Thanh toán</a>
									</div>
								</div></li>
							<li class="cart-price"><fmt:formatNumber>${TotalPrice}</fmt:formatNumber></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="nav-item">
			<div class="container">
				<div class="nav-depart">
					<div class="depart-btn">
						<i class="ti-menu"></i> <span>Danh mục</span>
						<ul class="depart-hover">
							
							<c:forEach var="item" items="${category}">
								<li><a href='<c:url value="/sanpham/${item.CId}"></c:url>'>${item.CName}</a></li>
							</c:forEach>
						</ul>
					</div>
				</div>
				<nav class="nav-menu mobile-menu">
					<ul>
					<c:forEach var="o" items="${menus}">
						<li class="active"><a href="./index.html">${o.name}</a></li>
						</c:forEach>
				</nav>
				<div id="mobile-menu-wrap"></div>
			</div>
		</div>
	</header>
</body>
</html>