<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h1>안녕</h1>
		<table border="1">
		<tr>
			<td>도서번호</td>
			<td>도서명</td>
			<td>출판사</td>
			<td>전화번호</td>
		</tr>
		<c:forEach var="item" items="${list}">
		<tr>
			<td>${item.bookid}</td>
			<td>${item.bookname}</td>
			<td>${item.publisher}</td>
			<td>${item.price}</td>
		</tr>
		</c:forEach>
		
		<c:if test="${list.size() < 0} ">
			<tr>
				<td colspan="5">등록 된 도서가 없습니다.</td>
			</tr>
		</c:if>
		</table>
</body>
</html>