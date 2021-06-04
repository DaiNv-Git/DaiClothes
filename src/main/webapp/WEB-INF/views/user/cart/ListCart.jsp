<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>
    <%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<html>
<head>
    <link rel="stylesheet" href="<c:url value="/assets/user/css/CartCSS.css"></c:url>" type="text/css">	
<script src="js/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"><script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>

<h2 class="text-center">giỏ hàng</h2>
<div class="container"> 
 <table id="cart" class="table table-hover table-condensed"> 
  <thead> 
   <tr> 
    <th style="width:40%">Tên sản phẩm</th> 
    <th style="width:10%">Giá</th> 
    <th style="width:8%">Số lượng</th> 
     <th style="width:8%">Màu</th> 
    <th style="width:22%" class="text-center">Thành tiền</th> 
    <th style="width:20%"> </th> 
   </tr> 
  </thead> 
    <c:forEach var="item" items="${Cart}">
     <tr> 
   <td data-th="Product"> 
    <div class="row"> 
     <div class="col-sm-2 hidden-xs"><img src="<c:url value="/assets/user/img/products/${item.value.product.image}" ></c:url>" alt="Sản phẩm 1" class="img-responsive" width="100">
     </div> 
     <div class="col-sm-10"> 
      <h4 class="nomargin">${item.value.product.name}</h4> 
      <p>${item.value.product.title} , ${item.key}</p> 
     </div> 
    </div>
    </td> 
   <td data-th="Price"><fmt:formatNumber>${item.value.product.price}</fmt:formatNumber></td> 
   <td data-th="Quantity"><input class="form-control text-center" id="quanty-cart-${item.key}" min="0" max="10" value="${item.value.quanty}" type="number">
   </td> 
   <td><span class="shopBtn" style="background-color:">   ${item.value.product.namecolor}</span></td>
   <td data-th="Subtotal" class="text-center"><fmt:formatNumber>${ item.value.totalPrice}</fmt:formatNumber> đ</td> 
   <td class="actions" data-th="">
    <button  data-id="${item.key}" class="btn btn-mini btn-danger editcart "  onclick="editcart()" type="button">
	<span class="fa fa-edit"></span></button>
      <a href="<c:url value="/Delete/${item.key}" />" class="btn btn-mini btn-danger" type="button" >
	<span class="fa fa-trash-o"></span></a>
   </td> 
  </tr> 
    </c:forEach>
  </tbody><tfoot> 
   <tr class="visible-xs"> 
    <td class="text-center"><strong>Tổng 200.000 đ</strong>
    </td> 
   </tr> 
   <tr> 
    <td><a href="trang-chu" class="btn btn-warning"><i class="fa fa-angle-left"></i> Tiếp tục mua hàng</a>
    </td> 
    <td colspan="2" class="hidden-xs"> </td> 
    <td class="hidden-xs text-center"><strong>Tổng tiền : <fmt:formatNumber>${TotalPrice}</fmt:formatNumber></strong>
    </td> 
    <td><a href="http://hocwebgiare.com/" class="btn btn-success btn-block">Thanh toán <i class="fa fa-angle-right"></i></a>
    </td> 
   </tr> 
  </tfoot> 
 </table>
</div>
<script type="text/javascript">
	function editcart() {
			alert("dai");
	}
</script>
