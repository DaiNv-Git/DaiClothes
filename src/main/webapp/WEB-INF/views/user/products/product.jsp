<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
<style type="text/css">
.center {
	text-align: center;
}
.pagination {
	display: flex;
	justify-content: center;
}

.pagination a {
	color: black;
	float: left;
	padding: 8px 16px;
	text-decoration: none;
	transition: background-color .3s;
	border: 1px solid #ddd;
	margin: 0 4px;
}

.pagination a.active {
	background-color: #4CAF50;
	color: white;
	border: 1px solid #4CAF50;
}

.pagination a:hover:not(.active) {
	background-color: #ddd;
}
</style>
    <meta charset="UTF-8">
    <meta name="description" content="Fashi Template">
    <meta name="keywords" content="Fashi, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Fashi</title>
  </head>
  <body>
    <section class="product-shop spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-8 order-2 order-lg-1 produts-sidebar-filter">
                    <div class="filter-widget">
                        <h4 class="fw-title">Phân loại</h4>
                        <ul class="filter-catagories">
                            <li><a href="#">Đồ nam</a></li>
                            <li><a href="#">Đồ nữ</a></li>
                            <li><a href="#">Đồ đôi</a></li>
                        </ul>
                    </div>
                    <div class="filter-widget">
                        <h4 class="fw-title">Thương hiệu</h4>
                        <div class="fw-brand-check">
                            <div class="bc-item">
                                <label for="bc-calvin">
                                    Calvin Klein
                                    <input type="checkbox" id="bc-calvin">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                            <div class="bc-item">
                                <label for="bc-diesel">
                                    Diesel
                                    <input type="checkbox" id="bc-diesel">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                            <div class="bc-item">
                                <label for="bc-polo">
                                    Polo
                                    <input type="checkbox" id="bc-polo">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                            <div class="bc-item">
                                <label for="bc-tommy">
                                    Tommy Hilfiger
                                    <input type="checkbox" id="bc-tommy">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="filter-widget">
                        <h4 class="fw-title">Giá</h4>
                        <div class="filter-range-wrap">
                            <div class="range-slider">
                                <div class="price-input">
                                    <input type="text" id="minamount">
                                    <input type="text" id="maxamount">
                                </div>
                            </div>
                            <div class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"
                                data-min="0" data-max="1000">
                                <div class="ui-slider-range ui-corner-all ui-widget-header"></div>
                                <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default"></span>
                                <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default"></span>
                            </div>
                        </div>
                        <a href="#" class="filter-btn">Chọn</a>
                    </div>
                    <div class="filter-widget">
                        <h4 class="fw-title">Màu sắc</h4>
                        <div class="fw-color-choose">
                            <div class="cs-item">
                                <input type="radio" id="cs-black">
                                <label class="cs-black" for="cs-black">Đen</label>
                            </div>
                            <div class="cs-item">
                                <input type="radio" id="cs-violet">
                                <label class="cs-violet" for="cs-violet">Tím</label>
                            </div>
                            <div class="cs-item">
                                <input type="radio" id="cs-blue">
                                <label class="cs-blue" for="cs-blue">lam</label>
                            </div>
                            <div class="cs-item">
                                <input type="radio" id="cs-yellow">
                                <label class="cs-yellow" for="cs-yellow">Vàng</label>
                            </div>
                            <div class="cs-item">
                                <input type="radio" id="cs-red">
                                <label class="cs-red" for="cs-red">Đỏ</label>
                            </div>
                            <div class="cs-item">
                                <input type="radio" id="cs-green">
                                <label class="cs-green" for="cs-green">Lục</label>
                            </div>
                        </div>
                    </div>
                    <div class="filter-widget">
                        <h4 class="fw-title">Kích thước</h4>
                        <div class="fw-size-choose">
                            <div class="sc-item">
                                <input type="radio" id="s-size">
                                <label for="s-size">s</label>
                            </div>
                            <div class="sc-item">
                                <input type="radio" id="m-size">
                                <label for="m-size">m</label>
                            </div>
                            <div class="sc-item">
                                <input type="radio" id="l-size">
                                <label for="l-size">l</label>
                            </div>
                            <div class="sc-item">
                                <input type="radio" id="xs-size">
                                <label for="xs-size">xs</label>
                            </div>
                        </div>
                    </div>
                    <div class="filter-widget">
                        <h4 class="fw-title">Từ khóa</h4>
                        <div class="fw-tags">
                            <a href="#">Váy </a>
                            <a href="#">Giày</a>
                            <a href="#">Quần âu</a>
                            <a href="#">Áo sơ mi</a>
                            <a href="#">Phụ kiện nam</a>
                            <a href="#">Giày cao gót</a>
                            <a href="#">Áo khoác</a>
                        </div>
                    </div>
                </div>
                <!--***-->
                <div class="col-lg-9 order-1 order-lg-2">
                    <div class="product-show-option">
                        <div class="row">
                            <div class="col-lg-7 col-md-7">
                                <div class="select-option">
                                    <select class="sorting">
                                        <option value="active">Mặc định</option>
                                        <option value="active">Mới nhất</option>
                                        <option value="active">Phổ biến</option>
                                        <option value="active">Giá tăng dần</option>
                                        <option value="active">Giá giảm dần</option>
                                    </select>
                                    <select class="p-show">
                                        <option value="">Hiển thị:</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-5 col-md-5 text-right">
                                <p>01 - 09 trong số 36 sản phẩm</p>
                            </div>
                        </div>
                    </div>
                    <div class="product-list">
                        <div class="row">
                        <c:forEach var="item" items="${productPaginates}">
                            <div class="col-lg-4 col-sm-6">
                                <div class="product-item">
                                    <div class="pi-pic">
                                        <img
										src="<c:url value="/assets/user/img/products/${item.image}" ></c:url>"
										height="300px" alt="">
                                        <div class="sale pp-sale">Sale</div>
                                        <div class="icon">
                                            <i class="icon_heart_alt"></i>
                                        </div>
                                        <ul>
                                            <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                            <li class="quick-view"><a href="<c:url value="/detail-Product/${item.id_product}"></c:url>">+ Chi tiết</a></li>
                                            <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
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
                            </div>
                            </c:forEach>
                        </div>
                    </div>
                  <div class="center">
						<div class="pagination">
						  <c:forEach var="item" begin="1" varStatus="loop" end="${paginateInfor.totalPage}">
						  <c:if test="${(loop.index) == paginateInfor.currentPage}">
						   	 <a href="<c:url value="/sanpham/${idCategory}/${loop.index}"></c:url>"class="active">${loop.index}</a>
						   	 </c:if>
						   	  <c:if test="${(loop.index) != paginateInfor.currentPage}">
						   	 <a href="<c:url value="/sanpham/${ idCategory }/${ loop.index }"></c:url>">${loop.index}</a>
						   	 </c:if>
									</c:forEach>
						</div>
					</div>
                </div>
            </div>
        </div>
       
    </section>
    </body>
    </html>