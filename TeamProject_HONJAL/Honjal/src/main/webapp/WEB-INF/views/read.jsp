<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />

<div class="main_box read_box">

	<div class="ud_box">
		<button class="btn_update">수정</button>
		<button class="btn_delete">삭제</button>
	</div>

	<section class="content_box">
		<h3 class="content_title">${CONTENT.content_title}</h3>
		<div class="content_good_box">
			<img src="${rootPath}/static/images/good.png" />
			<p>${CONTENT.content_good}</p>
		</div>
		<div class="content_w_box">
			<p class="content_date">${CONTENT.content_date}
				${CONTENT.content_time}</p>
			<div class="content_member">
				<p>${CONTENT.member_nname}</p>
				<img src="${rootPath}/static/images/user.png" class="member_img" />
			</div>
		</div>
		<div class="content_text">
			<p>${CONTENT.content_text}</p>
		</div>
		<div class="content_bottom">
			<img src="${rootPath}/static/images/good.png" class="good" />
			<button>스크랩</button>
		</div>
	</section>



	<section class="comment_box">
		<p>댓글 2</p>
		<hr />
		<c:forEach items="${COMMENT}" var="COMMENT">

			<table id="tb_comment_list">
				<tr>
					<td width="5%" class="cm_img"><img
						src="${rootPath}/static/images/user.png" /></td>
					<td width="10%" class="cm_name">${COMMENT.comment_writer}</td>
					<td width="70%" class="cm_cm">${COMMENT.comment_text}<span>${COMMENT.comment_time}</span>
					</td>
					<td width="7%" class="cm_btn">
						<button class="update">수정</button>
					</td>
					<td width="7%" class="cm_btn1">
						<button class="delete">삭제</button>
					</td>
				</tr>
			</table>
		</c:forEach>
	</section>

	<form id="comment_form" method="POST">
		<section class="comment_box">
			<table id="tb_comment">
				<tr>
					<td width="5%" class="cm_img"><img
						src="${rootPath}/static/images/user.png" /></td>
					<td width="10%" class="cm_name">
					<c:if test="${not empty MEMBER}">
          			${MEMBER.member_nname}
            		</c:if></td>
            		<td><input type="hidden" name="comment_num" id="comment_num" value="${COMMENT.comment_num}"/></td>
					<td width="70%"><textarea name="comment_text" placeholder="댓글 내용을 입력하세요"></textarea>
					</td>
					<td width="15%" class="cm_btn">
						<button class="insert">등록</button>
					</td>
				</tr>
			</table>
		</section>
	</form>


</div>

<script>

let update_button = document.querySelector(".btn_update")
let delete_button = document.querySelector(".btn_delete")
let rootPath = "${rootPath}/board"

update_button.addEventListener("click",(e)=>{
	location.href = rootPath + "/update?content_num=${CONTENT.content_num}"
})
/*
update.addEventListener("click",(e)=>{
	
	location.href = rootPath + "/comment/update"
	document.querySelector("textarea[name='comment_text']").focus()
})
*/


delete_button.addEventListener("click",(e)=>{
	let menu = "${CONTENT.board_code}".substr(0,3).toLowerCase()
	/*
	if(menu == 'NOT') {
		rootPath += '/not'
	} else if(menu == 'INF') {
		rootPath += '/inf'
	} else if(menu == 'TIP') {
		rootPath += '/tip'
	} else if(menu == 'INT') {
		rootPath += '/interior'
	} else if(menu == 'TAL') {
		rootPath += '/tal'
	} else if(menu == 'REV') {
		rootPath += '/rev'
	} else if(menu == 'QNA') {
		rootPath += '/qna'
	}
	*/
	if(confirm("글을 삭제하시겠습니까?")) {
		location.replace(rootPath + "/" + menu + "/delete?content_num=${CONTENT.content_num}")
	}
	
})
/*
comment_delete.addEventListener("click",(e)=>{
	alert("댓글을 삭제합니다")
	location.replace(rootPath+"/comment/delete?comment_num=${COMMENT.comment_num}")
})
*/

document.querySelector(".insert").addEventListener("click",(e)=>{
	location.href = rootPath + "/board/read?content_num=${CONTENT.content_num}"
	alert("댓글이 등록되었습니다")
	if(member_null === ""){
		alert("로그인 해주세요")
		location.href = "${rootPath}"
	}
	let comment_text = document.querySelector("textarea[name='comment_text']").value
	let json = { comment_text }
	let jsonString = JSON.stringify(json)
	
	fetch("${rootPath}/board/read",{
		method:"POST",
		body : jsonString,
		headers : {
			"content-Type" : "application/json"	
		}
		.then(response=>response.text())
		.then(result=>{
			document.writeln(JSON.stringify(result));
		/*
		if(result === "MEMBER_NULL") {
			alert("로그인하세요")
			return false
		} else if(result === "COMMENT_OK"){
			alert("댓글이 등록되었습니다")
			location.href = rootPath + "/read?content_num=${CONTENT.content_num}"
	    */
		} 
	})
	})
	
	
	
})


</script>