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
	<c:forEach items="${COMMENT}" var="COMMENT">
	<section class="comment_box">
		<table id="tb_comment_list">
          <tr>
          	<td width="5%" class="cm_img"><img src="${rootPath}/static/images/user.png" /></td>
            <td width="10%" class="cm_name">${MEMBER.member_nname}</td>
            <td width="70%" class="cm_cm">${COMMENT.comment_text}
            	<span>${CONTENT.content_date}</span>
            </td>
            <td width="7%" class="cm_btn">
              	<button class="update">수정</button>
		    </td>
            <td width="7%" class="cm_btn">
              	<button class="delete">삭제</button>
            </td>
          </tr>
          			
          		</table>
          		</section>
  	</c:forEach>
	<form id="comment_form" method="POST" action="${rootPath }/board/read/comment">
		<section class="comment_box">
			<p>댓글 2</p>
			<hr />
				
			<table id="tb_comment">
				<tr>
					<td width="5%" class="cm_img"><img
						src="${rootPath}/static/images/user.png" /></td>
					<td width="10%" class="cm_name">
					<c:if test="${not empty MEMBER}">
          			${MEMBER.member_nname}
            		</c:if></td>
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
document.querySelector(".insert").addEventListener("click",(e)=>{
	location.href = rootPath + "read"
	form.submit()
})


</script>