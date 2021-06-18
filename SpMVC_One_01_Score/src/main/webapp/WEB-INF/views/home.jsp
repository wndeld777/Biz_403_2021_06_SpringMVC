<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<style>
* {
	box-sizing: border-box;
	padding: 0;
	margin: 0;
}

h1 {
	background-color: green;
	color: white;
	text-shadow: 1px 1px 1px black;
	text-align: center;
	padding: 2rem;
}

nav {
	background-color: blue;
	color:white;
}
nav ul{
	display:flex;
	list-style: none;
}
nav li{
	padding:5px 12px;
	transition:1s;
}
nav li:first-child{
	margin-left:15px;
}
nav li:last-child{
	margin-left:auto;
	margin-right:30px;
}
nav li:hover{
	background-color:#999;
	cursor:pointer;
}
table{
	border-collapse: collapse;
	border-spacing : 0;
	width:90%;
	margin:0 auto;
}
table th, td{
	border-top : 1px solid #aaa;
	border-bottom: 1px solid #aaa;
	padding : 5px 8px;
}
table tr:first-child{
	background-color:gray;
	
}
table td{
	padding-left : 20px;
}


table tr:hover{
	background-color:#aaa;
	cursor:pointer;
}
</style>
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