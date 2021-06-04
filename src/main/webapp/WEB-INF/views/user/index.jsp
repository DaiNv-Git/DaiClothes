<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>
<body>
	<!-- Hero Section Begin -->
	<section class="hero-section">
		<c:forEach var="item" items="${slides}" varStatus="loop">
			<div class="hero-items owl-carousel">
				<div class="single-hero-items set-bg"
					data-setbg="<c:url value="/assets/user/img/slides/${item.image}"></c:url>">
					<div class="container">
						<div class="row">
							<div class="col-lg-5">
								<span>Fashi</span>
								<h1>${item.title}</h1>
								<p>${item.content}</p>
								<a href="#" class="primary-btn">Mua ngay</a>
							</div>
						</div>
						<div class="off-card">
							<h2>
								  Giảm giá <span>50%</span>
							</h2>
						</div>
					</div>
				</div>
		</c:forEach>

	</section>
	<!-- Hero Section End -->
	<!-- Banner Section Begin -->
	<div class="banner-section spad">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-4">
					<div class="single-banner">
						<img src="<c:url value="/assets/user/img/banner-1.jpg"></c:url>"
							alt="">
						<div class="inner-text">
							<h4>Đồ nam</h4>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="single-banner">
						<img src="<c:url value="/assets/user/img/banner-2.jpg"></c:url>"
							alt="">
						<div class="inner-text">
							<h4>Đồ nữ</h4>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="single-banner">
						<img src="<c:url value="/assets/user/img/banner-3.jpg"></c:url>"
							alt="">
						<div class="inner-text">
							<h4>Đồ đôi</h4>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Banner Section End -->

	<!-- Women Banner Section Begin -->
	<section class="women-banner spad">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-3">
					<div class="product-large set-bg"
						data-setbg="<c:url value="/assets/user/img/products/women-large.jpg"></c:url>">
						<h2>Đồ nữ</h2>
						<a href="#">Xem thêm</a>
					</div>
				</div>
				<div class="col-lg-8 offset-lg-1">
					<div class="filter-control">
						<ul>
							<li class="active">Quần áo</li>
							<li>Váy</li>
							<li>Giày</li>
							<li>Phụ kiện</li>
						</ul>
					</div>
					<div class="product-slider owl-carousel">
						<c:forEach var="item" items="${nuproduct}" varStatus="loops">
							<div class="product-item">
								<div class="pi-pic">
									<img
										src="<c:url value="/assets/user/img/products/${item.image}" ></c:url>"
										height="300px" alt="">
									<div class="sale">Giảm giá</div>
									<div class="icon">
										<i class="icon_heart_alt"></i>
									</div>
									<ul>
										<li class="w-icon active"><a href="#"><i
												class="icon_bag_alt"></i></a></li>
										<li class="quick-view"><a
											href="<c:url value="/detail-Product/${item.id}"></c:url>">+
												Chi tiết</a></li>
										<li class="w-icon"><a href="#"><i
												class="fa fa-random"></i></a></li>
									</ul>
								</div>
								<div class="pi-text">
									<a href="#">
										<h5>${item.name}</h5>
									</a>
									<div class="product-price">
										<fmt:formatNumber> ${item.price}</fmt:formatNumber>
										VND <span><fmt:formatNumber>${item.oldPrice}</fmt:formatNumber></span>
									</div>
								</div>
							</div>

						</c:forEach>
					</div>

				</div>
			</div>

		</div>
	</section>
	<!-- Women Banner Section End -->

	<!-- Deal Of The Week Section Begin-->
	<section class="deal-of-week set-bg spad"
		data-setbg="<c:url value="/assets/user/img/time-bg.jpg"></c:url>">
		<div class="container">
			<div class="col-lg-6 text-center">
				<div class="section-title">
					<h2>Deal Sale | Siêu đại giảm giá</h2>
					<p>Còn chần chờ gì nữa mà không mau sắm ngay cho bản thân một
						chiếc túi xách thể thao chính hãng với mức giá không tưởng!</p>
					<div class="product-price">
						$1.00 <span>/ Túi thể thao</span>
					</div>
				</div>
				<div class="countdown-timer" id="countdown">
					<div class="cd-item">
						<span>56</span>
						<p>Ngày</p>
					</div>
					<div class="cd-item">
						<span>12</span>
						<p>Giờ</p>
					</div>
					<div class="cd-item">
						<span>40</span>
						<p>Phút</p>
					</div>
					<div class="cd-item">
						<span>52</span>
						<p>Giây</p>
					</div>
				</div>
				<a href="#" class="primary-btn">Mua ngay</a>
			</div>
		</div>
	</section>
	<!-- Deal Of The Week Section End -->

	<!-- Man Banner Section Begin -->
	<section class="man-banner spad">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-8">
					<div class="filter-control">
						<ul>
							<li class="active">Quàn áo</li>
							<li>Túi|Balo</li>
							<li>Giày</li>
							<li>Phụ kiện</li>
						</ul>
					</div>
					<div class="product-slider owl-carousel">
						<c:forEach var="item" items="${namproduct}">
							<div class="product-item">
								<div class="pi-pic">
									<img
										src='<c:url value="assets/user/img/products/${item.image}"></c:url>'
										alt="" height="250px">
									<div class="sale">Giảm giá</div>
									<div class="icon">
										<i class="icon_heart_alt"></i>
									</div>
									<ul>
										<li class="w-icon active"><a href="#"><i
												class="icon_bag_alt"></i></a></li>
										<li class="quick-view"><a
											href="<c:url value="/detail-Product/${item.id}"></c:url>">+
												Chi tiết</a></li>
										<li class="w-icon"><a href="#"><i
												class="fa fa-random"></i></a></li>
									</ul>
								</div>
								<div class="pi-text">
									<a href="#">
										<h5>${item.name}</h5>
									</a>
									<div class="product-price">
										<fmt:formatNumber> ${item.price}</fmt:formatNumber>
										<span><fmt:formatNumber>${item.oldPrice}</fmt:formatNumber></span>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
				<div class="col-lg-3 offset-lg-1">
					<div class="product-large set-bg m-large"
						data-setbg='<c:url value="assets/user/img/products/man-large.jpg"></c:url>'>
						<h2>Đồ nam</h2>
						<a href="#">Xem thêm</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Man Banner Section End -->

	<!-- Instagram Section Begin -->
	<div class="instagram-photo">
		<c:forEach items="${inta}" var="item">
			<div class="insta-item set-bg"
				data-setbg="<c:url value="/assets/user/img/${item.image}"></c:url>">
				<div class="inside-text">
					<i class="ti-instagram"></i>
				</div>
			</div>
		</c:forEach>
	</div>
	<!-- Instagram Section End -->

	<!-- Latest Blog Section Begin -->
	<section class="latest-blog spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title">
						<h2>Tin tức nổi bật</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4 col-md-6">
					<div class="single-latest-blog">
						<img src="<c:url value="assets/user/img/latest-1.jpg"></c:url>"
							alt="">
						<div class="latest-text">
							<div class="tag-list">
								<div class="tag-item">
									<i class="fa fa-calendar-o"></i> Tháng 4, 2021
								</div>
								<div class="tag-item">
									<i class="fa fa-comment-o"></i> 5
								</div>
							</div>
							<a href="#">
								<h4>Thời trang đường phố dành cho nữ vào mùa hè</h4>
							</a>
							<p>Sau đây là những mẫu thời trang sẽ nổi lên vào những tháng
								ngày hè năm nay...</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="single-latest-blog">
						<img src='<c:url value="assets/user/img/latest-2.jpg"></c:url>'
							alt="">
						<div class="latest-text">
							<div class="tag-list">
								<div class="tag-item">
									<i class="fa fa-calendar-o"></i> Tháng 1,2021
								</div>
								<div class="tag-item">
									<i class="fa fa-comment-o"></i> 5
								</div>
							</div>
							<a href="#">
								<h4>Set đồ mùa đông phù hợp với bản thân</h4>
							</a>
							<p>Trời mùa đông rất lạnh vì vậy chúng tôi sẽ cho bạn một số
								mẫu set đồ...</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="single-latest-blog">
						<img src="<c:url value="/assets/user/img/latest-3.jpg"></c:url>"
							alt="">
						<div class="latest-text">
							<div class="tag-list">
								<div class="tag-item">
									<i class="fa fa-calendar-o"></i> May 12,2020
								</div>
								<div class="tag-item">
									<i class="fa fa-comment-o"></i> 5
								</div>
							</div>
							<a href="#">
								<h4>Đồ thể thao mùa đông dành cho những ai thích leo núi</h4>
							</a>
							<p>Trên núi cao vào những ngày mùa đông rất khắc nhiệt, vì để
								bảo vệ cho sức khỏe...</p>
						</div>
					</div>
				</div>
			</div>
			<div class="benefit-items">
				<div class="row">
					<div class="col-lg-4">
						<div class="single-benefit">
							<div class="sb-icon">
								<img src="<c:url value="/assets/user/img/icon-1.png"></c:url>"
									alt="">
							</div>
							<div class="sb-text">
								<h6>Miễn phí giao hàng</h6>
								<p>Tất cả các đơn hàng</p>
							</div>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="single-benefit">
							<div class="sb-icon">
								<img src="<c:url value="/assets/user/img/icon-2.png"></c:url>"
									alt="">
							</div>
							<div class="sb-text">
								<h6>Giao hàng đúng hạn</h6>
								<p>90% đơn hàng đúng hạn</p>
							</div>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="single-benefit">
							<div class="sb-icon">
								<img src="<c:url value="/assets/user/img/icon-1.png"></c:url>"
									alt="">
							</div>
							<div class="sb-text">
								<h6>Thanh toán an toàn</h6>
								<p>100% thanh toán an toàn</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Latest Blog Section End -->

	<!-- Partner Logo Section Begin -->
	<div class="partner-logo">
		<div class="container">
			<div class="logo-carousel owl-carousel">
				<div class="logo-item">
					<div class="tablecell-inner">
						<img
							src="<c:url value="/assets/user/img/logo-carousel/logo-1.png"></c:url>"
							alt="">
					</div>
				</div>
				<div class="logo-item">
					<div class="tablecell-inner">
						<img
							src="<c:url value="/assets/user/img/logo-carousel/logo-2.png"></c:url>"
							alt="">
					</div>
				</div>
				<div class="logo-item">
					<div class="tablecell-inner">
						<img
							src="<c:url value="/assets/user/img/logo-carousel/logo-3.png"></c:url>"
							alt="">
					</div>
				</div>
				<div class="logo-item">
					<div class="tablecell-inner">
						<img
							src="<c:url value="/assets/user/img/logo-carousel/logo-4.png"></c:url>"
							alt="">
					</div>
				</div>
				<div class="logo-item">
					<div class="tablecell-inner">
						<img
							src="<c:url value="/assets/user/img/logo-carousel/logo-5.png"></c:url>"
							alt="">
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
