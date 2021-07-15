<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath }" />
<style>
section.list_box {
	margin: 20px;
	border-top: 1px solid blue;
	border-bottom: 1px solid blue;
	width: 80vw;
	border-radius: 20px;
}

section.list_box:hover {
	background: #ddd;
	transition:0.5s;
}

a:hover {
	cursor: pointer;
}
table{
	margin:30px;
}
div.ga_box {
	width:80%;
	margin: 30px;
	display: flex;
}

div.ga_box div:first-of-type {
	flex: 1;
}

div.ga_box div:last-of-type {
	flex: 3;
}
div.image_box{
width:40%;
margin:0 auto;
}
th {
	font-weight: bold;
	font-size: 20pt;
}

th:last-of-type {
	width: 80%;
}
div.subject_box{
	width:60%;	
	margin-left:50px;
}
</style>
<%@ include file="/WEB-INF/views/include/include_gallery_search.jspf" %>
<table>
	<tr>
		<th>대표 이미지</th>
		<th>내용</th>
	</tr>
</table>
<c:forEach items="${GALLERYS }" var="GALLERY">

	<section class="list_box">
		<div class="ga_box">
			<div class="image_box">
			<c:if test="${empty GALLERY.g_image}">
				<img src="${rootPath}/files/noImage.png" width="100px">
			</c:if>
			<c:if test="${not empty GALLERY.g_image}">
				<img src="${rootPath }/files/${GALLERY.g_image}" width="200px">
			</c:if>
			</div>
			<div class="subject_box">
				<h3>
					<a href="${rootPath }/gallery/detail2/${GALLERY.g_seq}">
						${GALLERY.g_subject }(${GALLERY.g_seq})
					</a>
				</h3>
				<p>${GALLERY.g_content }</p>
			</div>
		</div>
	</section>
</c:forEach>
<%@ include file="/WEB-INF/views/include/include_page_nav.jspf" %>

