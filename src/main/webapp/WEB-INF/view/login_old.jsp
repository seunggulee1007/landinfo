<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>라인공인중개사무소</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- <SCRIPT SRC="HTTPS://AJAX.GOOGLEAPIS.COM/AJAX/LIBS/JQUERY/3.3.1/JQUERY.MIN.JS"></SCRIPT> -->
<script src="/webjars/jquery/2.1.3/dist/jquery.min.js"></script>
<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<script src="/resources/js/login.js" type="text/javascript"></script>
<style>
/* CSS used here will be applied after bootstrap.css */
html, body {
	height: 100%;
}

body {
	background: url(/resources/images/main-image1.jpg) no-repeat center
		center fixed;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
	background-color: #c5d0d6;
}
</style>

</head>
<body>
	<div class="container pt-5">
		<div class="row justify-content-sm-center">
			<div class="login-box">

				<div class="card border-info text-center">
					<div class="card-header">계속하려면 로그인 하세요.</div>
					<div class="card-body">
						<form class="form-signin">
							<input type="text" class="form-control mb-2" id="user_id"
								placeholder="ID" required> <input type="password"
								class="form-control mb-2" id="passwd" placeholder="Password"
								required>


							<button class="btn btn-lg btn-primary btn-block mb-1"
								type="button" role="button" id="confirm">Sign in</button>


							<label class="checkbox float-left"> <input
								type="checkbox" id="saveId" name="saveId" value="remember-me">
								Remember me
							</label>
						</form>
						<a href="#" class="float-right">회원가입</a>
					</div>
				</div>

			</div>
		</div>
	</div>
</body>
</html>
