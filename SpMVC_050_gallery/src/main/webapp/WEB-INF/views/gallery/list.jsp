<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath }" />
<style>
section {
	margin: 20px;
	border-top: 1px solid blue;
	border-bottom: 1px solid blue;
	width: 80%;
	border-radius: 20px;
}

section:hover {
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
	margin: 30px;
	display: flex;
}

div.ga_box div:first-of-type {
	flex: 1;
}

div.ga_box div:last-of-type {
	flex: 3;
}

th {
	font-weight: bold;
	font-size: 20pt;
}

th:last-of-type {
	width: 80%;
}
</style>
<table>
	<tr>
		<th>대표 이미지</th>
		<th>내용</th>
	</tr>
</table>
<c:forEach items="${GALLERYS }" var="GALLERY">

	<section>
		<div class="ga_box">
			<div>
				<img src="${rootPath }/files/${GALLERY.g_image}" width="200px">
			</div>
			<div>
				<h3>
					<a href="${rootPath }/gallery/detail/${GALLERY.g_seq}">
						${GALLERY.g_subject } </a>
				</h3>
				<p>${GALLERY.g_content }</p>
			</div>
		</div>
	</section>
</c:forEach>

