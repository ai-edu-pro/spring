<%@ page contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="i18n/header" />
<!DOCTYPE html>
<html>
<jsp:include page="/WEB-INF/views/include/staticFiles.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
	var btn = $("input[value=Search]");
	btn.click(function(event) {
		$.ajax({
			type: "GET",
			url: "ajax/hr/" + $("input[name=empid]").val(),
			success: function(result, status) {
				$(".empname").text(result);
			}
		})
	});
	
	$("input[name=empid]").keyup(function(event) {
		$.ajax({
			type: "GET",
			url: "ajax/hr/" + $("input[name=empid]").val(),
			success: function(result, status) {
				$(".empname").text(result);
			}
		})
	});
});
</script>
<body>
<jsp:include page="/WEB-INF/views/include/bodyHeader.jsp"/>
<div class="container">
	<div class="pg-opt">
        <div class="row">
            <div class="col-md-6 pc">
                <h2><fmt:message key="HOME"/></h2>
            </div>
            <div class="col-md-6">
                <ol class="breadcrumb">
                    <li><fmt:message key="DASHBOARD"/></li>
                    <li class="active"><fmt:message key="HOME"/></li>
                </ol>
            </div>
        </div>
    </div>

	<div class="content">
	<div class="alert alert-warning" class="page-header">
		<h3><fmt:message key="WELCOME_MESSAGE"/></h3>
	</div>
			<div class="row">
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
					<h3>비동기 요청 테스트</h3>
					<p>사원의 이름을 조회하려면 사원번호를 입력하세요.</p>
					<p>사원번호 <input type="text" name="empid"> 
						     <input type="button" value="Search"></p>
					<p>조회한 사원의 이름 : <span class="empname"></span></p>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">Curabitur
					sed bibendum neque, at congue ipsum. Lorem ipsum dolor sit amet,
					consectetur adipiscing elit. Vivamus mattis a mauris a volutpat. In
					ullamcorper ex dui, quis suscipit turpis consectetur id. Sed id
					purus ultrices, maximus augue non, bibendum ex. Duis interdum ante
					vitae rutrum placerat. Mauris sollicitudin tristique elit ut
					eleifend. Praesent sed aliquam ante, non pharetra leo. Duis tempus
					mi quis eleifend rutrum. Quisque tincidunt auctor iaculis.</div>
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">Integer
					commodo euismod accumsan. Mauris bibendum ante at leo aliquet, eu
					dictum orci porttitor. Mauris cursus cursus pellentesque. Maecenas
					a mauris feugiat, lobortis purus at, pellentesque quam. Sed aliquam
					tellus ac purus pharetra, in blandit orci malesuada. Suspendisse
					velit diam, bibendum ac odio sed, blandit vehicula tellus. Aenean
					et euismod ipsum.</div>
			</div>
			<div class="progress">
		<div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%;">
		<span class="sr-only"></span>
		</div>
	</div>
	<div class="progress">
		<div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%;">
		<span class="sr-only"></span>
		</div>
	</div>
	<div class="alert alert-info">
		<ol>
			<li>Donec vitae suscipit leo. Mauris arcu felis, eleifend id porta.
		</ol>
	</div>
	</div>
</div>
<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
</body>
</html>
