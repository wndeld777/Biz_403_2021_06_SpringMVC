<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<link href="${rootPath }/static/css/main_layout.css?ver=2021-06-23-001" rel="stylesheet" />
<script src="${rootPath }/static/js/main_nav.js?ver=2021-06-18-001"></script>
<head>
<meta charset="UTF-8">
<title>나의 홈페이지</title>
</head>
<body>
	<h1>대한 고교 성적처리 2021 v1</h1>
	<nav id="main_nav">
		<ul>
			<li>Home</li>
			<li>학생정보</li>
			<li>성적알람표</li>
			<li>로그인</li>
		</ul>
	</nav>
	<section>
		<table>
			<tr>
				<th>학번</th>
				<th>이름</th>
				<th>전공</th>
				<th>학년</th>
				<th>응시과목</th>
				<th>총점</th>
				<th>평균</th>
			</tr>
			<tr>
				<th>20210001</th>
				<th>홍길동</th>
				<th>컴퓨터공학</th>
				<th>2</th>
				<th>3</th>
				<th>275</th>
				<th>91.6</th>
			</tr>
			<tr>
				<th>20210002</th>
				<th>성춘향</th>
				<th>전자공학</th>
				<th>3</th>
				<th>2</th>
				<th>155</th>
				<th>77.5</th>
			</tr>
		</table>
	</section>
</body>
</html>