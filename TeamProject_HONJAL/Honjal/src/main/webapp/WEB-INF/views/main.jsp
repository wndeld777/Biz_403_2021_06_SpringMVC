<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />

	<article id="main_top">
      <section id="main_user">
        <c:choose>
			<c:when test="${MEMBER.member_num != NULL }">
				<%@ include file="/WEB-INF/views/include/include_member.jspf"%>
			</c:when>
			<c:otherwise>
				<form id="login_box" method="POST" action="${rootPath}/member/login">
					<div class="msg login error"></div>
					<input name="member_id" placeholder="ID" /> 
					<input name="member_pw" type="password" placeholder="PASSWORD" />
					<button class="btn_login" type="button">LOGIN</button>
					<button class="btn_signup" type="button">SIGN UP</button>
				</form>
			</c:otherwise>
		</c:choose>
      </section>
      <section id="main_slide">
        <div id="slide_img_box">
          <img src="${rootPath}/static/images/sample_slide.jpg">
          <img src="#" class="slide" alt="μ§" />
          <img src="#" class="slide" alt="μ§" />
        </div>
        <button class="btn left">&lang;</button>
        <button class="btn right">&rang;</button>
        <div id="circleBox">
          <div class="circle"></div>
          <div class="circle"></div>
          <div class="circle"></div>
        </div>
      </section>
    </article>


    <article id="main_middle">
      <section id="main_best">
        <h2>π₯ [ μνTIP ] μ΅κ·Ό μΌμ£ΌμΌ μΈκΈ°κΈ</h2>
        <div>
          <img src="${rootPath}/static/images/sample_best.png"/>
          <ol>
            <li class="list_best">
              <span>1μ </span>1μκ°λ§μ λ! λ²½κ±Έμ΄ μμ΄μ»¨ λΆν΄μλ μνμ²­μ λΈνμ°
            </li>
            <li class="list_best">
              <span>2μ </span>λνΈ μΈνλ²: μ΄μ  λλΌμ΄ λ§‘κΈ°μ§ λ§κ³  μ§μμ μμ½κ²!
            </li>
            <li class="list_best">
              <span>3μ </span>μ·μ λ€ μ΄λμ μλκ³ μ? μμ μλ£Έ μ μ· μλ©λ²!
            </li>
            <li class="list_best">
              <span>4μ </span>μ²μ°μΈμ  3μ’μ μ°¨μ΄μ κ³Ό νμ©λ², μ λ¦¬ν΄λ΄€μ΄μ
            </li>
            <li class="list_best">
              <span>5μ </span>κ³΅κ°μ λ°λ₯Έ ν¨μ¨μ μΈ μλ©Tipμ μμλ³΄μμ
            </li>
          </ol>
        </div>
      </section>
      <section id="main_info">
        <h2>&#128270; μ λ³΄κ²μν</h2>
        <div>
          <img src="${rootPath}/static/images/sample_data.png"/>
          <ul>
            <li class="list_data">μ κ΅­ μν μ°λ κΈ° λ°°μΆ μ λ³΄</li>
            <li class="list_data">μ κ΅­ μ κΈ° μ°¨ μΆ©μ μ μ λ³΄</li>
            <li class="list_data">μ κ΅­ κ³΅μ€ νμ₯μ€ μ λ³΄</li>
            <li class="list_data">μ κ΅­ μ¬μ± μμ¬ νλ°°ν¨ μ λ³΄</li>
            <li class="list_data">μ κ΅­ μμ κ±° λ³΄κ΄μ μ λ³΄</li>
          </ul>
        </div>
      </section>
    </article>
    
    
    <article id="main_bottom">
      <h2>&#128221; μ΅μ κΈ</h2>
      <table class="board">
		<tr>
			<th width="10%">No.</th>
			<th width="10%" class="content_head">κ²μν</th>
			<th width="40%">κΈμ λͺ©</th>
			<th width="15%">μμ±μ</th>
			<th width="10%">μμ±μΌ</th>
			<th width="5%">μ‘°ν</th>
			<th width="5%">μΆμ²</th>
		</tr>
		<c:forEach items="${CONTENTS}" var="CONTENT">
			<tr data-cnum="${CONTENT.content_num}" data-board="${CONTENT.board_code}">
				<td class="content_num">${CONTENT.content_num}</td>
				<td class="board_code">${CONTENT.board_code}</td>
				<td class="content_title">${CONTENT.content_title}</td>
				<td class="member_nname">${CONTENT.member_nname}</td>
				<td class="content_date">${CONTENT.content_date}</td>
				<td class="content_view">${CONTENT.content_view}</td>
				<td class="content_good">${CONTENT.content_good}</td>
			</tr>
		</c:forEach>
	</table>
    </article>
    
<script>

let btn_login = document.querySelector("button.btn_login")
let btn_join = document.querySelector("button.btn_signup")
let input_memberid = document.querySelector("input[name='member_id']")
let input_password = document.querySelector("input[name='member_pw']")
if(btn_join){
	btn_join.addEventListener("click",(e)=>{
		   let text = e.target.textContent
		   let url = `${rootPath}`
		   if(text === "SIGN UP"){
		      url += "/member/join";
		   }
		   location.href = url
		})
}
if(btn_login){
	btn_login.addEventListener("click",(e)=>{
		let member_id = input_memberid.value
		let member_pw = input_password.value
		let text = e.target.textContent
		let url = `${rootPath}`
		
		if(member_id == ""){
			alert("IDλ₯Ό μλ ₯νμΈμ")
			input_memberid.focus()
			return false
		}else if(member_pw == ""){
			alert("λΉλ°λ²νΈλ₯Ό μλ ₯νμΈμ")
			input_password.focus()
			return false
		}
		
		document.querySelector("form").submit()	
	})
}
let login_fail = "${LOGIN_FAIL}"
	if(login_fail === "NOT_MEMBER_ID"){
		alert("μ¬μ©μ IDκ° νλ Έμ΅λλ€")
	}else if(login_fail === "NOT_PASS"){
		alert("μ¬μ©μ λΉλ°λ²νΈκ° νλ Έμ΅λλ€")
	}
	
let table = document.querySelector(".board")
if(table) {
	table.addEventListener("click",(e)=>{
		let target = e.target
		if(target.tagName === "TD") {
			let tr = target.closest("TR")
			let cNum = tr.dataset.cnum
			/*
			let board = tr.dataset.board
			
			let controller = ""
			if(board === "REV-1") {
				controller = "review";
			}
			location.href = "${rootPath}/" + controller + "/read?content_num=" + cNum;
			*/
			location.href = "${rootPath}/board/read?content_num=" + cNum;
		}
	})
}

</script>