<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>라인공인중개사무소 관리자</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">    
    <link rel="stylesheet" type="text/css" href="/resources/css/style.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/font.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/jquery-ui.min.css">
    <link rel="stylesheet" type="text/css" href="/resources/webjars/jquery-ui/1.12.1/jquery-ui.min.css">
    <script src="/resources/webjars/jquery/3.3.1/jquery.js"></script>
    <script src="/resources/webjars/jquery-ui/1.12.1/jquery-ui.min.js"></script>
    <script type="text/javascript" src="/resources/js/style.js"></script>
</head> 
<body>    
    <div id="wrap">
        <div class="login_wrap">
            <div class="login_box">
                <div class="login_tit">라인공인중개사 관리자 로그인</div>
                <dl>
                    <dt class="id">아이디</dt>
                    <dd><input id="user_id" class="input100" type="text" name="username" placeholder="User id" autocomplete="new-id"></dd>
                </dl>
                <dl>
                    <dt class="pw">패스워드</dt>
                    <dd><input id="passwd" class="input100" type="password" name="pass" placeholder="Password" autocomplete="new-password"></dd>
                </dl>
                <button type="button" id="confirm" class="login_btn btn1 btn_blue">로그인</button>
            </div>
        </div>
    </div>
    <script src="/resources/js/login.js"></script>
    
    
</body>
</html>