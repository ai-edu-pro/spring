<%@ page contentType="text/html; charset=utf-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="i18n/board" />
<html>
<jsp:include page="/WEB-INF/views/include/staticFiles.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
$(function() { // $() : jquery() 		$(function() { }) 페이지가 로드되면 실행
	var btn = $("input[type=button]");	// $("CSS 선택자") 해당 DOM엘리먼트를 찾아 반환
	var input = $("input[name=username]");
	var output = $(".name");
//	btn.click(function(event) { 		// jquery객체.click() click이벤트가 발생하면...
	btn.bind("click", function(event) {
		var data = input.val();			// input 태그에 의한 입력양식에 입력된 값을 조회/설정
		$.ajax({		// 비동기 요청을 하기 위한 JQuery 함수, $.get(), $.post()
			type: "GET", // GET 방식으로 요청
			data: {			// 서버에 전송할 파라미터를 설정
				"name": data // input.val()
			},
			url: "ajax/hello", // 요청할 주소
			success: function(result, status, xhr) {  // 서버에서 응답을 받으면 실행
				output.text(result); // innerText와 같은의미, 태그의 값을 조회/지정
			}
		})
		//output.text(data);
	})
});
/*
window.onload = function() {
	var btn = document.querySelector("input[type=button]");
	var input = document.querySelector("input[name=username]");
	var output = document.querySelector(".name");
	btn.onclick = function(event) {
		var data = input.value;
		console.log(data);
		output.innerText = data;
	}
}
*/
</script>
<body>
<jsp:include page="/WEB-INF/views/include/bodyHeader.jsp"/>
<div class="container">
	<div class="pg-opt">
        <div class="row">
            <div class="col-md-6 pc">
                <h2>안녕하세요.</h2>
            </div>
            <div class="col-md-6">
                <ol class="breadcrumb">
                    <li>예제</li>
                    <li class="active">Hello</li>
                </ol>
            </div>
        </div>
    </div>

	<div class="content">
		<h1>${result}</h1>
		<form action="hello" method="post">
		이름 : <input type="text" name="name"><br> 
		<input type="submit" value="입력"> <input type="reset" value="취소">
		</form>
		당신의 이름은 ${result}입니다.
		<hr>
		이름 : <input type="text" name="username"> <input type="button" value="입력"><br>
		홍길동당신의 이름은 <span class="name">___</span>입니다.
	</div>
	<script>
	/* 
	var btn = document.querySelector("input[type=button]");
	// console.log(btn);
	var input = document.querySelector("input[name=username]");
	var output = document.querySelector(".name");
	// console.log(input);
	btn.onclick = function(event) {
		// console.log(event);
		var data = input.value;
		console.log(data);
		output.innerText = data; // innerHTML은 태그를 포함한 내용을 가질 때
	}
	var name = "홍길동";
	console.log("자바스크립트 코드 실행");
	console.log(name);
	for(i=0; i<10; i++) {
		console.log(i);
	}
	function add(a, b) {
		console.log("두 수의 합은 " + (a+b));
		document.write("두 수의 합은 " + (a+b));
	}
	var mul = function(a, b) {
		console.log("두 수의 곱은 " + (a*b));
		document.write("두 수의 곱은 " + (a*b));
	}
	add(10, 20);
	mul(3, 5);
	*/
	</script>
</div>
<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
</body>
</html>