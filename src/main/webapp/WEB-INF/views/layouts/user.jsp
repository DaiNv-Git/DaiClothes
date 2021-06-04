<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <decorator:head />
<!DOCTYPE html>
<html lang="zxx">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Fashi Template">
    <meta name="keywords" content="Fashi, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Fashi</title>
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    <!-- Css Styles -->
    <link rel="stylesheet" href="<c:url value="/assets/user/css/bootstrap.min.css"></c:url>" type="text/css">
    <link rel="stylesheet" href="<c:url value="/assets/user/css/font-awesome.min.css"></c:url>" type="text/css">
    <link rel="stylesheet" href="<c:url value="/assets/user/css/themify-icons.css"></c:url>"type="text/css">
    <link rel="stylesheet" href="<c:url value="/assets/user/css/elegant-icons.css"></c:url>" type="text/css">
    <link rel="stylesheet" href="<c:url value="/assets/user/css/owl.carousel.min.css"></c:url>" type="text/css">
    <link rel="stylesheet" href="<c:url value="/assets/user/css/nice-select.css"></c:url>" type="text/css">
    <link rel="stylesheet" href="<c:url value="/assets/user/css/jquery-ui.min.css"></c:url>" type="text/css">
    <link rel="stylesheet" href="<c:url value="/assets/user/css/slicknav.min.css"></c:url>" type="text/css">
    <link rel="stylesheet" href="<c:url value="/assets/user/css/style.css"></c:url>" type="text/css">
</head>
<body>
   		<%@include file="/WEB-INF/views/layouts/user/header.jsp"%>	
   		<decorator:body></decorator:body>
		<%@include file="/WEB-INF/views/layouts/user/footer.jsp"%>
    <script src="<c:url value="/assets/user/js/jquery-3.3.1.min.js"></c:url>"></script>
    <script src="<c:url value="/assets/user/js/bootstrap.min.js"></c:url>"></script>
    <script src="<c:url value="/assets/user/js/jquery-ui.min.js"></c:url>"></script>
    <script src="<c:url value="/assets/user/js/jquery.countdown.min.js"></c:url>"></script>
    <script src="<c:url value="/assets/user/js/jquery.nice-select.min.js"></c:url>"></script>
    <script src="<c:url value="/assets/user/js/jquery.zoom.min.js"></c:url>"></script>
    <script src="<c:url value="/assets/user/js/jquery.dd.min.js"></c:url>"></script>
    <script src="<c:url value="/assets/user/js/jquery.slicknav.js"></c:url>"></script>
    <script src="<c:url value="/assets/user/js/owl.carousel.min.js"></c:url>"></script>
    <script src="<c:url value="/assets/user/js/main.js"></c:url>"></script>
</body>
</html>
