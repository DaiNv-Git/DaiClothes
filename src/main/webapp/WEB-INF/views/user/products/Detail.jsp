<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<!DOCTYPE html>
<html lang="a">
<head></head>
<body> 
    <div class="breacrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text product-more">
                        <a href="/trangchu"><i class="fa fa-home"></i> Trang chủ</a>
                        <a href="./shop.html">Tất cả</a>
                        <span>Chi tiết</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <section class="product-shop spad page-details">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="filter-widget">
                        <h4 class="fw-title">Phân loại</h4>
                        <ul class="filter-catagories">
                            <li><a href="#">Đồ nam</a></li>
                            
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
                                <label class="cs-blue" for="cs-blue">Lam</label>
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
                <div class="col-lg-9">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="product-pic-zoom">
                                <img class="product-big-img" src="<c:url value="/assets/user/img/products/${detail.image}" ></c:url>"  alt="">
                                <div class="zoom-icon">
                                    <i class="fa fa-search-plus"></i>
                                </div>
                            </div>
                            <div class="product-thumbs">
                                <div class="product-thumbs-track ps-slider owl-carousel">
                                    <div class="pt active" data-imgbigurl="<c:url value="/assets/user/img/products/${detail.image}" ></c:url>"><img
                                            src="<c:url value="/assets/user/img/products/${detail.image}" ></c:url>" alt=""></div>
                                    <div class="pt" data-imgbigurl="<c:url value="/assets/user/img/products/${detail.image}" ></c:url>"><img
                                           src="<c:url value="/assets/user/img/products/${detail.image}" ></c:url>"  alt=""></div>
                                    <div class="pt" data-imgbigurl="<c:url value="/assets/user/img/products/${detail.image}" ></c:url>"><img
                                         src="<c:url value="/assets/user/img/products/${detail.image}" ></c:url>" alt=""></div>
                                    <div class="pt" data-imgbigurl="<c:url value="/assets/user/img/products/${detail.image}" ></c:url>"><img
                                           src="<c:url value="/assets/user/img/products/${detail.image}" ></c:url>"  alt=""></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="product-details">
                                <div class="pd-title">
                                    <h3>${detail.name}</h3>
                                    <a href="#" class="heart-icon"><i class="icon_heart_alt"></i></a>
                                </div>
                                <div class="pd-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-o"></i>
                                    <span>(5)</span>
                                </div>
                                <div class="pd-desc">
                                    <p>${detail.description}</p>
                                    <h4><fmt:formatNumber> ${detail.price}</fmt:formatNumber> <span><fmt:formatNumber>${detail.oldPrice}</fmt:formatNumber></span></h4>
                                </div>
                                <div class="pd-color">
                                    <h6>Màu sắc</h6>
                                    <div class="pd-color-choose">
                                        <div class="cc-item">
                                            ${detail.namecolor}
                                        </div>
                                     
                                    </div>
                                </div>
                                <div class="pd-size-choose">
                                    <div class="sc-item">
                                        <input type="radio" id="sm-size">
                                        <label for="sm-size">${detail.size}</label>
                                    </div>
                                   
                                </div>
                                <div class="quantity">
                                    <div class="pro-qty">
                                        <input type="text" min="0" max="8" value="0">
                                    </div>
                                    <a href="<c:url value="/AddCart/${detail.id_product}"></c:url>" class="primary-btn pd-cart">Thêm vào giỏ</a>
                                </div>
                                <ul class="pd-tags">
                                    <li><span>Phân loại</span>:...</li>
                                    <li><span>Từ khóa</span>: ${detail.title}</li>
                                </ul>
                                <div class="pd-share">
                                    <div class="pd-social">
                                        <a href="#"><i class="ti-facebook"></i></a>
                                        <a href="#"><i class="ti-twitter-alt"></i></a>
                                        <a href="#"><i class="ti-linkedin"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="product-tab">
                        <div class="tab-item">
                            <ul class="nav" role="tablist">
                                <li>
                                    <a class="active" data-toggle="tab" href="#tab-1" role="tab">Mô tả</a>
                                </li>
                                <li>
                                    <a data-toggle="tab" href="#tab-2" role="tab">Thông tin sản phẩm</a>
                                </li>
                                <li>
                                    <a data-toggle="tab" href="#tab-3" role="tab">Bình luận - đánh giá (02)</a>
                                </li>
                            </ul>
                        </div>
                        <div class="tab-item-content">
                            <div class="tab-content">
                                <div class="tab-pane fade-in active" id="tab-1" role="tabpanel">
                                    <div class="product-content">
                                        <div class="row">
                                            <div class="col-lg-7">
                                                <h5>Giới thiệu</h5>
                                                <p>${detail.description} </p>
                                              
                                            </div>
                                            <div class="col-lg-5">
                                                <img src="img/product-single/tab-desc.jpg" alt="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="tab-2" role="tabpanel">
                                    <div class="specification-table">
                                        <table>
                                            <tr>
                                                <td class="p-catagory">Đánh giá</td>
                                                <td>
                                                    <div class="pd-rating">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o"></i>
                                                        <span>(5)</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="p-catagory">Giá</td>
                                                <td>
                                                    <div class="p-price"><fmt:formatNumber>${detail.price}</fmt:formatNumber></div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="p-catagory">Chất liệu</td>
                                                <td>
                                                    <div class="cart-add">Tơ tằm</div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="p-catagory">Thương hiệu</td>
                                                <td>
                                                    <div class="p-stock">Polo</div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="p-catagory">Kích thước</td>
                                                <td>
                                                    <div class="p-size">${detail.size}</div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="p-catagory">Màu sắc</td>
                                                <td>${detail.namecolor}</td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="tab-3" role="tabpanel">
                                    <div class="customer-review-option">
                                        <h4>Bình luận - đánh giá</h4>
                                        <div class="comment-option">
                                            <div class="co-item">
                                                <div class="avatar-pic">
                                                    <img src="img/product-single/avatar-1.png" alt="">
                                                </div>
                                                <div class="avatar-text">
                                                    <div class="at-rating">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o"></i>
                                                    </div>
                                                    <h5>Brandon Kelley <span>27 Aug 2019</span></h5>
                                                    <div class="at-reply">Nice !</div>
                                                </div>
                                            </div>
                                            <div class="co-item">
                                                <div class="avatar-pic">
                                                    <img src="img/product-single/avatar-2.png" alt="">
                                                </div>
                                                <div class="avatar-text">
                                                    <div class="at-rating">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o"></i>
                                                    </div>
                                                    <h5>Roy Banks <span>27 Aug 2019</span></h5>
                                                    <div class="at-reply">Nice !</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="personal-rating">
                                            <h6>Your Ratind</h6>
                                            <div class="rating">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star-o"></i>
                                            </div>
                                        </div>
                                        <div class="leave-comment">
                                            <h4>Viết bình luận</h4>
                                            <form action="#" class="comment-form">
                                                <div class="row">
                                                    <div class="col-lg-6">
                                                        <input type="text" placeholder="Tên">
                                                    </div>
                                                    <div class="col-lg-6">
                                                        <input type="text" placeholder="Email">
                                                    </div>
                                                    <div class="col-lg-12">
                                                        <textarea placeholder="Nội dung"></textarea>
                                                        <button type="submit" class="site-btn">Gửi bình luận</button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product Shop Section End -->

    <!-- Related Products Section End -->
    <div class="related-products spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Các sản phẩm khác</h2>
                    </div>
                </div>
            </div>
            <div class="row">
            <c:set var="countList" value="${detailByCId.size() }" />
            <c:if test="${detailByCId.size() > 4  }">
            	
            <c:set var="countList" value="4" />
            </c:if>
             <c:forEach var="item"  items="${detailByCId}"  begin="0" varStatus="loop" end="${countList}">
           
                <div class="col-lg-3 col-sm-6">
                    <div class="product-item">
                        <div class="pi-pic">
                            <img src="<c:url value="/assets/user/img/products/${item.image}"></c:url>" width="100px" height="300px" alt="">
                            <div class="sale">Giảm giá</div>
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
    </div>
    <!-- Related Products Section End -->

    
</body>

</html>