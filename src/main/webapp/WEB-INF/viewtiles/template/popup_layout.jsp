<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<!-- 모바일 줌 방지-->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!--<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">-->
	
	<title><tiles:getAsString name="title" /></title>
	
	<!-- bootstrap4 style css -->
	<link rel="stylesheet" href="/webjars/bootstrap/4.1.0/css/bootstrap.css">
	<!-- 인덱스 style -->
	<link rel="stylesheet" href="/resources/css/index.css">
	<!-- 폰트 icon -->
	<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
		
	<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->
	<script src="/webjars/jquery/2.1.3/dist/jquery.min.js"></script>
	<!-- Popper JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
	<!-- Latest compiled JavaScript -->
	<script src="/webjars/bootstrap/4.1.0/js/bootstrap.js"></script>
	<!-- datepicker 달력 -->
	<script src="/webjars/jquery-ui/1.12.1/jquery-ui.js"></script>
	<link rel="stylesheet" href="/webjars/jquery-ui/1.12.1/jquery-ui.css">
	<!-- 검증플러그인 (필수) -->
	<script type="text/javascript" src="/resources/js/common/jquery.validate.min.js"></script>
	<!-- 미리 정의된 일부검증 메서드 (선택) -->
	<script type="text/javascript" src="/resources/js/common/additional-methods.min.js"></script>
	<!-- 검증실패시 출력되는 오류에대한 한국어 문구지원(선택) -->
	<script type="text/javascript" src="/resources/js/common/messages_ko.min.js"></script>
	<!-- es5 미지원 브라우저 -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/babel-polyfill/6.23.0/polyfill.min.js"></script>
	<!-- orderBy 옵션 -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.4/lodash.min.js"></script>
	<!-- json import -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.16.2/axios.min.js"></script>
	
	<!-- 디자인 관련 SVG Font Awesome JS -->
	<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
	<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
	
	<!-- 공통 스크립트 -->
	<script src="/resources/js/common/common.js"></script>
	<script src="/webjars/vue/2.5.16/vue.js"></script>
</head>

<body>
	<div class="wrapper">
		
		<div id="content">
			<tiles:insertAttribute name="header" />
			
			<tiles:insertAttribute name="body" />
		</div>
	</div>
	
	<%-- <tiles:insertAttribute name="footer" /> --%>
</body>

</html>
