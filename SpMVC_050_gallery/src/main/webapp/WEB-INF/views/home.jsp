<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 홈페이지</title>
</head>
<style>
* {
	margin: 0;
	padding: 0;
}
button{
	background:white;
	border-radius:10px;
	margin:20px;
	padding:20px;
	
}
button#image{
	margin-left:75%;
}
button:hover{
	background:#ddd;
	transition:1s;
	cursor:pointer;
}



h1 {
	text-align: center;
	background: yellow;
	padding: 30px 30px;
}

</style>
<body>
	<h1>내 갤러리</h1>
	
	<c:choose>
			<c:when test="${BODY eq 'GA-INPUT' }">
				<%@ include file="/WEB-INF/views/gallery/input.jsp"%>
			</c:when>
			<c:when test="${BODY eq 'GA-LIST' }">
				<%@ include file="/WEB-INF/views/gallery/list.jsp"%>
				<a href="${rootPath }/gallery/input"><button id=image>이미지 등록</button></a>
			</c:when>
			<c:when test="${BODY eq 'GA-DETAIL' }">
				<%@ include file="/WEB-INF/views/gallery/detail.jsp"%>
				
			</c:when>
			
		<c:otherwise>
			<a href="${rootPath }/gallery/input">이미지 등록</a>
		</c:otherwise>
	</c:choose>



	<c:forEach items="${FILES}" var="FILE">
		<a href="${rootPath }/files/${FILE }" target="_NEW"> <img
			src="${rootPath}/files/${FILE}" width="100px" height="100px" />
		</a>
	</c:forEach>

</body>
</html>