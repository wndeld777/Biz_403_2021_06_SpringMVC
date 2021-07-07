<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
form {
	width:80vw;
	margin: 50px auto;
	border: 1px solid green;
}

form div {
	width: 80%;
	margin:0 auto;
}
label, input,textarea {
	margin:3px;
	padding:8px;

}

label {
	display:inline-block;
	width:30%;
	text-align: right;
	
}

input,textarea {
	display: inline-block;
	width: 60%;
	padding:10px;

}

div#btn {
	display: flex;
	width:50%;
	margin-left:70%;
}

div {
	display: flex;
}
</style>
<c:set var="rootPath" value="${pageContext.request.contextPath }" />
<form method="POST" enctype="multipart/form-data">


	<div>
		<label>작성자</label> <input name="g_writer" value="${CMD.g_writer }">
	</div>
	<div>
		<label>작성일자</label> <input name="g_date" value="${CMD.g_date }">
	</div>
	<div>
		<label>작성시각</label> <input name="g_time" value="${CMD.g_time }">
	</div>
	<div>
		<label>제목</label> <input name="g_subject">
	</div>
	<div>
		<label></label>
		<textarea name="g_content"></textarea>
	</div>

	<div>
		<label>대표이미지</label> <input type="file" name="one_file">
	</div>
	<div>
		<label>갤러리</label> <input type="file" multiple="multiple"
			name="m_file">
	</div>
<div id="btn">
	<a href="${rootPath }/gallery"><button>리스트로</button></a>
	<button>전송</button>
</div>
</form>
