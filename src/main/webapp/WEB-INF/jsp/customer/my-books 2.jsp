<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<style><%@include file="/WEB-INF/css/layout.css"%></style>
<meta charset="UTF-8">
<title>My Books</title>
</head>
<body>
<jsp:include page="customer-menu.jsp"/>
<h2 align="center">Books in use</h2>
<c:if test="${books.size() gt 0}">
<table id="tablestyle" border="1" cellpadding="1" cellspacing="1" align="center">
	<th></th>
	<th>ISBN</th>
	<th>Title</th>
	<th>Author</th>
	<th>Reserved Date</th>
	<th>Reserved Until</th>
	<th>Return Date</th>	
	
	<c:forEach items="${books}" var="book">
	<tr>
		<td>${book.isbn}</td>
		<td>${book.title}</td>
		<td>${book.author}</td>
		<td>${book.bookingStartDate}</td>
		<td>${book.bookingEndDate}</td>
		<td>${book.returnDate}</td>
	</tr>
	</c:forEach>
</table>
</c:if>
</body>
</html>