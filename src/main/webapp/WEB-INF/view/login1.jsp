<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="kr">
<head>
    <title>라인공인중개사무소</title>
    <meta charset="UTF-8">
    
<!--========================================== 모바일 ==================================================-->    
    <meta name="viewport" content="width=device-width, initial-scale=1">
<!--==========================================상단아이콘================================================-->    
    <link rel="icon" type="image/png" href="/resources/images/icons/favicon.ico"/>
<!--===========================================bootstrap4================================================-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<!--=========================================경고 아이콘================================================-->
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<!--===========================================폼 아이콘================================================-->
    <link rel="stylesheet" href="https://cdn.linearicons.com/free/1.0.0/icon-font.min.css">
<!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/resources/css/util.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/login.css">
<!--===============================================================================================-->
</head>
<body>
    
    <div class="limiter">
        <div class="container-login100" style="background-image: url('/resources/images/bg-01.jpg');">
            <div class="wrap-login100 p-t-30 p-b-50">
                <span class="login100-form-title p-b-41">Login</span>
                <form class="login100-form validate-form p-b-33 p-t-5">

                    <div class="wrap-input100 validate-input" data-validate = "아이디를 입력해주세요.">
                        <input id="user_id" class="input100" type="text" name="username" placeholder="User id" autocomplete="new-id">
                        <span class="focus-input100" data-placeholder="&#xe82a;"></span>
                    </div>

                    <div class="wrap-input100 validate-input" data-validate="비밀번호를 입력해주세요.">
                        <input id="passwd" class="input100" type="password" name="pass" placeholder="Password" autocomplete="new-password">
                        <span class="focus-input100" data-placeholder="&#xe80f;"></span>
                    </div>
                    
                    <div class="wrap-checkbox100">
                    	<label class="checkbox100 checkbox">
	                        <input type="checkbox" id="saveId" class="" name="saveId" value="remember-me">
	                        Remember me
	                    </label>
                    </div>

                    <div class="container-login100-form-btn">
                        <button id="confirm" class="login100-form-btn" type="button">Login</button>
                    </div>
                    
                </form>
            </div>
        </div>
    </div>
    
<!--===============================================================================================-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!--===============================================================================================-->
    <script src="/resources/js/login.js"></script>

</body>
</html>